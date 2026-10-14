---
title: 'mustKeep'
sidebar: function_reference_sidebar
permalink: mustKeep_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the heads a coarsening may not dissolve: the end of an open chain is a junction and stays
where it is, a vertex where the pair of grains changes is a corner of both grain polygons
even where only two segments meet there, and a protected vertex is one another boundary
over the same vertices still walks over

## Syntax

The junctions and the corners:

```python
keep = mustKeep(gB)
```

And the vertices the inner boundary uses:

```python
keep = mustKeep(gB, protect=grains.sharedVertices())
```

A row is the head of a segment, its vertex gB.F[:, 1]; reduce and simplify keep the rows
marked and may dissolve the others.

## Input

| | |
|---|---|
| `gB` | grainBoundary |

## Output

| | |
|---|---|
| `keep` | a boolean per segment, whether its head must stay |

## Keywords

| | default | |
|---|---|---|
| `protect` | `None` | the ids of vertices that must stay as well |

## See also

[grainBoundary.reduce](grainBoundary.reduce_py.html), [grainBoundary.simplify](grainBoundary.simplify_py.html), [grain2d.sharedVertices](grain2d.sharedVertices_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundaryresampling.py#L30">source</a></font>
{% endraw %}
