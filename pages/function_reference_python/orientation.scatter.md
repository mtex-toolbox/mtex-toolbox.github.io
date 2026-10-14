---
title: 'orientation.scatter'
sidebar: function_reference_sidebar
permalink: orientation.scatter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.scatter.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

scatter(ori), plot3d(ori), scatter(ori, 'Rodrigues'), scatter(ori, 'Euler'), scatter(ori, data, 'axisAngle'),
scatter(ori, all=True)

## Syntax

```python
orientation.scatter(o, *args, axisAngle=False, Rodrigues=False, Euler=False, region=True, fundamentalRegion=True, ignoreFundamentalRegion=False, complete=False, points=None, markerSize=5, color=(0.0, 0.447, 0.741), colormap='viridis', colorRange=None, colorbar=False, all=False, **kw)
```

Orientations as points in axis angle space, in Rodrigues space or in Euler angle space,
brought into the fundamental region unless ignoreFundamentalRegion, with the boundary of
the region behind them in axis angle space unless region=False; the space named by a
positional string as MATLAB names it, 'Bunge' being 'Euler'. A bare rotation has no
region: the whole Euler box, the ball of axis angle space.

MATLAB's [orientation.scatter](orientation.scatter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spaceplot.py#L534">source</a></font>
{% endraw %}
