---
title: 'calcLankford'
sidebar: function_reference_sidebar
permalink: calcLankford_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: calcLankford.html
status: Reference
---
{% raw %}
the Lankford coefficients, the R-values, of a sheet from its orientations or its ODF

## Syntax

R at 0, 5, ..., 90 degree to the rolling direction:

```python
R, M, minM = calcLankford(ori, sS)
```

Weighted orientations, chosen angles:

```python
R, M, minM = calcLankford(ori, sS, theta, weights=w)
```

From an ODF, a finer ratio:

```python
R, M, minM = calcLankford(odf, sS, rho=np.linspace(0, 1, 21))
```

The R-value is the ratio of the true width strain to the true thickness strain of a strip
pulled at the angle theta to the rolling direction. For every theta the strip is strained
along the pull and contracts by the fraction rho across it and 1 - rho through the
thickness; the Taylor model gives the normalised plastic work M of every rho, averaged over
the texture, and the strip takes the rho of least work, R = rho / (1 - rho).

The mean Rbar of R over the directions tells how well a sheet resists thinning, Rbar >= 1
favouring deep drawing; the planar anisotropy deltaR indicates the fourfold earing of a cup.

The angles theta may also be given as a positional array after sS, as MATLAB.

## Input

| | |
|---|---|
| `x` | orientation, the crystal orientations of the sheet, or SO3Fun, its ODF |
| `sS` | slipSystem, or a TaylorModel, the systems the crystals deform by |

## Output

| | |
|---|---|
| `R` | the Lankford coefficient at the least plastic work, one per theta |
| `M` | the normalised plastic work, an array of rho by theta |
| `minM` | the least normalised plastic work, one per theta |

## Keywords

| | default | |
|---|---|---|
| `theta` | `None` | the angles of the pull to the rolling direction in radians |
| `rho` | `None` | the fractions of the contraction across the strip, between 0 and 1 |
| `RD` | `None` | vector3d, the rolling direction, the pull at theta = 0 |
| `ND` | `None` | vector3d, the normal of the sheet, orthogonal to RD |
| `weights` | `None` | the weights of the orientations, the area of grains for instance |
| `bandwidth` | `16` | the harmonic bandwidth the Taylor factor and the ODF are expanded to (an ODF) |

## See also

[calcTaylor](velocityGradientTensor.calcTaylor_py.html), [TaylorModel](TaylorModel_index_py.html), [slipSystem](slipSystem_index_py.html), [Lankford](Lankford_py.html)

## Used on

[Lankford](Lankford_py.html)

MATLAB's [calcLankford](calcLankford.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/texture.py#L165">source</a></font>
{% endraw %}
