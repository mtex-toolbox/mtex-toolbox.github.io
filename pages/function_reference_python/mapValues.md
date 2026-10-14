---
title: 'mapValues'
sidebar: function_reference_sidebar
permalink: mapValues_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the colour of every measurement or grain, and whether it is a scalar to be mapped:
the phase palette, an orientation list through the inverse pole figure key of its
phase, an orientation colour key, the name of a property, one value or one colour per
element, or one colour for all
the value or the colour of every element, or of the elements `at` alone: a picture shows
fewer measurements than a large map holds, and the colour of one it never shows is work
thrown away. A route that yields numbers ignores `at` and stays whole, since the colour
range is the map's and not the picture's; a route that yields colours returns one per
entry of `at`.

## Syntax

```python
mapValues(x, color, faceColor=None, ipfDirection=None, at=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L232">source</a></font>
{% endraw %}
