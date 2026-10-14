---
title: 'symmetry.fundamentalRegion'
sidebar: function_reference_sidebar
permalink: symmetry.fundamentalRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.fundamentalRegion.html
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

the fundamental region of orientations of this group and another one, the Dirichlet domain
of the identity

## Syntax

<div class="mx-form" markdown="1">

```python
oR = cs.sym.fundamentalRegion()
```

Of orientations.

</div>

<div class="mx-form" markdown="1">

```python
oR = cs.sym.fundamentalRegion(cs.sym)
```

Of misorientations.

</div>

<div class="mx-form" markdown="1">

```python
oR = cs.sym.fundamentalRegion(cs.sym, antipodal=True)
```

A misorientation and its inverse as one.

</div>

## Description

The orientations nearer the identity than any of their equivalents. The frames are
built from the groups, so cs.fundamentalRegion() on the frame is the usual call.

## Input

| `pg` | symmetry |
| `other` | symmetry, the second group, by default that of the default specimen frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | identify every misorientation with its inverse |

## Output

| `oR` | orientationRegion |

## See also

[fundamentalRegion](fundamentalRegion_py.html), [orientationRegion](orientationRegion_index_py.html), [maxAngle](symmetry.maxAngle_py.html)

MATLAB's [symmetry.fundamentalRegion](symmetry.fundamentalRegion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L535">source</a></font>
{% endraw %}
