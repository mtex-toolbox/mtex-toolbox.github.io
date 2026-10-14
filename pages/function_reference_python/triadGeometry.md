---
title: 'triadGeometry'
sidebar: function_reference_sidebar
permalink: triadGeometry_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the reference frame indicator MTEX draws in the scale bar box, with the text height t as
its unit: an arrow per axis that has a direction on screen, shortened by its tilt out of
the plane, a circle for an axis leaving the plane with its label inside, crossed by four
spokes when it points away from the viewer, and a label beside every arrow. Returns the
arrows as polygons, the symbol as a polyline with NaN breaks, the labels with their
positions, and the bounding box (umin, umax, vmin, vmax)

## Syntax

```python
triadGeometry(screen, labels, t=1.0)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L352">source</a></font>
{% endraw %}
