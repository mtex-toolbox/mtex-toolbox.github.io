---
title: 'stiffnessTensor.energyVector'
sidebar: function_reference_sidebar
permalink: stiffnessTensor.energyVector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor.energyVector.html
status: Reference
---
{% raw %}
A method of [stiffnessTensor](stiffnessTensor_index_py.html).

the energy velocity of a lossless elastic plane wave, the vector C_ijkl p_j n_k p_l / (rho v)

## Syntax

<div class="mx-form" markdown="1">

```python
vp, vs1, vs2, pp, ps1, ps2 = velocity(C, n)
```

</div>

<div class="mx-form" markdown="1">

```python
E = energyVector(C, n, vp, pp)
```

The energy velocity of the p wave in the direction n.

</div>

<div class="mx-form" markdown="1">

```python
E = energyVector(C, n, vs1, ps1, density=rho)
```

Of the faster s wave, with another density.

</div>

<div class="mx-form" markdown="1">

```python
vp, vs1, vs2, pp, ps1, ps2 = velocity(C)
```

</div>

<div class="mx-form" markdown="1">

```python
E = energyVector(C, None, vp, pp)
```

As a vector field on the sphere.

</div>

## Description

The energy velocity of a medium without attenuation is the velocity at which a plane wave
carries its energy, a good proxy for the group velocity: Ve_i = C_ijkl p_j n_k p_l / (rho
v), with n the propagation direction, v the phase speed and p the polarisation of one of
the three waves velocity returns. Its projection onto n is the phase speed, so its length
is at least v. With a speed function and a polarisation field and no direction the
result is a vector field on the sphere.

## Input

| `C` | stiffnessTensor in GPa |
| `n` | vector3d, the propagation directions, or None for the vector field |
| `speed` | the phase speed of the wave in km/s, vp, vs1 or vs2 of velocity, an S2Fun for the vector field |
| `polarization` | vector3d, the polarisation of the wave, pp, ps1 or ps2 of velocity, an S2AxisField for the vector field |

## Keywords

| keyword | default | description |
|---|---|---|
| `density` | `None` | the density in g/cm^3; by default the density stored on the tensor |

## Output

| `E` | vector3d, the energy velocity in km/s; S2VectorField without a direction |

## References

- F. I. Fedorov, Theory of Elastic Waves in Crystals, Plenum Press, New York (1968)

## See also

[velocity](complianceTensor.velocity_py.html), [ChristoffelTensor](ChristoffelTensor_index_py.html), [WaveVelocities](WaveVelocities_py.html)

MATLAB's [stiffnessTensor.energyVector](stiffnessTensor.energyVector.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L181">source</a></font>
{% endraw %}
