---
title: 'grain2d.subBoundarySize'
sidebar: function_reference_sidebar
permalink: grain2d.subBoundarySize_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.subBoundarySize.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the inner boundary of every grain: how many segments of the subgrain boundaries lie in
it; MATLAB's grain2d.subBoundarySize

## Syntax

Every inner segment:

```python
n = grains.subBoundarySize()
```

The segments selected:

```python
n = grains.subBoundarySize(grains.innerBoundary.segLength > 40)
```

## Input

| | |
|---|---|
| `grains` | grain2d |

## Output

| | |
|---|---|
| `n` | the number of inner boundary segments per grain |

## Keywords

| | default | |
|---|---|---|
| `sel` | `None` | a mask or the indices of the inner boundary segments counted, all when not given |

## See also

[grain2d.subBoundaryLength](grain2d.subBoundaryLength_py.html), [grain2d.neighbors](grain2d.neighbors_py.html)

## Used on

[SubGrainBoundaries](SubGrainBoundaries_py.html)

MATLAB's [grain2d.subBoundarySize](grain2d.subBoundarySize.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/grains.py#L338">source</a></font>
{% endraw %}
