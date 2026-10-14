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

<div class="mx-form" markdown="1">

```python
nu = PoissonRatio(C, x, y)
```

Of the tension along x, the contraction along y.

</div>

<div class="mx-form" markdown="1">

```python
nu = PoissonRatio(C, x)
```

The function of the transverse direction.

</div>

<div class="mx-form" markdown="1">

```python
nu = PoissonRatio(C)
```

The isotropic ratio.

</div>

## Description

Without directions the ratio of an isotropic polycrystal, (3K - 2G) / (2 (3K + G)) from
the Voigt bounds of the bulk and the shear modulus. MATLAB's PoissonRatio(S, [], y), the
function of the tension direction, has no counterpart: without x the isotropic ratio is
returned.

## Input

| `C` | stiffnessTensor or complianceTensor, a stiffness tensor is inverted first |
| `x` | vector3d or Miller, the tension direction |
| `y` | vector3d or Miller, the transverse direction, perpendicular to x |

## Output

| `nu` | the Poisson ratio, or an S2Fun of the transverse direction |

## See also

[YoungsModulus](complianceTensor.YoungsModulus_py.html), [shearModulus](complianceTensor.shearModulus_py.html), [bulkModulus](complianceTensor.bulkModulus_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
complianceTensor.PoissonRatio(T, x=None, y=None)
```

</div>

MATLAB's [complianceTensor.PoissonRatio](complianceTensor.PoissonRatio.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L323">source</a></font>
{% endraw %}
