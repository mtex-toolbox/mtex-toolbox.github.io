---
title: 'SO3TangentVector.cat'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector.cat.html
status: Reference
---
{% raw %}
A method of [SO3TangentVector](SO3TangentVector_index_py.html).

tangent vectors concatenate on one side; the references concatenate with them unless
every list shares the same one

## Syntax

<div class="mx-form" markdown="1">

```python
v = cat(v1, v2)
```

One after the other.

</div>

<div class="mx-form" markdown="1">

```python
v = cat(v1, v2, axis=1)
```

Side by side.

</div>

## Description

The vectors are brought to the side of the first operand.

## Input

| `arrays` | SO3TangentVector |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `0` | the axis along which they are joined, as NumPy's concatenate |

## Output

| `v` | SO3TangentVector |

## See also

[SO3TangentVector](SO3TangentVector_index_py.html), [vector3d.cat](vector3d.cat_py.html)

MATLAB's [SO3TangentVector.cat](SO3TangentVector.cat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L208">source</a></font>
{% endraw %}
