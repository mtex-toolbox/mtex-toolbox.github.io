---
title: 'grain3Boundary.flip'
sidebar: function_reference_sidebar
permalink: grain3Boundary.flip_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3Boundary.flip.html
status: Reference
---
{% raw %}
A method of [grain3Boundary](grain3Boundary_index_py.html).

the boundary faces with their two sides exchanged, of all faces or a selection; MATLAB's
flip of grain3Boundary

## Syntax

<div class="mx-form" markdown="1">

```python
gB = gB.flip()
```

Every face.

</div>

<div class="mx-form" markdown="1">

```python
gB = gB.flip(gB.hasGrain(1))
```

The faces of grain 1.

</div>

## Description

The grain ids, the voxel ids and the phase ids of the two sides change places and the
misrotation is inverted. The corners and so the normals stay; flipN turns those. The
boundary is copied.

## Input

| `gB` | grain3Boundary |

## Keywords

| keyword | default | description |
|---|---|---|
| `sel` | `None` | the faces to flip, a boolean mask or indices; by default every face |

## Output

| `gB` | grain3Boundary |

## See also

[grain3Boundary.flipN](grain3Boundary.flipN_py.html), [grainBoundary.flip](grainBoundary.flip_py.html)

MATLAB's [grain3Boundary.flip](grain3Boundary.flip.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3boundary.py#L162">source</a></font>
{% endraw %}
