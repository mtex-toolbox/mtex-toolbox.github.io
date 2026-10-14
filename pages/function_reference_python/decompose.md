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

The cells of the map:

```python
cells = decompose(ebsd)
```

Wider holes filled:

```python
cells = decompose(ebsd, alpha=5)
```

The cell of a pixel is its Voronoi cell, clipped against the lattice neighbours within
reach, so a cell of a square or hexagonal grid is its unit cell. A not indexed region
narrower than 2 alpha pixel spacings is filled, the cells of its indexed neighbours growing
into it; a wider one keeps its pixels as holes, which calcGrains makes a notIndexed grain.
The vertices that the cells of neighbouring pixels compute each for themselves are welded
within tol. The map must lie on a lattice; a map without one is refused.

## Input

| | |
|---|---|
| `ebsd` | EBSD on a square or hexagonal lattice |

## Output

| | |
|---|---|
| `cells` | cellComplex: the vertices V, the vertex pair F and the site pair of every face, the sites with the pixel each stands for (site2pixel), and the lattice |

## Keywords

| | default | |
|---|---|---|
| `alpha` | `3.1` | the closing radius in pixel spacings: a not indexed region narrower than 2 alpha is filled and its neighbours grow in, a wider one is kept |
| `tol` | `None` | the distance within which two vertices are welded into one, by default a hundredth of the pixel spacing |
| `backend` | `None` | 'numba' or 'numpy', the loops of the clipping and the welding; by default the preference 'kernels' |

## See also

[calcGrains](EBSD.calcGrains_py.html), [EBSD.gridify](EBSD.gridify_py.html), [GrainReconstruction](GrainReconstruction_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/decomposition.py#L366">source</a></font>
{% endraw %}
