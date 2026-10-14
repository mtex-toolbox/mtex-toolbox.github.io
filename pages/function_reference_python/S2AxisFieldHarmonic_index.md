---
title: 'The class S2AxisFieldHarmonic'
sidebar: function_reference_sidebar
permalink: S2AxisFieldHarmonic_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2AxisFieldHarmonic_index.html
status: Reference
---
{% raw %}
an axis field on the sphere as a harmonic series of the six components of a a^T, evaluated as
the leading eigenvector of the reconstructed matrix; symmetrised under the frame's group

```python
aF = S2AxisFieldHarmonic(fhat, cs)                  coefficients, one column per component
aF = S2AxisFieldHarmonic(lambda v: ..., cs, bandwidth=L)
aF = S2AxisFieldHarmonic(v, axes)                   axes given at directions
aF = S2AxisFieldHarmonic(vF)                        from a vector or axis field
```

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
| [quiver3](S2AxisField.quiver3_py.html) | quiver3d(t): a tangent vector as an arrow at its reference in orientation space, in the coordinates of the held axes or axis angle space |
| [quiver](S2AxisField.quiver_py.html) | quiver(v, w), quiver(vF), quiver(ori, w): arrows at directions, a vector or axis field, or arrows at orientations in the sections of the current figure |
| [S2AxisField](S2AxisField.S2AxisField_py.html) | an axis field on the sphere as a harmonic series of the six components of a a^T, evaluated as the leading eigenvector of the reconstructed matrix |
| [S2AxisFieldHarmonic](S2AxisFieldHarmonic.S2AxisFieldHarmonic_py.html) | an axis field on the sphere as a harmonic series of the six components of a a^T, evaluated as the leading eigenvector of the reconstructed matrix |
| [symmetrise](S2AxisFieldHarmonic.symmetrise_py.html) | the projection onto the equivariant fields, a(s xi) = +- s a(xi) |

## Used on

[S2FunAxisField](S2FunAxisField_py.html)

MATLAB's [S2AxisFieldHarmonic_index](S2AxisFieldHarmonic_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2axisfield.py#L99">source</a></font>
{% endraw %}
