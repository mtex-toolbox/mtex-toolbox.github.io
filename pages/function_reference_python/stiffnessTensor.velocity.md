---
title: 'stiffnessTensor.velocity'
sidebar: function_reference_sidebar
permalink: stiffnessTensor.velocity_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor.velocity.html
status: Reference
---
{% raw %}
A method of [stiffnessTensor](stiffnessTensor_index_py.html).

the speeds of the three elastic plane waves in a direction and their polarisations, the
eigenvalues and eigenvectors of the Christoffel tensor

## Syntax

In the direction n, or at a list of them:

```python
vp, vs1, vs2, pp, ps1, ps2 = velocity(C, n)
```

With another density than the tensor's:

```python
vp, vs1, vs2, pp, ps1, ps2 = velocity(C, n, density=rho)
```

As functions on the sphere and axis fields:

```python
vp, vs1, vs2, pp, ps1, ps2 = velocity(C)
```

As harmonic expansions:

```python
vp, vs1, vs2, pp, ps1, ps2 = velocity(C, harmonic=True)
```

The Christoffel tensor of the direction n is C_ijkl n_j n_l; its eigenvalues divided by
the density are the squared speeds of the quasi longitudinal wave, vp, and of the two
shear waves, vs1 the faster, vs2 the slower, its eigenvectors the polarisations, the
directions in which the particles move. A stiffness in GPa and a density in g/cm^3 give
speeds in km/s. A compliance tensor is inverted first.

The result is a named tuple, so velocity(C, n).vp picks one entry. Without a direction
the speeds are functions on the sphere, evaluated where they are asked, and the
polarisations axis fields; with harmonic=True they are sampled once on a quadrature grid
and expanded. MATLAB's velocity(C, n, rho) passes the density third, which is taken too.

## Input

| | |
|---|---|
| `C` | stiffnessTensor in GPa, or complianceTensor |
| `n` | vector3d, the propagation directions |

## Output

| | |
|---|---|
| `vp, vs1, vs2` | the speeds of the p wave and of the faster and slower s wave in km/s; S2Fun without a direction |
| `pp, ps1, ps2` | vector3d, the polarisations of the three waves; S2AxisField without a direction |

## Keywords

| | default | |
|---|---|---|
| `density` | `None` | the density in g/cm^3; by default the density stored on the tensor, else 1 |
| `harmonic` | `False` | expand the functions of a call without a direction in spherical harmonics instead of evaluating them where they are asked |
| `bandwidth` | `48` | the harmonic degree of these expansions |

## See also

[energyVector](stiffnessTensor.energyVector_py.html), [ChristoffelTensor](ChristoffelTensor_index_py.html), [plotSeismicVelocities](stiffnessTensor.plotSeismicVelocities_py.html), [WaveVelocities](WaveVelocities_py.html)

MATLAB's [stiffnessTensor.velocity](stiffnessTensor.velocity.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L99">source</a></font>
{% endraw %}
