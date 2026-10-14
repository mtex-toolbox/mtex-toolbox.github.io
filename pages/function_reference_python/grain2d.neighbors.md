---
title: 'grain2d.neighbors'
sidebar: function_reference_sidebar
permalink: grain2d.neighbors_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.neighbors.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the pairs of ids of grains sharing a boundary, both in the selection, or either with
full; as a symmetric sparse matrix indexed by id with matrix; with other grains the pairs
of one of these and one of those; MATLAB's grain2d.neighbors

## Syntax

The pairs of neighbours among the grains:

```python
pairs = grains.neighbors()
```

A grain of g1 beside a grain of g2:

```python
pairs = g1.neighbors(g2)
```

Every neighbour, inside the selection or not:

```python
pairs = grains.neighbors(full=True)
```

The adjacency matrix:

```python
A = grains.neighbors(matrix=True)
```

A pair is listed once, the smaller id first; the rim of the map and a grain's own inner
boundary make no pair. With other grains the first column is the grain of these, the
second the one of those. The adjacency matrix is a symmetric boolean scipy.sparse matrix,
the row and column id - 1 for the grain id.

## Input

| | |
|---|---|
| `grains` | grain2d |

## Output

| | |
|---|---|
| `pairs` | the grain ids, (n, 2) |
| `A` | scipy.sparse.csr_matrix (matrix=True) |

## Keywords

| | default | |
|---|---|---|
| `full` | `False` | take the neighbours outside the selection as well; another grain2d in its place gives the pairs between the two sets |
| `matrix` | `False` | the result as the adjacency matrix |

## See also

[grain2d.numNeighbors](grain2d.numNeighbors_py.html), [grainBoundary.selectByGrainId](grainBoundary.selectByGrainId_py.html)

MATLAB's [grain2d.neighbors](grain2d.neighbors.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/grains.py#L270">source</a></font>
{% endraw %}
