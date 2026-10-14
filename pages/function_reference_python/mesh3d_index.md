---
title: 'The class mesh3d'
sidebar: function_reference_sidebar
permalink: mesh3d_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
polygons over vertices: V (n, 3), the faces as ptr/idx (face k is idx[ptr[k]:ptr[k+1]]),
a colour per face (m, 3) in [0, 1] or one colour for all, the face and edge transparency

## Input

| `V` | array of vertex coordinates with shape (n, 3) |
| `ptr` | face offsets of length numFaces+1 into idx |
| `idx` | concatenated zero-based polygon vertex indices |
| `faceColor` | one RGB triplet or one triplet per face |
| `faceAlpha` | face opacity from 0 to 1; default 1 |
| `edgeColor` | edge colour; None or 'none' hides edges |
| `edgeAlpha` | edge opacity from 0 to 1; default 1 |
| `lineWidth` | edge width; default 0.5 |
| `values` | optional scalar face values for the colour bar |
| `colormap` | optional colour map associated with values |
| `colorRange` | optional colour-bar range |

## Members

| [bounds](mesh3d.bounds_py.html) | the corners (lo, hi) of the box around the vertices |
| [edges](mesh3d.edges_py.html) | the edges of the polygons, every one once, (e, 2) |
| [numCorners](mesh3d.numCorners_py.html) | the number of corners of every face |
| [triangles](mesh3d.triangles_py.html) | the fan triangles of the faces, (k, 3), and the face each belongs to |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/scene3d.py#L11">source</a></font>
{% endraw %}
