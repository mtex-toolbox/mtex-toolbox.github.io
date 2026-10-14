---
title: 'The class pairShifts'
sidebar: function_reference_sidebar
permalink: pairShifts_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the shifts one cross correlation pass measured between two images

```python
ps = pairShifts(pos, u, peak, roiSize)    the tile centres, their shifts, peaks and width
v = ps.meanShift(px)                      [mean length, mean x, mean y] in pixels of size px
```

## Members

| | |
|---|---|
| [isempty](pairShifts.isempty_py.html) | whether no shift was measured |
| [meanShift](pairShifts.meanShift_py.html) | the mean shift in pixels of size px over the tiles measured, [mean length, mean x, mean y] |
| [pairShifts](pairShifts.pairShifts_py.html) | the shifts one cross correlation pass measured between two images |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/registration.py#L222">source</a></font>
{% endraw %}
