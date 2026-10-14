---
title: 'S2AxisFieldHarmonic.S2AxisFieldHarmonic'
sidebar: function_reference_sidebar
permalink: S2AxisFieldHarmonic.S2AxisFieldHarmonic_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2AxisFieldHarmonic.S2AxisFieldHarmonic.html
status: Reference
---
{% raw %}
an axis field on the sphere by a harmonic series: an axis without sign at every direction,
as the principal directions of a stress or the polarisations of a wave

## Syntax

Approximates a function of the directions:

```python
aF = S2AxisFieldHarmonic(lambda v: ..., cs, bandwidth=16)
```

Fits axes given at the directions v:

```python
aF = S2AxisFieldHarmonic(v, axes, bandwidth=16)
```

Approximates a vector or axis field:

```python
aF = S2AxisFieldHarmonic(vF)
```

From the coefficients of the six components:

```python
aF = S2AxisFieldHarmonic(fhat, cs)
```

Since an axis has no sign, not the axis a but the six independent entries xx, xy, yy, xz,
yz, zz of the symmetric matrix a a^T are expanded in spherical harmonics; evaluation
recovers the axis as the leading eigenvector of the matrix. A function or a field is
approximated by quadrature on a grid of the bandwidth, axes at scattered directions by the
quadrature sum with the weights given, equal ones by default (S2AxisFieldHarmonic.interpolate
fits them by least squares). The field is symmetrised under the group of its frame.
S2AxisField is the abstract class above it, S2AxisFieldHandle the field of a function
evaluated where it is asked.

The coefficient form takes a (L+1)^2 x 6 matrix, one column per component xx, xy, xz, yy,
yz, zz, in MTEX's basis, the coefficients aF.fhat returns and S2FunHarmonic takes.

## Input

| | |
|---|---|
| `fhat` | a function of vector3d returning axes, S2VectorField or S2AxisField, vector3d of directions, or the coefficient matrix |
| `args` | the axes at the directions, and the crystalFrame or specimenFrame of the field |

## Output

| | |
|---|---|
| `aF` | S2AxisFieldHarmonic |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the largest harmonic degree; by default the preference 'defaultS2Bandwidth', for a field the field's |
| `weights` | `None` | the quadrature weights of axes at scattered directions |
| `symmetrise` | `True` | symmetrise the field under the group of its frame |

## See also

[S2VectorFieldHarmonic](S2VectorFieldHarmonic_index_py.html), [S2FunHarmonic](S2FunHarmonic_index_py.html), [S2AxisFieldHarmonic.interpolate](S2AxisFieldHarmonic.interpolate_py.html), [velocity](complianceTensor.velocity_py.html), [S2FunVectorField](S2FunVectorField_py.html)

## Used on

[S2FunAxisField](S2FunAxisField_py.html)

MATLAB's [S2AxisFieldHarmonic.S2AxisFieldHarmonic](S2AxisFieldHarmonic.S2AxisFieldHarmonic.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2axisfield.py#L99">source</a></font>
{% endraw %}
