---
title: 'PoleFigure.mean'
sidebar: function_reference_sidebar
permalink: PoleFigure.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.mean.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the mean intensity of each pole figure, the integral over the sphere; MATLAB's mean

## Syntax

By the quadrature weights of the directions:

```python
m = mean(pf)
```

By weights of one's own, one array per pole figure:

```python
m = pf.mean(weights=w)
```

The intensities are summed with the weights calcQuadratureWeights gives the directions of
each pole figure, which sum to one: the exact weights of a regular grid, the Voronoi areas
of scattered directions.

## Input

| | |
|---|---|
| `pf` | PoleFigure |

## Output

| | |
|---|---|
| `m` | ndarray, one number per pole figure |

## Keywords

| | default | |
|---|---|---|
| `weights` | `None` | a list of weights, one array per pole figure of the shape of its intensities, instead of the quadrature weights |

## See also

[calcQuadratureWeights](vector3d.calcQuadratureWeights_py.html), [PoleFigure.normalize](PoleFigure.normalize_py.html)

MATLAB's [PoleFigure.mean](PoleFigure.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L361">source</a></font>
{% endraw %}
