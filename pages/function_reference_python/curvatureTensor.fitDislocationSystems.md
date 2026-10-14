---
title: 'curvatureTensor.fitDislocationSystems'
sidebar: function_reference_sidebar
permalink: curvatureTensor.fitDislocationSystems_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: curvatureTensor.fitDislocationSystems.html
status: Reference
---
{% raw %}
rho, factor = fitDislocationSystems(kappa, dS): the dislocation densities that account for
the curvature with the least total line energy, one signed density per system, NaN where no
combination of them reproduces it. The curvature is one tensor or a map of them, the systems
one list for all or, rotated by the orientations of the map, a (pixels, systems) array; both
in one frame. The factor turns the densities into 1/m^2, from the units of the curvature
and of the Burgers vectors

## Syntax

```python
fitDislocationSystems(kappa, dS)
```

## Used on

[GND](GND_py.html)

MATLAB's [curvatureTensor.fitDislocationSystems](curvatureTensor.fitDislocationSystems.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/dislocations.py#L51">source</a></font>
{% endraw %}
