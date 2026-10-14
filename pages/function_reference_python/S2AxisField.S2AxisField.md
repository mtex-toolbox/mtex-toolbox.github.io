---
title: 'S2AxisField.S2AxisField'
sidebar: function_reference_sidebar
permalink: S2AxisField.S2AxisField_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2AxisField.S2AxisField.html
status: Reference
---
{% raw %}
an axis field on the sphere as a harmonic series of the six components of a a^T, evaluated as
the leading eigenvector of the reconstructed matrix; symmetrised under the frame's group

## Syntax

```python
S2AxisFieldHarmonic(fhat, *args, bandwidth=None, weights=None, symmetrise=True)
```

```python
aF = S2AxisFieldHarmonic(fhat, cs)                  coefficients, one column per component
aF = S2AxisFieldHarmonic(lambda v: ..., cs, bandwidth=L)
aF = S2AxisFieldHarmonic(v, axes)                   axes given at directions
aF = S2AxisFieldHarmonic(vF)                        from a vector or axis field
```

## Used on

[S2FunAxisField](S2FunAxisField_py.html)

MATLAB's [S2AxisField.S2AxisField](S2AxisField.S2AxisField.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2axisfield.py#L99">source</a></font>
{% endraw %}
