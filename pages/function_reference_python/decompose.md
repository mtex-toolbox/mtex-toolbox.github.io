---
title: 'decompose'
sidebar: function_reference_sidebar
permalink: decompose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the spatial decomposition of a map into one cell around every pixel, the cell complex
calcGrains builds the grains from; MATLAB's spatialDecomposition

## Syntax

<div class="mx-form" markdown="1">

```python
cells = decompose(ebsd)
```

The cells of the map.

</div>

<div class="mx-form" markdown="1">

```python
cells = decompose(ebsd, alpha=5)
```

Wider holes filled.

</div>

## Description

The cell of a pixel is its Voronoi cell among the lattice neighbours within reach, so a
cell of a square or hexagonal grid is its unit cell. The map must lie on a lattice; a map
without one is refused.

alpha decides what happens to regions of not indexed pixels. A region narrower than
2 alpha pixel spacings is filled, the cells of its indexed neighbours growing into it. A
wider one keeps its pixels as holes, which calcGrains makes a notIndexed grain.

The vertices that the cells of neighbouring pixels compute each for themselves are welded
into one when they lie within tol.

## Input

| `ebsd` | EBSD on a square or hexagonal lattice |

## Keywords

| keyword | default | description |
|---|---|---|
| `alpha` | `3.1` | the closing radius in pixel spacings: a not indexed region narrower than 2 alpha is filled and its neighbours grow in, a wider one is kept |
| `tol` | `None` | the distance within which two vertices are welded into one, by default a hundredth of the pixel spacing |
| `backend` | `None` | 'numba' or 'numpy', the loops of the clipping and the welding; by default the preference 'kernels' |

## Output

| `cells` | cellComplex: the vertices V, the vertex pair F and the site pair of every face, the sites with the pixel each stands for (site2pixel), and the lattice |

## See also

[calcGrains](EBSD.calcGrains_py.html), [EBSD.gridify](EBSD.gridify_py.html), [GrainReconstruction](GrainReconstruction_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/decomposition.py#L385">source</a></font>
{% endraw %}
