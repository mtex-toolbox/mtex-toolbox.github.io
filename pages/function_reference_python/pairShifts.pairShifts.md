---
title: 'pairShifts.pairShifts'
sidebar: function_reference_sidebar
permalink: pairShifts.pairShifts_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: pairShifts.pairShifts.html
status: Reference
---
{% raw %}
the shifts one cross correlation pass measured between two images

## Syntax

```python
pairShifts(pos=None, u=None, peak=None, roiSize=None)
```

```python
ps = pairShifts(pos, u, peak, roiSize)    the tile centres, their shifts, peaks and width
v = ps.meanShift(px)                      [mean length, mean x, mean y] in pixels of size px
```

MATLAB's [pairShifts.pairShifts](pairShifts.pairShifts.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/registration.py#L222">source</a></font>
{% endraw %}
