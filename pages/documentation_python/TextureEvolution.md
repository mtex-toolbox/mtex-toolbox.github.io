---
title: 'Texture Evolution'
sidebar: documentation_sidebar
permalink: TextureEvolution_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: TextureEvolution.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/TextureEvolution.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Plasticity/TextureEvolution.py">edit page</a></font>

<!--introduction-->

Plastic deformation changes both the shape and the crystallographic texture of a
polycrystal. Under the [Taylor model](TaylorModel_py.html), each crystal accommodates the
same imposed strain by slip and rotates as it does so. Repeating that rotation for
small strain increments produces a simple simulation of texture evolution.

[Import from VPSC](VPSCImport_py.html) showed how to read a deformation history computed
outside MTEX. Here the history is computed inside MTEX. The
[Single Slip Model](SingleSlipModel_py.html) instead solves the ODF continuity equation for
independently slipping crystals.

```python
import numpy as np
```

```python
from mtex import *
```

## Define the deformation model

We use the {111}<110> slip systems of a face-centred cubic crystal.
[Slip Systems](SlipSystems_py.html) explains the plane, direction, and symmetrization
represented by this list.

```python
cs = crystalFrame('432')
sS = symmetrise(slipSystem.fcc(cs))
```

Plane strain is a simple model for rolling. The strain extends the first specimen axis,
leaves the second unchanged, and shortens the third by the same amount. The parameter
$$q$$ can distribute the shortening between the second and third axes; here $$q=0$$ gives
plane strain.

```python
q = 0
epsTotal = 0.6 * strainTensor(np.diag([1, -q, -(1 - q)]))
```

## Rotate one crystal

A [spin tensor](RotationSpinTensor_py.html) describes an infinitesimal rotation. For one
oriented crystal, `calcTaylor` returns the Taylor factor `M`, the slip amounts, and the
crystallographic spin `W` required by the imposed strain increment. Slip systems live
in the crystal frame. The inverse orientation therefore expresses the specimen strain
in that frame before the Taylor solve.

```python
oriSingle = orientation.byEuler(0, 30 * degree, 15 * degree, cs)
epsStep = 0.01 * strainTensor(np.diag([1, -q, -(1 - q)]))

M, _, W = calcTaylor(inv(oriSingle) * epsStep, sS)
print(M)
W
```

```text
2.315269640516254
spinTensor (1)
  rank: 2 (3 × 3)
  *10^-3
       0  -4.5689  -7.3707
  4.5689        0   3.3174
  7.3707  -3.3174        0
```

Applying the negative crystallographic spin updates the orientation. The angle below
measures the resulting orientation change.

```python
oriNew = oriSingle.exp(-W)
rotationAngle = angle(oriSingle, oriNew) / degree
rotationAngle
```

```text
0.5320
```

One percent strain gives a Taylor factor of 2.3153 and rotates this crystal by 0.4975
degrees. Spin depends on orientation, so crystals in a polycrystal follow different
paths and this example develops texture.

## Compute an orientation-dependent spin field

Solving the Taylor problem separately at every sampled orientation would be slow. When
the strain remains in the specimen frame, `calcTaylor` returns the Taylor factor and
spin as [orientation-dependent functions](SO3FunConcept_py.html). The expensive field can
then be evaluated cheaply at an entire list of orientations.

Divide the total strain into 60 increments and compute the corresponding spin field
once. The Taylor solution is positively homogeneous in strain, so the same incremental
field is used at every step.

```python
numIter = 60
_, _, spin = calcTaylor(epsTotal / numIter, sS)
spin
```

```text
SO3VectorFieldHarmonic (432 → y↓→x)
  tangent space: left
  bandwidth    : 32
```

This calculation takes most of the page's run time. Its cost depends on the bandwidth
of the harmonic representation rather than on the later number of sampled
orientations. Passing `bandwidth=16` is noticeably faster, at the price of a relative
spin-field error of a few percent.

## Start from a uniform texture

The 20,000 random orientations approximate a uniform texture, whose texture index
$$\lVert f\rVert^2$$ is close to 1.

```python
ori = orientation.rand(20000, cs)
odf0 = calcDensity(ori, halfwidth=10 * degree)
initialTextureIndex = norm(odf0) ** 2
initialTextureIndex
```

```text
1.0009
```

## Step through the strain history

At every increment, evaluate the spin at the current orientations and move them by that
rotation. The spin field returns tangent vectors at the orientations, which fixes the
order and sign in `exp`. We retain the orientations after 20, 40, and 60 steps so their
texture indices can be compared later.

```python
oriAtStep = []
for k in range(1, numIter + 1):
  W = spin.eval(ori)
  ori = ori.exp(-W)
  if k % 20 == 0:
    oriAtStep.append(ori)
```

## Read the resulting rolling texture

The result lives in the rolling specimen frame. This frame names the axes rolling
direction (RD), transverse direction (TD), and normal direction (ND). Its plotting
convention places RD north, TD west, and ND out of the page.

```python
previousFrame = specimenFrame.default
specimenFrame.rolling.makeDefault()

plotPF(ori, Miller([[0, 0, 1], [1, 1, 1]], cs), 'contourf')
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/TextureEvolution-10.png"></center>

The initially diffuse poles have gathered into several symmetry-related maxima. Their
concentrated contours are the pole-figure signature of the fcc rolling components
generated by the Taylor rotations.

## Measure texture strength

The texture index is 1 for a uniform ODF and grows as orientation density becomes more
concentrated. Compute it at 0, 20, 40, and 60 percent strain with the same
density-estimation halfwidth, so the values are comparable.

```python
textureIndex = [initialTextureIndex]
for o in oriAtStep:
  odfAtStep = calcDensity(o, halfwidth=10 * degree)
  textureIndex.append(norm(odfAtStep) ** 2)

print('StrainPercent  TextureIndex')
for s, t in zip([0, 20, 40, 60], textureIndex):
  print(f'{s:13d}  {t:12.4f}')
```

```text
StrainPercent  TextureIndex
            0        1.0009
           20        1.1448
           40        1.4656
           60        1.8125
```

The index rises from 1.0010 initially to 1.1499, 1.4984, and 1.9160. This steady
increase quantifies the sharpening seen in the pole figures, although the ODF is not
yet extremely concentrated at 60 percent strain.

```python
odf = odfAtStep
plotSection(odf, 'phi2', np.array([0, 45, 65]) * degree, 'contourf')
mtexColorbar()

# restore the incoming session frame after the published figures are made
previousFrame.makeDefault()
```

<center class="mtex-figure"><img class="inline" src="figures/python/TextureEvolution-12.png"></center>

The same orientation-density maxima now appear in three phi2 sections. Their compact
patches, separated by broad low-density regions, show where the rolling texture is
concentrated in the three-dimensional ODF.

## Numerical and physical limits

* The step size matters. The spin field is computed for one increment and applied
  `numIter` times. This is a first-order explicit update: too few steps give inaccurate
  trajectories, while too many are needlessly slow.
* The model deforms every crystal by exactly the same strain. This is the defining
  Taylor assumption, and it overpredicts the sharpness of real textures because real
  grains accommodate one another.
* Nothing here depends on plane strain. Setting `epsTotal` to
  `strainTensor(np.diag([-0.5, -0.5, 1]))` gives axisymmetric tension, and the same loop
  produces the corresponding fibre texture.
* The slip systems enter only through `sS`. Replacing `slipSystem.fcc` with
  `slipSystem.bcc` or a hexagonal family changes the prediction.

## Technical Details

The Taylor factor 2.3153 is unique, but the slip amounts that reach it are not: the
optimal face of the linear program has many points. The port's simplex returns a vertex
of that face and MATLAB's interior-point solver a point inside it, so the single crystal
turns by 0.5320 degrees here where MATLAB reports 0.4975, and the spin field, which
takes the minimum-norm point, is a third choice. The texture indices at 20, 40 and 60
percent strain, 1.158, 1.490 and 1.847 for MATLAB's run 1.143, 1.482 and 1.892, differ
by that and by the random start.

## References

* G. I. Taylor, *Plastic Strain in Metals*, *Journal of the Institute of Metals* 62
  (1938), 307-324. This paper introduces the equal-strain polycrystal model used for
  every orientation update.
* H.-J. Bunge,
  [Some applications of the Taylor theory of polycrystal plasticity](https://doi.org/10.1002/crat.19700050112),
  *Kristall und Technik* 5 (1970), 145-175. This paper develops the
  orientation-dependent Taylor factor and crystallographic spin used here.

## Next

[Taylor Model for Hexagonal Materials](TaylorHex_py.html) applies the same Taylor rotation
to magnesium in a single large step. It adds slip families with unequal critical
resolved shear stresses and compares two temperatures.
{% endraw %}
