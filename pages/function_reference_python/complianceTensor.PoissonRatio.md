---
title: 'complianceTensor.PoissonRatio'
sidebar: function_reference_sidebar
permalink: complianceTensor.PoissonRatio_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: complianceTensor.PoissonRatio.html
status: Reference
---
{% raw %}
A method of [complianceTensor](complianceTensor_index_py.html).

the Poisson ratio of the tension direction x and the transverse direction y, minus the
transverse over the longitudinal strain, -S_ijkl x_i x_j y_k y_l / S_mnop x_m x_n x_o x_p;
MATLAB's PoissonRatio

## Syntax

Of the tension along x, the contraction along y:

```python
nu = PoissonRatio(C, x, y)
```

The function of the transverse direction:

```python
nu = PoissonRatio(C, x)
```

The isotropic ratio:

```python
nu = PoissonRatio(C)
```

Without directions the ratio of an isotropic polycrystal, (3K - 2G) / (2 (3K + G)) from
the Voigt bounds of the bulk and the shear modulus. MATLAB's PoissonRatio(S, [], y), the
function of the tension direction, has no counterpart: without x the isotropic ratio is
returned.

## Input

| | |
|---|---|
| `C` | stiffnessTensor or complianceTensor, a stiffness tensor is inverted first |
| `x` | vector3d or Miller, the tension direction |
| `y` | vector3d or Miller, the transverse direction, perpendicular to x |

## Output

| | |
|---|---|
| `nu` | the Poisson ratio, or an S2Fun of the transverse direction |

## See also

[YoungsModulus](complianceTensor.YoungsModulus_py.html), [shearModulus](complianceTensor.shearModulus_py.html), [bulkModulus](complianceTensor.bulkModulus_py.html)

## Signature

```python
complianceTensor.PoissonRatio(T, x=None, y=None)
```

MATLAB's [complianceTensor.PoissonRatio](complianceTensor.PoissonRatio.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L319">source</a></font>
{% endraw %}
