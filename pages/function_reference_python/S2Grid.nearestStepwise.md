---
title: 'S2Grid.nearestStepwise'
sidebar: function_reference_sidebar
permalink: S2Grid.nearestStepwise_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S2Grid](S2Grid_index_py.html).

the nearest point without a search, for equispaced ladders: the ring is the polar angle
over the ring step and the point the azimuth over that ring's step, both rounded
the nearest node of a grid with uniform steps, arithmetic on every direction at once: the
ring from the polar angle, the node on the ring from the azimuth against the ring's own
first node, step and count

## Syntax

```python
S2Grid.nearestStepwise(self, v)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s2grid.py#L145">source</a></font>
{% endraw %}
