---
title: 'kdeN'
sidebar: function_reference_sidebar
permalink: kdeN_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the adaptive kernel density estimate of samples in several dimensions, the regularised EM
mixture of Botev et al.; MATLAB's kdeN

## Syntax

Ceil(sqrt(n)) Gaussians:

```python
pdf, bw = kdeN(X, grid)
```

More Gaussians, reproducible:

```python
pdf, bw = kdeN(X, grid, gam=50, rng=np.random.default_rng(1))
```

A mixture of gam Gaussians is fitted by the regularised EM iteration to the data scaled to
their bounding box widened by a tenth on every side, and evaluated at the rows of grid. The
start is random: rng makes it reproducible. Rows with a NaN are dropped. MATLAB returns the
2d grid it builds when none is given; here the grid is required and the bandwidth is
returned instead. calcDensity of a matrix of samples calls it on a regular grid.

## Input

| | |
|---|---|
| `X` | ndarray of shape (n, d), one sample per row |
| `grid` | ndarray of shape (m, d), the points to evaluate at |

## Output

| | |
|---|---|
| `pdf` | the density at the rows of grid |
| `bw` | the bandwidth per dimension |

## Keywords

| | default | |
|---|---|---|
| `gam` | `None` | the number of Gaussians, below n; larger may be more accurate and is slower |
| `rng` | `None` | the numpy random generator of the start |

## References

- Z. I. Botev, J. F. Grotowski, D. P. Kroese, Kernel density estimation via diffusion, Annals of Statistics 38 (2010) 2916-2957

## See also

[calcDensity](calcDensity_py.html), calcDensityReal, [kde1d](kde1d_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kde.py#L229">source</a></font>
{% endraw %}
