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

plotSeismicVelocities(C): the overview of the wave velocities of a stiffness tensor

## Syntax

```python
stiffnessTensor.plotSeismicVelocities(C, symmetriseMinMax=False, markerSize=10, lower=False, colormap='red2blue', density=None, **kw)
```

Six charts in two rows: Vp, the S-wave anisotropy, Vs1 with its polarisation, Vs2 with
its polarisation, Vp/Vs1 and Vp/Vs2, each with the maximum as a black square and the
minimum as a white circle, the anisotropy in percent under it, red slow to blue fast.

MATLAB's [stiffnessTensor.plotSeismicVelocities](stiffnessTensor.plotSeismicVelocities.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/tensorplot.py#L45">source</a></font>
{% endraw %}
