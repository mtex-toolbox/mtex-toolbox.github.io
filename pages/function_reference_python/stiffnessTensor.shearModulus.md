---
title: 'stiffnessTensor.shearModulus'
sidebar: function_reference_sidebar
permalink: stiffnessTensor.shearModulus_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor.shearModulus.html
status: Reference
---
{% raw %}
A method of [stiffnessTensor](stiffnessTensor_index_py.html).

the shear modulus of the plane h and the shear direction u, 1 / (4 S_ijkl h_i u_j h_k u_l);
MATLAB's shearModulus

## Syntax

Of the plane h along u:

```python
G = shearModulus(C, h, u)
```

The function of the shear direction:

```python
G = shearModulus(C, h)
```

The Voigt bound of an isotropic polycrystal:

```python
G = shearModulus(C)
```

The Reuss bound, 'Hill' the mean of the two:

```python
G = shearModulus(C, 'Reuss')
```

```python
GV, GR, GH = shearModulus(C, 'all') # all three
```

With the plane and the direction the anisotropic modulus of the single crystal; with the
plane alone the function on the sphere of the shear direction. Without both, or with a
bound's name in place of the plane, the isotropic shear modulus of a polycrystal of
uniformly distributed orientations: the Voigt upper bound, the Reuss lower bound or their
mean, Hill's; 'all' returns the three as a named tuple (voigt, reuss, hill), MATLAB's
three outputs. MATLAB's shearModulus(C, [], u), the function of the plane, has no
counterpart.

## Input

| | |
|---|---|
| `C` | stiffnessTensor or complianceTensor, a stiffness tensor is inverted first |
| `h` | vector3d or Miller, the shear plane; or 'Voigt', 'Reuss', 'Hill', 'all' |
| `u` | vector3d or Miller, the shear direction |

## Output

| | |
|---|---|
| `G` | the shear modulus, an S2Fun of the direction, or the bounds |

## See also

[YoungsModulus](complianceTensor.YoungsModulus_py.html), [PoissonRatio](complianceTensor.PoissonRatio_py.html), [bulkModulus](complianceTensor.bulkModulus_py.html), [isotropicShearModulus](isotropicShearModulus_py.html)

## Signature

```python
stiffnessTensor.shearModulus(T, h=None, u=None, *args)
```

MATLAB's [stiffnessTensor.shearModulus](stiffnessTensor.shearModulus.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L283">source</a></font>
{% endraw %}
