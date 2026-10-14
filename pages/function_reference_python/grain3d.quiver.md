---
title: 'grain3d.quiver'
sidebar: function_reference_sidebar
permalink: grain3d.quiver_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d.quiver.html
status: Reference
---
{% raw %}
A method of [grain3d](grain3d_index_py.html).

quiver(grains, dir), quiver(gB, dir): arrows at the centroids of 3D grains or of their
boundary faces, as MATLAB's; a grain's arrow as long as the direction, a face's a fifth of
the face's diameter, both times autoScaleFactor

## Syntax

```python
grain3d.quiver(x, d, color=(0.0, 0.0, 1.0), autoScaleFactor=1.0, scaling=True, lineWidth=1.0, antipodal=None, how2plot=None, figSize=None, **kw)
```

MATLAB's [grain3d.quiver](grain3d.quiver.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L83">source</a></font>
{% endraw %}
