---
title: 'HEALPixS2Grid'
sidebar: function_reference_sidebar
permalink: HEALPixS2Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: HEALPixS2Grid.html
status: Reference
---
{% raw %}
the HEALPix nodes of the sphere as a list of directions; MATLAB's HEALPixS2Grid

## Syntax

<div class="mx-form" markdown="1">

```python
S2G = HEALPixS2Grid(resolution=5*degree)
```

Nside the power of two nearest to 1/resolution.

</div>

<div class="mx-form" markdown="1">

```python
S2G = HEALPixS2Grid(nside=8)
```

12 nside^2 nodes.

</div>

## Description

The nodes are the centres of the hierarchical equal area iso-latitude pixels of Gorski et
al. 2005, in the ring scheme: 12 nside^2 of them, nside a power of two. Without either keyword
the resolution is 2.5 degree, nside 32. The result is a plain vector3d, not a grid with a
search of its own.

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `None` | the resolution, nside = 2^round(log2(1/resolution)) |
| `nside` | `None` | the number of divisions of a base pixel's side, instead of the resolution |

## Output

| `S2G` | vector3d, 12 nside^2 directions |

## See also

[equispacedS2Grid](equispacedS2Grid_py.html), [fibonacciS2Grid](fibonacciS2Grid_index_py.html), [regularS2Grid](regularS2Grid_py.html)

## Used on

[VectorGrids](VectorGrids_py.html)

MATLAB's [HEALPixS2Grid](HEALPixS2Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/healpix.py#L12">source</a></font>
{% endraw %}
