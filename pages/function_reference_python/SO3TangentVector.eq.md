---
title: 'SO3TangentVector.eq'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.eq_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector.eq.html
status: Reference
---
{% raw %}
A method of [SO3TangentVector](SO3TangentVector_index_py.html).

equal at the same reference within tol in the components (MATLAB's eq)

## Syntax

<div class="mx-form" markdown="1">

```python
b = v1.isclose(v2)
```

Equal up to 1e-6.

</div>

<div class="mx-form" markdown="1">

```python
b = v1.isclose(v2, tol=1e-3)
```

A coarser tolerance.

</div>

## Description

True where the references are the same and the difference of the vectors, brought to
the side of the first, is shorter than tol. The operator == compares exactly.

## Input

| `v1, v2` | SO3TangentVector |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `1e-06` | the largest length of the difference |

## Output

| `b` | boolean array |

## See also

[SO3TangentVector.angle](SO3TangentVector.angle_py.html)

MATLAB's [SO3TangentVector.eq](SO3TangentVector.eq.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L361">source</a></font>
{% endraw %}
