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

<div class="mx-form" markdown="1">

```python
b = T1.isclose(T2)
```

Equal up to 5e-4.

</div>

<div class="mx-form" markdown="1">

```python
b = T1.isclose(T2, tol=1*degree)
```

A coarser tolerance.

</div>

## Description

As rotation.isclose, the angle between the rotational parts below 2 tol, and the parities
equal.

## Input

| `T1` | orthogonalTransform |
| `T2` | orthogonalTransform or rotation |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `0.0005` | the tolerance, an angle |

## Output

| `b` | boolean array |

## See also

[orthogonalTransform.dot](orthogonalTransform.dot_py.html), [rotation.isclose](rotation.isclose_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L1278">source</a></font>
{% endraw %}
