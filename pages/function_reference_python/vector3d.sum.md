---
title: 'vector3d.sum'
sidebar: function_reference_sidebar
permalink: vector3d.sum_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.sum.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the sum of the vectors, over all axes or the given ones

## Syntax

<div class="mx-form" markdown="1">

```python
s = sum(v)
```

Over all vectors.

</div>

<div class="mx-form" markdown="1">

```python
s = sum(v, axis=0)
```

Along the first axis.

</div>

<div class="mx-form" markdown="1">

```python
s = np.sum(v, axis=1, keepdims=True)
```

NumPy's form, the summed axis kept.

</div>

## Description

The result keeps the frame and the display style of the vectors. MATLAB sums along the
first axis that is not a singleton; the sum here is over all axes unless one is given.

## Input

| `v` | vector3d |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `None` | an axis or a tuple of axes to sum over; by default all |
| `dtype` | `None` | NumPy's argument, refused: a container has no dtype to choose |
| `out` | `None` | NumPy's argument, refused: a container has no output buffer |
| `keepdims` | `False` | keep the summed axes with length one |

## Output

| `s` | vector3d |

## See also

[vector3d.mean](vector3d.mean_py.html), [vector3d.norm](vector3d.norm_py.html)

MATLAB's [vector3d.sum](vector3d.sum.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L1006">source</a></font>
{% endraw %}
