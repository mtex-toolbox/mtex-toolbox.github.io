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

the elastic wave velocities and their polarisations from the Christoffel tensor

## Syntax

```python
stiffnessTensor.velocity(C, n=None, *args, density=None, harmonic=False, bandwidth=48)
```

```python
vp, vs1, vs2, pp, ps1, ps2 = velocity(C, n, density=rho)   in the direction n, or at a list of them
vp, vs1, vs2, pp, ps1, ps2 = velocity(C, density=rho)      as functions on the sphere and axis fields
vp, vs1, vs2, pp, ps1, ps2 = velocity(C, 'harmonic')       as harmonic expansions of bandwidth 48
```

A stiffness in GPa and a density in g/cm^3 give velocities in km/s; the density stored
on the tensor is used when none is given, and MATLAB's velocity(C, n, rho) passes it
third.

MATLAB's [stiffnessTensor.velocity](stiffnessTensor.velocity.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L99">source</a></font>
{% endraw %}
