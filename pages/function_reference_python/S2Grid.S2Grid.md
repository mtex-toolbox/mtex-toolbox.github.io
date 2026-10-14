---
title: 'S2Grid.S2Grid'
sidebar: function_reference_sidebar
permalink: S2Grid.S2Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Grid.S2Grid.html
status: Reference
---
{% raw %}
a grid on the sphere with ring structure, a ladder of polar angles theta and one azimuth grid
per ring, whose nearest and radius searches use that structure; built by equispacedS2Grid,
regularS2Grid and plotS2Grid, and whatever breaks the rings returns a plain vector3d

## Syntax

```python
S2Grid(theta, rho, frame=None, resolution=nan, antipodal=False)
```

MATLAB's [S2Grid.S2Grid](S2Grid.S2Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s2grid.py#L19">source</a></font>
{% endraw %}
