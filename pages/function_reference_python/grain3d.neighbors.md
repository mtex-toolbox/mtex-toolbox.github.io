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

The pairs within the set:

```python
pairs = grains.neighbors()
```

Every pair of the boundary:

```python
pairs = grains.neighbors(full=True)
```

Two grains are neighbours when they share a boundary face. A pair is sorted, the smaller
id first, and listed once; the outside of the volume is no neighbour. MATLAB's flag
'matrix', the adjacency matrix, has no counterpart here.

## Input

| | |
|---|---|
| `grains` | grain3d |

## Output

| | |
|---|---|
| `pairs` | (n, 2) array of grain ids |

## Keywords

| | default | |
|---|---|---|
| `full` | `False` | every pair of grains sharing a face of the boundary, also those with a grain outside the set |

## See also

[grain3d.numNeighbors](grain3d.numNeighbors_py.html), [grain2d.neighbors](grain2d.neighbors_py.html)

MATLAB's [grain3d.neighbors](grain3d.neighbors.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3d.py#L379">source</a></font>
{% endraw %}
