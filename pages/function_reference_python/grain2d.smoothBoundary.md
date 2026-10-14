---
title: 'grain2d.smoothBoundary'
sidebar: function_reference_sidebar
permalink: grain2d.smoothBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.smoothBoundary.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

turn the staircase of a measured boundary into a smooth curve. The simplification and the
refinement both take their length from the median segment of the boundary as it came out
of the segmentation, which is the pixel spacing; afterwards the median is the length of
the straightened runs and means something else. Both change how many segments there are,
and a simplified segment no longer runs between one pair of pixels, so switch them off
where ebsdId is read per segment. Smoothing happens in the plane of the map, where the
vertices already are. iter is the number of iterations or the boundaryFilter to apply, so
MATLAB's second output, the filter used, is the one passed or laplaceFilter(iter)

## Syntax

```python
grain2d.smoothBoundary(grains, iter=1, simplify=None, refine=None, moveTriplePoints=False, moveOuterBoundary=False)
```

```python
grains = smoothBoundary(grains)
grains = smoothBoundary(grains, 5, moveTriplePoints=True)
grains = smoothBoundary(grains, laplaceFilter(5), simplify=False)
```

MATLAB's [grain2d.smoothBoundary](grain2d.smoothBoundary.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/smoothing.py#L274">source</a></font>
{% endraw %}
