---
title: 'Miller.surf'
sidebar: function_reference_sidebar
permalink: Miller.surf_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Miller.surf.html
status: Reference
---
{% raw %}
surf(sF): the function as the sphere pushed out to |f|, coloured by f, the real part of a
complex one; a list of functions one panel each; a single real function is first scaled
to (f - mean) / (max - min) + 1 unless scaling=False, as MATLAB's surf does

## Syntax

```python
surf(sF, layout=None, figSize=None, scaling=True, colormap='parula', resolution=5*degree, edgeColor=(0.1, 0.1, 0.1), **kw)
```

## Used on

[S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunPlotting](S2FunPlotting_py.html), [S2FunQuadrature](S2FunQuadrature_py.html), [S2Kernels](S2Kernels_py.html), [SphericalHarmonics](SphericalHarmonics_py.html), [PiezoElectricity](PiezoElectricity_py.html)

MATLAB's [Miller.surf](Miller.surf.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spaceplot.py#L336">source</a></font>
{% endraw %}
