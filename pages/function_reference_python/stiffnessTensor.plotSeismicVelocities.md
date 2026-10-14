---
title: 'stiffnessTensor.plotSeismicVelocities'
sidebar: function_reference_sidebar
permalink: stiffnessTensor.plotSeismicVelocities_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor.plotSeismicVelocities.html
status: Reference
---
{% raw %}
A method of [stiffnessTensor](stiffnessTensor_index_py.html).

the overview of the seismic wave velocities of a stiffness tensor, six pole figures;
MATLAB's stiffnessTensor/plotSeismicVelocities

## Syntax

<div class="mx-form" markdown="1">

```python
plotSeismicVelocities(C)
```

The overview, upper hemisphere.

</div>

<div class="mx-form" markdown="1">

```python
plotSeismicVelocities(C, lower=True, symmetriseMinMax=True)
```

Lower, extrema with their equivalents.

</div>

<div class="mx-form" markdown="1">

```python
plotSeismicVelocities(C, density=3.355)
```

With a density not stored on C.

</div>

## Description

Six charts in two rows: Vp, the S-wave anisotropy 200 (Vs1 - Vs2) / (Vs1 + Vs2), Vs1 with
the polarisation of the fast S-wave, Vs2 with that of the slow one, Vp/Vs1 and Vp/Vs2,
each with its maximum as a black square and its minimum as a white circle, the
anisotropy in percent under it, red slow to blue fast as seismology colours it. The
velocities are in km/s for a stiffness in GPa and a density in g/cm^3.

## Input

| `C` | stiffnessTensor, with its density stored (C.density) or given |

## Keywords

| keyword | default | description |
|---|---|---|
| `symmetriseMinMax` | `False` | mark every crystal direction equivalent to the extrema |
| `markerSize` | `10` | the size of the markers of the extrema |
| `lower` | `False` | the lower hemisphere instead of the upper |
| `colormap` | `'red2blue'` | the colour map of the charts |
| `density` | `None` | the density in g/cm^3; by default C.density |

## Output

| `fig` | the mtexFigure of the six charts |

## See also

[velocity](complianceTensor.velocity_py.html), [stiffnessTensor](stiffnessTensor_index_py.html), [plotPF](SO3Fun.plotPDF_py.html), [WaveVelocities](WaveVelocities_py.html), [CPOSeismicProperties](CPOSeismicProperties_py.html)

MATLAB's [stiffnessTensor.plotSeismicVelocities](stiffnessTensor.plotSeismicVelocities.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/tensorplot.py#L45">source</a></font>
{% endraw %}
