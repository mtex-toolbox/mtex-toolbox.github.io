---
title: 'EBSD3.fill'
sidebar: function_reference_sidebar
permalink: EBSD3.fill_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.fill.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

the empty voxels of a volume filled from their nearest measured voxel; MATLAB's fill of
EBSD3

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd3 = ebsd3.fill()
```

The empty voxels enclosed by measured ones.

</div>

<div class="mx-form" markdown="1">

```python
ebsd3 = ebsd3.fill(extrapolate=True)
```

Every empty voxel, up to the outer boundary.

</div>

## Description

The volume is gridded, and every empty voxel, padding or not indexed, takes the phase, the
orientation and the properties of the nearest indexed voxel. Without extrapolate only the
empty regions enclosed by measured voxels are filled; those that reach the outside of the
volume stay empty. MATLAB fills the voxels with a NaN phase alone, by a scattered nearest
interpolant, and fills grains by fill(ebsd, grains), which the port's fill of a volume does
not take.

## Input

| `ebsd` | EBSD3 |

## Keywords

| keyword | default | description |
|---|---|---|
| `extrapolate` | `False` | fill every empty voxel, also those connected to the outside of the volume |

## Output

| `ebsd` | EBSD3square, a copy of the gridded volume |

## See also

[EBSD.fill](EBSD.fill_py.html), [EBSD3.gridify](EBSD3.gridify_py.html), [EBSD3.interp](EBSD3.interp_py.html)

MATLAB's [EBSD3.fill](EBSD3.fill.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/intragranular3d.py#L233">source</a></font>
{% endraw %}
