---
title: 'quaternion.eq'
sidebar: function_reference_sidebar
permalink: quaternion.eq_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.eq.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

equal within the angular tolerance tol, MATLAB's eq

## Syntax

Equal up to 5e-4:

```python
b = q1.isclose(q2)
```

A coarser tolerance:

```python
b = q1.isclose(q2, tol=1e-2)
```

True where the inner product of the coefficients exceeds cos(tol), as MATLAB's eq; for
unit quaternions the angle between them is below 2 tol. A quaternion and its negative
are not close; rotation.isclose takes them as one. The operator == compares exactly.

## Input

| | |
|---|---|
| `q1, q2` | quaternion |

## Output

| | |
|---|---|
| `b` | boolean array |

## Keywords

| | default | |
|---|---|---|
| `tol` | `0.0005` | the tolerance, an angle |

## See also

[rotation.isclose](rotation.isclose_py.html), [quaternion.dot](quaternion.dot_py.html)

MATLAB's [quaternion.eq](quaternion.eq.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L271">source</a></font>
{% endraw %}
