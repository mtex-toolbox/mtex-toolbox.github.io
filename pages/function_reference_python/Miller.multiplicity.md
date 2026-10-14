---
title: 'Miller.multiplicity'
sidebar: function_reference_sidebar
permalink: Miller.multiplicity_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Miller.multiplicity.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the number of distinct directions symmetrically equivalent to each vector, of axes under
antipodal

## Syntax

<div class="mx-form" markdown="1">

```python
n = h.multiplicity()
```

12 for <110> in 432.

</div>

<div class="mx-form" markdown="1">

```python
n = h.multiplicity(antipodal=True)
```

6, the axes.

</div>

## Input

| `h` | Miller |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `None` | count the axes, v and -v one; by default as h says |

## Output

| `n` | an integer per vector, in the shape of h |

## See also

[Miller.symmetrise](Miller.symmetrise_py.html)

MATLAB's [Miller.multiplicity](Miller.multiplicity.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L1089">source</a></font>
{% endraw %}
