---
title: 'Miller.symmetrise'
sidebar: function_reference_sidebar
permalink: Miller.symmetrise_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Miller.symmetrise.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the symmetrically equivalent directions, numSym x shape, or the distinct ones of one
direction with unique=True; MATLAB's second output, the multiplicity, is v.multiplicity(),
its third the rotations of the frame, v.frame.rotations()

## Syntax

<div class="mx-form" markdown="1">

```python
hs = h.symmetrise()
```

Every image, numSym x shape.

</div>

<div class="mx-form" markdown="1">

```python
hs = h.symmetrise(unique=True)
```

The distinct ones of one direction.

</div>

<div class="mx-form" markdown="1">

```python
hs = h.symmetrise(antipodal=True)
```

The negatives too.

</div>

## Description

With antipodal=True the negatives are added, unless the group holds the inversion or h
is an axis; with unique=True an axis, or antipodal=True, takes v and -v as one, and
antipodal=False keeps them apart. A vector in no crystal frame is returned with a leading
axis of one.

## Input

| `h` | Miller |

## Keywords

| keyword | default | description |
|---|---|---|
| `unique` | `False` | the distinct images of a single direction, a flat list |
| `antipodal` | `None` | treat the directions as axes; by default as h says |

## Output

| `hs` | Miller |

## See also

[Miller.multiplicity](Miller.multiplicity_py.html), [symmetry.rotations](symmetry.rotations_py.html)

MATLAB's [Miller.symmetrise](Miller.symmetrise.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L1063">source</a></font>
{% endraw %}
