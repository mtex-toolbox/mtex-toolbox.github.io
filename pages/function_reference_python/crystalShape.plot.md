---
title: 'crystalShape.plot'
sidebar: function_reference_sidebar
permalink: crystalShape.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalShape.plot.html
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

plot(cS), plot(cS, faceColor='red', faceAlpha=0.5), plot(cS, colored=True), plot(cS, colored=key),
plot(x, y, cS), plot(x, y, z, cS), plot(xy, cS), plot(cS, N), plot(cS, sS)

## Syntax

```python
crystalShape.plot(*args, faceColor=None, faceAlpha=None, edgeColor='k', lineWidth=0.8, colored=None, colormap='viridis', displayName=None, **kw)
```

A crystal shape as the polygons of its faces in a 3D axes, or seen along the normal of a
held map; colored gives every form its own colour with a legend, or the colours of the
direction key of the normals. With a plane normal the section through the centre, with
a slip system its plane and its direction inside the shape.

MATLAB's [crystalShape.plot](crystalShape.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/shapeplot.py#L171">source</a></font>
{% endraw %}
