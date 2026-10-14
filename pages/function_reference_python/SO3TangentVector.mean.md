---
title: 'SO3TangentVector.mean'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector.mean.html
status: Reference
---
{% raw %}
A method of [SO3TangentVector](SO3TangentVector_index_py.html).

the mean of tangent vectors at one shared reference, weighted when weights are given

## Syntax

<div class="mx-form" markdown="1">

```python
m = mean(v)
```

Over all.

</div>

<div class="mx-form" markdown="1">

```python
m = mean(v, axis=0)
```

Along the first axis.

</div>

<div class="mx-form" markdown="1">

```python
m = mean(v, weights=w)
```

Weighted.

</div>

## Description

Without weights the vectors that are not a number are left out; with weights they are
not.

## Input

| `v` | SO3TangentVector, every one at the same reference |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | one weight per vector, in the shape of v |
| `axis` | `None` | the axis or axes of the list to average along, all by default |

## Output

| `m` | SO3TangentVector at that reference |

## See also

[SO3TangentVector.sum](SO3TangentVector.sum_py.html), [mean](mean_py.html)

MATLAB's [SO3TangentVector.mean](SO3TangentVector.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L404">source</a></font>
{% endraw %}
