# %% [markdown]
# # Defocusing Estimated with the ODF
#
# Tilting a specimen in a texture goniometer costs intensity. The irradiated spot stretches
# over the surface, part of it leaves the sample or the field of view of the detector, and
# in a Bragg-Brentano setup the diffraction line broadens out of the receiving slit. The
# loss grows with the tilt and depends on the Bragg angle. Measured pole figures that are
# not corrected for it look like a texture that weakens towards the rim.
#
# The classical correction divides the measurement by a defocusing curve from a random
# sample. This page shows a different route: the defocusing is a factor in the model of
# the measurement, $I_i(r) \approx \alpha_i\, d_i(r)\, (\mathcal{R}f)(h_i, r)$, and a curve of
# a few parameters is estimated together with the ODF. It assumes the reconstruction of
# [ODF Estimation](https://mtex-toolbox.github.io/PoleFigure2ODF_py.html) and the corrections of
# [Data Correction](https://mtex-toolbox.github.io/PoleFigureCorrection_py.html).

# %%
import os
import matplotlib.pyplot as plt
import numpy as np
from mtex import *

# the measurements are not yet in the data repository; they are read from this folder
pname = os.path.expanduser('~/Downloads/PF_Cu/')

# %% [markdown]
# ## The measurement
#
# Three pole figures of a copper sheet, {111}, {200} and {220}, were measured on a
# PANalytical X'Pert with Cu radiation in parallel beam geometry: crossed slits on the
# primary side and a parallel plate collimator of 0.27° in front of the detector. The tilt
# runs from 0° to 90° in steps of 3°, the azimuth in steps of 3°. Each pole figure has a
# second scan 3° below its Bragg angle, the intensity off the peak.

# %%
cs = crystalFrame('m-3m', mineral='Copper')
h = [Miller(1, 1, 1, cs), Miller(2, 0, 0, cs), Miller(2, 2, 0, cs)]
names = ['111', '200', '220']
peak = loadPoleFigure([pname + f'PF_Cu_{s}_3deg.xrdml' for s in names], h, cs)
offPeak = loadPoleFigure([pname + f'PF_Cu_{s}_3deg_BG.xrdml' for s in names], h, cs)

# the Bragg angles of the peaks and of the scans off them
theta = np.array([43.36, 50.50, 74.20]) / 2 * degree
thetaOff = theta - 1.5 * degree

plot(peak)
mtexColorbar()

# %% [markdown]
# The raw counts show a cube texture: the {200} maximum at the centre and the four {111}
# and {220} maxima of the cube orientation. All three pole figures fade towards the rim,
# the {111} and {200} more than the {220}.

# %% [markdown]
# ## What the scans off the peak are
#
# The scan off the peak is two things at once. It is the background under the peak, which
# the peak scan counts as well and which is subtracted. And it comes from the irradiated
# sample, so it loses intensity with the tilt as the diffracted signal does: its decay is a
# measurement of the defocusing curve. The mean of every ring shows it.

# %%
def ringMeans(pf, k):
  t = np.round(pf.allR[k].theta.ravel() / degree)
  I = pf.allI[k].ravel()
  chi = np.unique(t)
  return chi, np.array([I[t == c].mean() for c in chi])

fig, ax = plt.subplots(figsize=(6, 3.5))
for k in range(3):
  chi, m = ringMeans(offPeak, k)
  ax.plot(chi, m / m[0], label=f'off peak {names[k]}')
ax.set_xlabel('tilt χ in degrees')
ax.set_ylabel('ring mean / value at χ = 0')
ax.legend()

# %% [markdown]
# The three curves stay near one up to about 40°, fall to about a half at 75° and to zero
# at 90°. The {220} curve, the one at the largest Bragg angle, falls last. This is the loss
# of a parallel beam instrument: the beam footprint stretches by $1/(\sin\theta\cos\chi)$
# and spills over the edge of the sample.
#
# The scan at 90° holds almost nothing, and the rings above 84° carry little information;
# the analysis keeps $\chi \le 84°$. Subtracting the background gives the net intensities.

# %%
keep = peak.r.theta <= 84 * degree
pf = correct(peak[keep], background=offPeak[keep])
off = offPeak[keep]

plot(pf)
mtexColorbar()

# %% [markdown]
# ## A factor in the model, not a division of the data
#
# Dividing the net intensities by a curve $d(\chi)$ multiplies their counting noise by
# $1/d$: at $\chi = 84°$, where $d \approx 0.07$, by a factor of fourteen. The least squares
# fit of the ODF then weights these points as much as the well measured ones. Keeping the
# curve in the model instead, as the intensity $\alpha_i\, d_i(r)\, (\mathcal{R}f)(h_i, r)$
# predicts, leaves the data as measured.
#
# [calcODF](https://mtex-toolbox.github.io/PoleFigure.calcODF.html) takes such a factor with `factor=`: one array per pole
# figure, a pole figure of factors, or a `defocusingModel` whose parameters it estimates.
# A model is a function $d(p; r, \theta)$ of a few parameters $p$; its scale is the
# normalisation $\alpha_i$ of each pole figure, so it only has to fix the shape. The
# shape used here is
#
# $$d(\chi, \theta) = 1 - \exp\!\left(-\left(\frac{\cos\chi\,\sqrt{\sin\theta}}{a}\right)^{b}\right),$$
#
# a curve near one at small tilts that falls to zero at 90°, earlier for smaller Bragg
# angles. It describes the three curves above to about two percent.
#
# The fits below weight each point by its counting noise (`intensityWeights=True`) and run
# 30 iterations. Their misfit is measured in units of the counting noise: $\chi^2/N$ is the
# mean squared residual divided by the variance of the counts, one for a model that leaves
# nothing but noise.

# %%
# the variance of a net intensity: the counts of the peak and of the background scan
variance = [np.maximum(I.ravel() + B.ravel(), 1) for I, B in zip(peak[keep].allI, off.allI)]

def misfit(pf, odf, factor):
  # the residual of alpha_i d_i(r) (R f)(h_i, r), alpha_i in closed form, in units of the noise
  d = factor.eval(pf) if isinstance(factor, defocusingModel) else factor
  res = []
  for k in range(pf.numPF):
    P = np.real(calcPoleFigure(odf, pf.allH[k], pf.allR[k]).allI[0]).ravel()
    m = P if d is None else d[k] * P
    y, w = pf.allI[k].ravel(), 1 / variance[k]
    alpha = (y * w) @ m / ((m * w) @ m)
    res.append((y - alpha * m) * np.sqrt(w))
  return res

def chi2(res):
  return np.mean([np.mean(r ** 2) for r in res])

fit = dict(halfwidth=5 * degree, resolution=5 * degree, intensityWeights=True, minIter=30, maxIter=30)
odfNone = calcODF(pf, **fit)
print(f'no correction: chi2/N = {chi2(misfit(pf, odfNone, None)):.0f}')

# %% [markdown]
# Without a correction the misfit is several hundred times the counting noise.

# %% [markdown]
# ## Three ways to the curve
#
# **(a) From the scans off the peak alone.** A model holds measurements of the factor as its
# data, each pole figure at its own Bragg angle; `fit()` fits the shape to them, each scan
# with its own scale. The curve is then fixed in the reconstruction.

# %%
modelA = defocusingModel.weibull(theta, data=off, dataTheta=thetaOff).fit()
odfA = calcODF(pf, factor=modelA.eval(pf), **fit)
print(f'(a) a = {np.exp(modelA.p[0]):.3f}, b = {np.exp(modelA.p[1]):.3f}, chi2/N = {chi2(misfit(pf, odfA, modelA)):.1f}')

# %% [markdown]
# **(b) Together with the ODF from the peaks.** With a model as `factor`, `calcODF`
# alternates its iteration with a least squares step in the parameters at the current ODF,
# until they settle, and leaves the fitted parameters in the model.

# %%
modelB = defocusingModel.weibull(theta)
odfB = calcODF(pf, factor=modelB, **fit)
print(f'(b) a = {np.exp(modelB.p[0]):.3f}, b = {np.exp(modelB.p[1]):.3f}, chi2/N = {chi2(misfit(pf, odfB, modelB)):.1f}')

# %% [markdown]
# **(c) From both.** A model with data enters the parameter step with the peaks and its
# data together, a point of the data weighing as a measured one.

# %%
modelC = defocusingModel.weibull(theta, data=off, dataTheta=thetaOff)
odfC = calcODF(pf, factor=modelC, **fit)
print(f'(c) a = {np.exp(modelC.p[0]):.3f}, b = {np.exp(modelC.p[1]):.3f}, chi2/N = {chi2(misfit(pf, odfC, modelC)):.1f}')

# %% [markdown]
# The curve from the background alone lowers the misfit by almost an order of magnitude,
# from 422 to 56. Fitted with the ODF it drops by a further 40 percent, to 34 and 33. The
# joint curve is steeper than the background's:

# %%
chi = np.arange(0, 85, 1.0)
r = vector3d.byPolar(chi * degree, np.zeros(chi.size))
one = PoleFigure([h[0]], [r], [np.ones(chi.size)])

fig, ax = plt.subplots(figsize=(6, 3.5))
c0, m0 = ringMeans(off, 0)
ax.plot(c0, m0 / m0[0], 'k.', label='off peak 111, measured')
for label, model in (('(a) background', modelA), ('(b) joint', modelB), ('(c) both', modelC)):
  d = defocusingModel(model.f, model.p, theta[:1]).eval(one)[0]
  ax.plot(chi, d / d[0], label=label)
ax.set_xlabel('tilt χ in degrees')
ax.set_ylabel('defocusing of {111}')
ax.legend()

# %% [markdown]
# The diffracted intensity falls off faster than the intensity off the peak. In the joint
# fit (c) the shared curve follows the peaks and leaves a misfit of a few noise units on the
# background. The two signals do not reach the detector the same way: part of the
# background is scattered in every direction and is cut differently by the collimator, and
# some of it is the tail of the textured peak itself. The background is a good first guess
# of the curve, not its measurement.

# %% [markdown]
# ## Is the curve determined by the data?
#
# A curve of $\chi$ alone could in principle be traded against the ODF: an axially
# symmetric texture changes the pole figures with $\chi$ alone as well. What prevents it is
# that one curve has to serve several pole figures of the same ODF. The test is a
# simulation: counts are drawn from the reconstructed ODF times a known curve, and the
# fit starts from wrong parameters.

# %%
rng = np.random.default_rng(1)
modelTrue = defocusingModel.weibull(theta, a=np.exp(modelB.p[0]), b=np.exp(modelB.p[1]))

def simulate(d):
  I = []
  for k in range(pf.numPF):
    P = np.real(calcPoleFigure(odfB, pf.allH[k], pf.allR[k]).allI[0]).ravel()
    lam = d[k] * P * np.mean(pf.allI[k]) / np.mean(d[k] * P)
    I.append(rng.poisson(lam).astype(float))
  return PoleFigure(pf.allH, pf.allR, I)

for label, d in (('the fitted curve', modelTrue.eval(pf)), ('no loss', [np.ones(r.size) for r in pf.allR])):
  start = defocusingModel.weibull(theta, a=0.6, b=1.0)
  calcODF(simulate(d), factor=start, **fit)
  dd = defocusingModel(start.f, start.p, theta[:1]).eval(one)[0]
  print(f'simulated with {label:16s}: fitted d(111) at 30°, 60°, 80° = {np.round((dd / dd[0])[[30, 60, 80]], 2)}')
print('the fitted curve itself:', np.round((lambda d: d / d[0])(defocusingModel(modelTrue.f, modelTrue.p, theta[:1]).eval(one)[0])[[30, 60, 80]], 2))

# %% [markdown]
# The known curve comes back from the wrong start, and data without any loss give a flat
# curve: the joint fit neither misses the defocusing nor invents one. The same test passes
# on the two titanium data sets below.
#
# What this does not allow is a free curve for each pole figure. A spline with seven knots
# per pole figure lowers the misfit further but bends the {220} curve above one, absorbing
# misfit of the ODF; the curve has to be the same function of $\chi$ and $\theta$ for all
# pole figures, with the dependence on $\theta$ fixed by the model.

# %% [markdown]
# ## Resolution, and what is left
#
# The cube texture of the sheet is sharper than a kernel of 5° resolves. At 3° the misfit
# drops by almost a half; the defocusing parameters stay where they were.

# %%
fit3 = dict(fit, halfwidth=3 * degree, resolution=3 * degree)
model3 = defocusingModel.weibull(theta, data=off, dataTheta=thetaOff)
odf3 = calcODF(pf, factor=model3, **fit3)
res3 = misfit(pf, odf3, model3)
print(f'3 degrees: a = {np.exp(model3.p[0]):.3f}, b = {np.exp(model3.p[1]):.3f}, chi2/N = {chi2(res3):.1f}',
      '(' + ', '.join(f'{names[k]} {np.mean(res3[k] ** 2):.1f}' for k in range(3)) + ')')

plot(PoleFigure(pf.allH, pf.allR, res3), colorRange=[-15, 15], colormap='blue2red')
mtexColorbar(title='residual / σ')

# %% [markdown]
# The residuals in units of the counting noise are within a few units over most of the
# pole figures. What is left sits at the sharp cube poles and, for {111}, in a ring near
# the rim with a twofold pattern in the azimuth. A misalignment of the goniometer, a zero
# offset of $\chi$ or of $\omega$, would show up at the poles as well. Fitted as two more
# parameters, by moving the operator to the shifted directions, both come out below 0.1° at
# 3° and change the misfit by less than one percent; the shift of half a degree a 5° fit
# finds is the coarse kernel, not the goniometer.
#
# The ODF itself is what the correction is for:

# %%
ori = {'cube': orientation.byEuler(0, 0, 0, cs),
       'copper': orientation.byEuler(90 * degree, 35 * degree, 45 * degree, cs),
       'brass': orientation.byEuler(35 * degree, 45 * degree, 0, cs),
       'S': orientation.byEuler(59 * degree, 37 * degree, 63 * degree, cs)}
print('             texture index ' + ' '.join(f'{k:>7s}' for k in ori))
for label, odf in (('none', odfNone), ('(a) 5°', odfA), ('(b) 5°', odfB), ('(c) 5°', odfC), ('(c) 3°', odf3)):
  print(f'{label:12s} {float(np.real(textureIndex(odf))):14.2f} ' + ' '.join(f'{float(np.real(odf(o))):7.2f}' for o in ori.values()))

# %% [markdown]
# Without the correction the copper component comes out twice and the brass component three
# to four times as strong as with it, and the texture index is too high: the intensity
# missing at the rim is read as texture. The three corrections agree with each other far
# better than with no correction, within a few tenths on the weak components. The cube
# maximum rises from 45 to 63 at 3°: a 5° kernel does not resolve it.

# %%
plotPF(odf3, h, contourf=True)
mtexColorbar()

# %% [markdown]
# ## A model of one's own: the footprint on a rectangular sample
#
# Off the peak the rings are not quite flat in the azimuth: above 60° tilt they carry a
# twofold and a fourfold modulation of 5 to 15 percent, at the same azimuth in all three
# scans. A rectangular sample does that: the stretched footprint spills over its corners
# when the long axis of the footprint points at them. Any function of the specimen
# directions can be a model, the azimuth included. Here a Gaussian beam of widths
# $\sigma_{eq}, \sigma_{ax}$ (relative to the half side of the sample) meets a rectangle of
# aspect $q$ turned by $\varphi_0$; the factor is the part of the footprint on the sample.

# %%
xg, wg = np.polynomial.legendre.leggauss(48)

def footprint(p, r, t):
  # p = log sigma_eq, log sigma_ax, log q, phi0
  seq, sax, q, phi0 = np.exp(p[0]), np.exp(p[1]), np.exp(p[2]), p[3]
  cx, sx = np.cos(r.theta).ravel(), np.sin(r.theta).ravel()
  st, ct = np.sin(t), np.cos(t)
  # the footprint on the surface: the beam cross section mapped by the tilted surface
  # (s1 along the tilt axis, s2 across it), its covariance C
  eqx, eq2 = st / seq, (ct * sx) / seq       # the equatorial beam coordinate of s1, s2
  ax2 = cx / sax                             # the axial beam coordinate of s2
  Q11, Q12, Q22 = eqx ** 2 + 0 * cx, eqx * eq2, eq2 ** 2 + ax2 ** 2
  det = Q11 * Q22 - Q12 ** 2
  C11, C12, C22 = Q22 / det, -Q12 / det, Q11 / det
  # turned with the sample
  a = r.rho.ravel() + phi0
  c, s = np.cos(a), np.sin(a)
  Sxx = c * c * C11 - 2 * c * s * C12 + s * s * C22
  Sxy = c * s * (C11 - C22) + (c * c - s * s) * C12
  Syy = s * s * C11 + 2 * c * s * C12 + c * c * C22
  # the mass of N(0, S) inside |x| < 1, |y| < q, by Gauss-Legendre over x
  from scipy.special import ndtr
  x = xg[:, None]
  mu, sd = Sxy / Sxx * x, np.sqrt(np.maximum(Syy - Sxy ** 2 / Sxx, 1e-300))
  px = np.exp(-x ** 2 / (2 * Sxx)) / np.sqrt(2 * np.pi * Sxx)
  return np.sum(wg[:, None] * px * (ndtr((q - mu) / sd) - ndtr((-q - mu) / sd)), 0)

foot = defocusingModel(footprint, [np.log(0.3), np.log(0.25), np.log(1.1), 1.6], theta, data=off, dataTheta=thetaOff).fit()
print('beam widths', np.round(np.exp(foot.p[:2]), 3), 'aspect', np.round(np.exp(foot.p[2]), 3),
      'turned by', np.round(np.degrees(foot.p[3]) % 180, 1), '°')

for label, model in (('weibull', defocusingModel.weibull(theta, data=off, dataTheta=thetaOff).fit()), ('footprint', foot)):
  r = model.residual(intensityWeights=False)
  n = off.allI[0].size
  print(f'{label:10s} fits the scans off the peak to chi2/N = {np.mean((r * n) ** 2 / np.maximum(np.concatenate([I.ravel() for I in off.allI]), 1)):.2f}')

# %% [markdown]
# The footprint describes the background almost to its counting noise, the curve of $\chi$
# alone does not. On the peaks the two are equal: estimated with the ODF from the peaks at
# 3°, the footprint leaves $\chi^2/N$ at 19.8, the curve of $\chi$ alone 18.9. The twofold
# pattern of the {111} residual is not the sample's shape.

# %% [markdown]
# ## Two more data sets
#
# The same analysis on two titanium data sets found on the same computer:
#
# - **α-titanium, Co radiation, parallel plate collimator**, the reflections 0002, 10-10,
#   10-11 and 11-20 to $\chi = 70°$, with one background value per ring 2° to 4° beside the
#   peak. The texture is weak (texture index 1.05). The misfit drops from 77 without a
#   correction to 7.7 with the curve of the background (a) and to 4.9 with the joint curve
#   (b) or (c); the background takes little part in (c), 60 values against 4320.
# - **α-titanium, Cu radiation, receiving slit**, 0002, 10-10, 10-11 and 10-12 to 85°, with
#   a powder measured on the same reflections. Here the loss is the Bragg-Brentano
#   broadening of the line out of the slit, and the model of
#   [SchulzDefocusingKernel](https://mtex-toolbox.github.io/SchulzDefocusingKernel.SchulzDefocusingKernel.html), a line
#   broadened by $k\cos\theta\tan\chi$ and blurred, fits a little better than the curve
#   above. The misfit drops from 41 to 4.1, and the texture index from 4.0 to 2.1: the
#   falling intensity had been read as texture. The powder is not random: its rings rise
#   with $\chi$ by up to a factor of 2.6 at even counting noise in the azimuth, a weak
#   fibre texture. Divided out or as a fixed factor it lowers the misfit only to 27.
#
# On both the simulation test above recovers a known curve and gives a flat one for data
# without loss.

# %% [markdown]
# ## Summary
#
# - The scans off the peak are subtracted as background and give a first estimate of the
#   defocusing curve.
# - The curve belongs in the model, `calcODF(pf, factor=...)`; dividing it out amplifies the
#   counting noise where it is small.
# - A curve of two parameters, the same function of $\chi$ and $\theta$ for all pole
#   figures, is determined by the pole figures themselves, `factor=defocusingModel(...)`;
#   with the background as the model's data the estimate uses both.
# - A random sample measured for the correction is only as good as its randomness.
# - Resolve the texture before reading the remaining misfit: here the step from 5° to 3°
#   mattered more than the shape of the curve or the alignment.
