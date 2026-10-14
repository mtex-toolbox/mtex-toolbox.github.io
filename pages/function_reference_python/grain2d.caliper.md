---
title: 'grain2d.caliper'
sidebar: function_reference_sidebar
permalink: grain2d.caliper_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.caliper.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the caliper: with nothing, the longest width of every outline as a framed axis of that
length; with 'shortest', the narrowest one, with 'shortestPerp' the width measured across
the direction perpendicular to it, which is the direction an outline with flat faces is
aligned along, with 'longest' the first again; with a direction or an angle to the x axis
of the map, the width across it; a list of them gives a width per outline and direction

## Syntax

```python
grain2d.caliper(self, arg=None)
```

```python
cV = grains.caliper()                  # the longest, norm(cV) its length
cV = grains.caliper('shortest')        # or 'longest', 'shortestPerp'
c = grains.caliper(vector3d.X)         # the width across a direction
c = caliper(grains, [0, 30*degree])    # the widths across angles to the x axis
```

## Used on

[ProjectionBasedParameters](ProjectionBasedParameters_py.html)

MATLAB's [grain2d.caliper](grain2d.caliper.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L229">source</a></font>
{% endraw %}
