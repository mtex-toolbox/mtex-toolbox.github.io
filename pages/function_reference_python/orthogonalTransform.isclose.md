---
title: 'orthogonalTransform.isclose'
sidebar: function_reference_sidebar
permalink: orthogonalTransform.isclose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orthogonalTransform](orthogonalTransform_index_py.html).

equal within the angular tolerance tol and of one parity, MATLAB's eq

## Syntax

Equal up to 5e-4:

```python
b = T1.isclose(T2)
```

A coarser tolerance:

```python
b = T1.isclose(T2, tol=1*degree)
```

As rotation.isclose, the angle between the rotational parts below 2 tol, and the parities
equal.

## Input

| | |
|---|---|
| `T1` | orthogonalTransform |
| `T2` | orthogonalTransform or rotation |

## Output

| | |
|---|---|
| `b` | boolean array |

## Keywords

| | default | |
|---|---|---|
| `tol` | `0.0005` | the tolerance, an angle |

## See also

[orthogonalTransform.dot](orthogonalTransform.dot_py.html), [rotation.isclose](rotation.isclose_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L1079">source</a></font>
{% endraw %}
