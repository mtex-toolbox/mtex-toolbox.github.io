---
title: 'complianceTensor.shearModulus'
sidebar: function_reference_sidebar
permalink: complianceTensor.shearModulus_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: complianceTensor.shearModulus.html
status: Reference
---
{% raw %}
A method of [complianceTensor](complianceTensor_index_py.html).

the shear modulus of the plane h and the shear direction u, 1 / (4 S_ijkl h_i u_j h_k u_l);
MATLAB's shearModulus

## Syntax

<div class="mx-form" markdown="1">

```python
G = shearModulus(C, h, u)
```

Of the plane h along u.

</div>

<div class="mx-form" markdown="1">

```python
G = shearModulus(C, h)
```

The function of the shear direction.

</div>

<div class="mx-form" markdown="1">

```python
G = shearModulus(C, None, u)
```

The function of the shear plane.

</div>

<div class="mx-form" markdown="1">

```python
G = shearModulus(C)
```

The Voigt bound of an isotropic polycrystal.

</div>

<div class="mx-form" markdown="1">

```python
G = shearModulus(C, 'Reuss')
```

The Reuss bound, 'Hill' the mean of the two.

</div>

<div class="mx-form" markdown="1">

```python
GV, GR, GH = shearModulus(C, 'all') # all three
```

</div>

## Description

With the plane and the direction the anisotropic modulus of the single crystal; with the
plane alone the function on the sphere of the shear direction, with the direction alone
the function of the shear plane. Without both, or with a bound's name in place of the
plane, the isotropic shear modulus of a polycrystal of uniformly distributed orientations:
the Voigt upper bound, the Reuss lower bound or their mean, Hill's; 'all' returns the
three as a named tuple (voigt, reuss, hill), MATLAB's three outputs.

## Input

| `C` | stiffnessTensor or complianceTensor, a stiffness tensor is inverted first |
| `h` | vector3d or Miller, the shear plane; or 'Voigt', 'Reuss', 'Hill', 'all' |
| `u` | vector3d or Miller, the shear direction |

## Output

| `G` | the shear modulus, an S2Fun of the direction or the plane, or the bounds |

## See also

[YoungsModulus](complianceTensor.YoungsModulus_py.html), [PoissonRatio](complianceTensor.PoissonRatio_py.html), [bulkModulus](complianceTensor.bulkModulus_py.html), [isotropicShearModulus](isotropicShearModulus_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
complianceTensor.shearModulus(T, h=None, u=None, *args)
```

</div>

MATLAB's [complianceTensor.shearModulus](complianceTensor.shearModulus.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L289">source</a></font>
{% endraw %}
