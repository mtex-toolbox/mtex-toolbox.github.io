---
title: 'EBSD3square.calcGND'
sidebar: function_reference_sidebar
permalink: EBSD3square.calcGND_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3square.calcGND.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

gnd, rho = calcGND(ebsd, dS): the geometrically necessary dislocation content of every
pixel after Pantleon (2008), MATLAB's route: the curvature of the map, the systems rotated
into every pixel, the densities of least total line energy reproducing the curvature. The
content is the sum of the line energies times the absolute densities, in 1/m^2 for line
energies without a unit, and the densities one row per pixel

## Syntax

```python
EBSD3.calcGND(ebsd, dS, stencil='oneSided')
```

MATLAB's [EBSD3square.calcGND](EBSD3square.calcGND.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/dislocations.py#L89">source</a></font>
{% endraw %}
