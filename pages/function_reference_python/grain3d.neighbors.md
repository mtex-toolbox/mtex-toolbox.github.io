---
title: 'grain3d.neighbors'
sidebar: function_reference_sidebar
permalink: grain3d.neighbors_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d.neighbors.html
status: Reference
---
{% raw %}
A method of [grain3d](grain3d_index_py.html).

the ids of neighbouring grains; MATLAB's neighbors of grain3d

## Syntax

<div class="mx-form" markdown="1">

```python
pairs = grains.neighbors()
```

The pairs within the set.

</div>

<div class="mx-form" markdown="1">

```python
pairs = grains.neighbors(full=True)
```

Every pair of the boundary.

</div>

## Description

Two grains are neighbours when they share a boundary face. A pair is sorted, the smaller
id first, and listed once; the outside of the volume is no neighbour. MATLAB's flag
'matrix', the adjacency matrix, has no counterpart here.

## Input

| `grains` | grain3d |

## Keywords

| keyword | default | description |
|---|---|---|
| `full` | `False` | every pair of grains sharing a face of the boundary, also those with a grain outside the set |

## Output

| `pairs` | (n, 2) array of grain ids |

## See also

[grain3d.numNeighbors](grain3d.numNeighbors_py.html), [grain2d.neighbors](grain2d.neighbors_py.html)

MATLAB's [grain3d.neighbors](grain3d.neighbors.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3d.py#L404">source</a></font>
{% endraw %}
