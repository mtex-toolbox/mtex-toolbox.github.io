---
title: 'SO3Grid.SO3Grid'
sidebar: function_reference_sidebar
permalink: SO3Grid.SO3Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Grid.SO3Grid.html
status: Reference
---
{% raw %}
the equispaced grid of orientations over one fundamental region of its frame pair, MATLAB's
SO3Grid: an S2 grid of the images of z with a ladder of gamma per node, so a search costs
three binary searches; built by equispacedSO3Grid, and anything derived from it is a plain
orientation list

## Syntax

```python
SO3Grid(rot, frameA, frameB, alphabeta, alpha, beta, gammaPoints, offset, gammaMin, gammaPeriod, resolution, center=None)
```

```python
S3G = equispacedSO3Grid(cs, ss, resolution=5*degree)
```

MATLAB's [SO3Grid.SO3Grid](SO3Grid.SO3Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/so3grid.py#L32">source</a></font>
{% endraw %}
