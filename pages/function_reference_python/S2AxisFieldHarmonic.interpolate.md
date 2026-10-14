---
title: 'S2AxisFieldHarmonic.interpolate'
sidebar: function_reference_sidebar
permalink: S2AxisFieldHarmonic.interpolate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2AxisFieldHarmonic.interpolate.html
status: Reference
---
{% raw %}
A method of [S2AxisFieldHarmonic](S2AxisFieldHarmonic_index_py.html).

the least squares fit to axes at directions: the six components of v v^T one by one;
MATLAB's S2AxisFieldHarmonic.interpolate

## Syntax

An axis field through axes a at directions v:

```python
aF = S2AxisFieldHarmonic.interpolate(v, a)
```

Of a given degree, regularised:

```python
aF = S2AxisFieldHarmonic.interpolate(v, a, bandwidth=8, lambda_=1e-3)
```

Each of the six components of the matrices a a^T is fitted by interpolate, a regularised
least squares fit, and the field evaluates to the leading eigenvector of the fitted matrix.
Further keywords, lambda_, s, maxIter and tol, go to interpolate.

## Input

| | |
|---|---|
| `nodes` | vector3d, the directions |
| `values` | vector3d, the axes at the directions |

## Output

| | |
|---|---|
| `aF` | S2AxisFieldHarmonic |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the largest harmonic degree; by default it follows from the number of nodes |
| `weights` | `None` | the weights of the nodes, as interpolate takes them |

## See also

[interpolate](SO3VectorFieldHarmonic.interpolate_py.html), [S2AxisFieldHarmonic.quadrature](S2AxisFieldHarmonic.quadrature_py.html), [S2VectorFieldHarmonic.interpolate](S2VectorFieldHarmonic.interpolate_py.html)

MATLAB's [S2AxisFieldHarmonic.interpolate](S2AxisFieldHarmonic.interpolate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2axisfield.py#L201">source</a></font>
{% endraw %}
