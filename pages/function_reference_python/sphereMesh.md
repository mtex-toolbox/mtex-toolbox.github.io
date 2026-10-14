---
title: 'sphereMesh'
sidebar: function_reference_sidebar
permalink: sphereMesh_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the unit sphere as a mesh: rings of constant polar angle joined by quads split into
triangles, fans at the poles, every triangle wound so that its normal points outwards;
the vertices as an (n, 3) array and the faces as (m, 3) index triples

## Syntax

<div class="mx-form" markdown="1">

```python
V, F = sphereMesh()
```

Rings 5 degree apart.

</div>

<div class="mx-form" markdown="1">

```python
V, F = sphereMesh(resolution=10*degree)
```

A coarser mesh.

</div>

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `5*degree` | the spacing of the rings and of the vertices along them |

## Output

| `V` | (n, 3) array, the vertices on the unit sphere, the poles first and last |
| `F` | (m, 3) int array, the triangles as indices into V |

## See also

[regionSurface](regionSurface_py.html), [sphereGridLines](sphereGridLines_py.html), [plot3d](S2Fun.plot3d_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L18">source</a></font>
{% endraw %}
