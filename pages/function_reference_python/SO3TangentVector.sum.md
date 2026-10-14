---
title: 'SO3TangentVector.sum'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.sum_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector.sum.html
status: Reference
---
{% raw %}
A method of [SO3TangentVector](SO3TangentVector_index_py.html).

the sum of tangent vectors at one shared reference, over all or along an axis

## Syntax

<div class="mx-form" markdown="1">

```python
s = sum(v)
```

Over all.

</div>

<div class="mx-form" markdown="1">

```python
s = sum(v, axis=0)
```

Along the first axis.

</div>

## Input

| `v` | SO3TangentVector, every one at the same reference |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `None` | the axis or axes of the list to sum along, all by default |

## Output

| `s` | SO3TangentVector at that reference |

## See also

[SO3TangentVector.mean](SO3TangentVector.mean_py.html)

MATLAB's [SO3TangentVector.sum](SO3TangentVector.sum.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L451">source</a></font>
{% endraw %}
