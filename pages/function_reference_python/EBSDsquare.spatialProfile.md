---
title: 'EBSDsquare.spatialProfile'
sidebar: function_reference_sidebar
permalink: EBSDsquare.spatialProfile_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSDsquare.spatialProfile.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the measurements along a polyline, in the order they are met, and the distance along the
line of each of them, as MATLAB's pair; a pixel belongs to the line when it lies within
radius of it, half a step by default. The line is an (N, 2) array of x and y, or x and y
as two lists

## Syntax

```python
EBSD.spatialProfile(ebsd, lineXY, y=None, radius=None)
```

MATLAB's [EBSDsquare.spatialProfile](EBSDsquare.spatialProfile.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L430">source</a></font>
{% endraw %}
