---
title: 'regionSurface'
sidebar: function_reference_sidebar
permalink: regionSurface_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the boundary of an orientation region in axis angle space: the sphere mesh pushed out to
the largest angle about every axis, in radians, with the faces of the mesh

## Syntax

<div class="mx-form" markdown="1">

```python
P, F = regionSurface(oR)
```

The surface on a 5 degree mesh.

</div>

<div class="mx-form" markdown="1">

```python
P, F = regionSurface(oR, resolution=2*degree)
```

A finer surface.

</div>

## Input

| `oR` | orientationRegion, e.g. fundamentalRegion(cs, ss) |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `5*degree` | the spacing of the sphere mesh the surface is pushed out from |

## Output

| `P` | (n, 3) array, the points of the surface, NaN about the axes outside the region's sector |
| `F` | (m, 3) int array, the triangles of the mesh as indices into P |

## See also

[regionWalls](regionWalls_py.html), [regionLines](regionLines_py.html), [sphereMesh](sphereMesh_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L145">source</a></font>
{% endraw %}
