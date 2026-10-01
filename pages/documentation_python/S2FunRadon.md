---
title: 'The Spherical Radon Transform'
sidebar: documentation_sidebar
permalink: S2FunRadon_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: S2FunRadon.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/S2FunRadon.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/SphericalFunctions/S2FunRadon.py">edit page</a></font>

<!--introduction-->

The spherical Radon transform replaces every function value by an average around a great
circle. It therefore turns a localized peak into a ring. This geometric change is the key
to recognizing the transform in a plot.

In texture analysis, the corresponding operation turns an ODF into a
[pole figure](PoleFigureSimulation_py.html). This page first develops the transform for an
ordinary spherical function. See [radon](SO3Fun.calcPDF.html) for the
orientation-space version.

## From a peak to a ring

Start with a smooth peak centred on the direction $$(1,1,1)$$.

```python
import numpy as np

from mtex import *

f = lambda v: np.exp(-4 * angle(v, vector3d(1, 1, 1)) ** 2)

sF = S2FunHarmonic.quadrature(f, bandwidth=48)
sF
```

```text
S2FunHarmonic
  bandwidth: 48
  mean     : 0.05996
```

---

```python
plot(sF, upper=True)
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/S2FunRadon-2.png"></center>

The warm colours are confined to one neighbourhood on the upper hemisphere. This
localized maximum is the feature to follow through the transform.

Compute the spherical Radon transform with [radon](S2FunHarmonic.radon.html).

```python
rF = radon(sF)
rF
```

```text
S2FunHarmonic
  bandwidth: 48
  mean     : 0.05996
  antipodal: true
```

---

```python
plot(rF, upper=True)
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/S2FunRadon-4.png"></center>

The single maximum has become a ring. Every pole on that ring identifies a great circle
that passes through the original peak. Such poles lie $$90$$ degree from the peak direction.

## Checking one transformed value

Let $$\vec x$$ be the pole of a great circle. The transform at $$\vec x$$ is the mean of the
function along the circle perpendicular to $$\vec x$$,

$$ \mathcal R f(\vec x) = \frac{1}{2\pi}\int_{\vec v \perp \vec x}
f(\vec v)\,\mathrm{d}\vec v. $$

Check this definition at an arbitrary direction. The vectors `u1` and `u2` span the plane
perpendicular to `x`, while `v` samples its unit circle.

```python
x = normalize(vector3d(0.3, -0.7, 0.5))

u1 = orth(x)
u2 = cross(x, u1)
t = 2 * np.pi * np.arange(100000) / 100000
v = np.cos(t) * u1 + np.sin(t) * u2

np.array([np.mean(sF.eval(v)), rF.eval(x)])
```

```text
array([0.1389, 0.1389])
```

The direct mean and the value returned by `radon` agree to the displayed precision. The
spherical transform is the analogue of the classical Radon transform used in computed
tomography.

## What information is lost

A great circle contains every direction together with its antipode. Averaging along that
circle cannot distinguish $$f(\vec v)$$ from $$f(-\vec v)$$. The great-circle Radon transform
therefore destroys the odd part of a function and is always
[antipodally symmetric](VectorsAxes_py.html).

Apply the transform to the purely odd function $$f(\vec v)=v_z$$. The result is zero up to
numerical noise.

```python
sFodd = S2FunHarmonic.quadrature(lambda v: v.z, bandwidth=8)
```

```python
max(abs(radon(sFodd)))[0]
```

```text
9.4505e-17
```

## Mean values along small circles

A second argument $$\delta$$ asks `radon` to average along a small circle. Its angular
distance from $$\vec x$$ is $$\pi/2+\delta$$, instead of $$\pi/2$$ for a great circle.

```python
delta = 20 * degree

rD = radon(sF, delta)

w = np.cos(np.pi / 2 + delta) * x + np.sin(np.pi / 2 + delta) * (np.cos(t) * u1 + np.sin(t) * u2)

np.array([np.mean(sF.eval(w)), rD.eval(x)])
```

```text
array([0.0727, 0.0727])
```

Again, the sampled mean and the transformed value agree to the displayed precision.

```python
plot(rD, upper=True)
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/S2FunRadon-9.png"></center>

The high-value band is displaced from the great-circle ring because the sampled circles
are now offset by `delta`. For nonzero `delta`, opposite poles generally describe
different small circles, so `rD` need not be antipodally symmetric.

## Inverting the transform

[invRadon](S2FunHarmonic.invRadon.html) reverses the transform in the spherical harmonic
basis. A round trip recovers an antipodally symmetric function exactly within its harmonic
representation, up to floating-point error.

```python
sFeven = S2FunHarmonic.quadrature(lambda v: 0.5 * (f(v) + f(-v)), bandwidth=48)

nodes = equispacedS2Grid(resolution=5 * degree)

np.mean(np.abs(invRadon(radon(sFeven)).eval(nodes) - sFeven.eval(nodes)))
```

```text
3.8330e-17
```

A general function cannot be recovered because its odd part has already been lost.
Inverting `rF` returns precisely the even part of `sF`.

```python
backF = invRadon(rF)
backF
```

```text
S2FunHarmonic
  bandwidth: 48
  mean     : 0.05996
  antipodal: true
```

---

```python
np.mean(np.abs(backF.eval(nodes) - sF.eval(nodes)))
```

```text
0.0599
```

The nonzero first error measures the missing odd part. Comparing with `sFeven` instead
confirms that the even part was recovered.

```python
np.mean(np.abs(backF.eval(nodes) - sFeven.eval(nodes)))
```

```text
5.3742e-17
```

## The maths behind this

Great-circle averaging is unchanged by rotation. The spherical Radon transform is
therefore a convolution and acts diagonally on the harmonic expansion. Its Legendre
coefficients are

$$ A_n = (-1)^{n/2}\,\frac{(n-1)!!}{n!!} \quad\text{for even } n,
\qquad A_n = 0 \quad\text{for odd } n. $$

The zero odd coefficients explain the permanent loss demonstrated above. For the even
degrees, `invRadon` divides by $$A_n$$.

The magnitude of $$A_n$$ decays like $$n^{-1/2}$$. Its inverse consequently amplifies
high-degree noise. Measured data should not be inverted directly; instead, solve a
regularized problem as in [ODF reconstruction from pole figures](PoleFigure2ODF_py.html). The
missing odd part reappears there as the [ghost effect](PoleFigure2ODFAmbiguity_py.html).

## References

* J. D. McEwen and M. A. Price,
  [Scale-discretised ridgelet transform on the sphere](https://doi.org/10.23919/EUSIPCO.2019.8903034),
  _27th European Signal Processing Conference_ (2019), 1-5, derives the convolution and
  harmonic representations and the exact inverse for antipodally symmetric functions.

## Next

[Spherical Vector Fields](S2FunVectorField_py.html) moves from scalar values on the sphere to
vectors and shows how to visualize their direction and magnitude.

## Technical Details

MATLAB displays the bandwidth 49 for `'bandwidth', 48`, the port 48. `max(sF)` is the pair
of the value and its position, so the page takes `[0]`.
{% endraw %}
