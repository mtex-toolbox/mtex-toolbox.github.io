---
title: 'The class S2AxisFieldHarmonic'
sidebar: function_reference_sidebar
permalink: S2AxisField_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2AxisField_index.html
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

The coefficient form takes a (L+1)^2 x 6 matrix in the port's internal normalisation, not
MATLAB's six S2FunHarmonic components.

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
| `bandwidth` |  | the largest harmonic degree; by default the preference 'defaultS2Bandwidth', for a field the field's |
| `weights` |  | the quadrature weights of axes at scattered directions |
| `symmetrise` |  | symmetrise the field under the group of its frame |

## See also

[S2VectorFieldHarmonic](S2VectorFieldHarmonic_index_py.html), [S2FunHarmonic](S2FunHarmonic_index_py.html), [S2AxisFieldHarmonic.interpolate](S2AxisFieldHarmonic.interpolate_py.html), velocity, [S2FunVectorField](S2FunVectorField_py.html)

## Members

| | |
|---|---|
| [angle](S2AxisField.angle_py.html) | the angle between the axes of the field and a constant axis, or another field, as a function on the sphere |
| [bandwidth](S2AxisFieldHarmonic.bandwidth_py.html) | the harmonic degree of the expansion |
| [dot](S2AxisFieldHarmonic.dot_py.html) | the cosine of the angle to a constant axis, sqrt(x^T (a a^T) x), and to another field |
| [eval](S2AxisFieldHarmonic.eval_py.html) | the leading eigenvector of the reconstructed matrix |
| [fhat](S2AxisFieldHarmonic.fhat_py.html) | the coefficients of the components in MTEX's basis, one column per component |
| [interpolate](S2AxisFieldHarmonic.interpolate_py.html) | the least squares fit to axes at directions: the six components of v v^T one by one |
| [plot](S2AxisField.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [quadrature](S2AxisFieldHarmonic.quadrature_py.html) | S2AxisFieldHarmonic.quadrature(f, bandwidth=L), MATLAB's name for the constructor |
| [quiver3](S2AxisField.quiver3_py.html) | arrows in space: tangent vectors in orientation space, a field on the sphere or SO(3), or arrows at positions |
| [quiver](S2AxisField.quiver_py.html) | quiver(v, w), quiver(vF), quiver(ori, w): arrows at directions, a vector or axis field, or arrows at orientations in the sections of the current figure |
| [S2AxisField](S2AxisField.S2AxisField_py.html) | an axis field on the sphere by a harmonic series: an axis without sign at every direction, as the principal directions of a stress or the polarisations of a wave |
| [S2AxisFieldHarmonic](S2AxisFieldHarmonic.S2AxisFieldHarmonic_py.html) | an axis field on the sphere by a harmonic series: an axis without sign at every direction, as the principal directions of a stress or the polarisations of a wave |
| [symmetrise](S2AxisFieldHarmonic.symmetrise_py.html) | the projection onto the equivariant fields, a(s xi) = +- s a(xi) |

## Used on

[S2FunAxisField](S2FunAxisField_py.html)

MATLAB's [S2AxisField_index](S2AxisField_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2axisfield.py#L99">source</a></font>
{% endraw %}
