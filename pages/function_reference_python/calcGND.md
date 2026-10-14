---
title: 'calcGND'
sidebar: function_reference_sidebar
permalink: calcGND_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
calcGND(x, ...) is x.calcGND(...), the method of the object passed

## Syntax

```python
calcGND(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [EBSD](EBSD.calcGND_py.html) | gnd, rho = calcGND(ebsd, dS): the geometrically necessary dislocation content of every pixel after Pantleon (2008), MATLAB's route: the curvature of the map, the systems rotated into every pixel, the densities of least total line energy reproducing the curvature |
| [EBSD3](EBSD3square.calcGND_py.html) | gnd, rho = calcGND(ebsd, dS): the geometrically necessary dislocation content of every pixel after Pantleon (2008), MATLAB's route: the curvature of the map, the systems rotated into every pixel, the densities of least total line energy reproducing the curvature |

## Used on

[GND](GND_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
