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

The longest, norm(cV) its length:

```python
cV = grains.caliper()
```

Or 'longest', 'shortestPerp':

```python
cV = grains.caliper('shortest')
```

The width across a direction:

```python
c = grains.caliper(vector3d.X)
```

The widths across angles to the x axis:

```python
c = caliper(grains, [0, 30*degree])
```

## Signature

```python
grain2d.caliper(self, arg=None)
```

## Used on

[ProjectionBasedParameters](ProjectionBasedParameters_py.html)

MATLAB's [grain2d.caliper](grain2d.caliper.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L229">source</a></font>
{% endraw %}
