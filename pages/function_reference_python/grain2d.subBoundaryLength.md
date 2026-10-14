---
title: 'grain2d.subBoundaryLength'
sidebar: function_reference_sidebar
permalink: grain2d.subBoundaryLength_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.subBoundaryLength.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the length of the subgrain boundaries inside every grain, of the inner boundary segments sel
selects if given; MATLAB's grain2d.subBoundaryLength

## Syntax

Every inner segment:

```python
L = grains.subBoundaryLength()
```

The segments selected:

```python
L = grains.subBoundaryLength(grains.innerBoundary.segLength > 40)
```

## Input

| | |
|---|---|
| `grains` | grain2d |

## Output

| | |
|---|---|
| `L` | the length of the inner boundary per grain, in the units of the map |

## Keywords

| | default | |
|---|---|---|
| `sel` | `None` | a mask or the indices of the inner boundary segments summed, all when not given |

## See also

[grain2d.subBoundarySize](grain2d.subBoundarySize_py.html), [grain2d.neighbors](grain2d.neighbors_py.html)

## Used on

[SubGrainBoundaries](SubGrainBoundaries_py.html)

MATLAB's [grain2d.subBoundaryLength](grain2d.subBoundaryLength.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/grains.py#L358">source</a></font>
{% endraw %}
