---
title: 'quiverMap'
sidebar: function_reference_sidebar
permalink: quiverMap_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
quiver(grains, v), quiver(ebsd, v), quiver(gB, v): an arrow per grain at its centroid,
per measurement, per segment at its midpoint; an axis is centred, a direction starts there.
By default an arrow is a fifth of the grain's diameter, one and a half spacings of a map,
three median segment lengths of a boundary; scale draws it scale times its in-plane length.

## Syntax

```python
quiverMap(x, v, scale=None, color=None, lineWidth=None, scaling=True, displayName=None, autoScaleFactor=None, projectIntoPlane=False, antipodal=False, **kw)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L797">source</a></font>
{% endraw %}
