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

the geometrically necessary dislocation content of every pixel after Pantleon (2008);
MATLAB's calcGND

## Syntax

The content and the densities per system:

```python
gnd, rho = calcGND(ebsd, dS)
```

The curvature from all eight neighbours:

```python
gnd, rho = calcGND(ebsd, dS, stencil='full')
```

MATLAB's route: the curvature of the map, the dislocation systems rotated into every pixel,
and the densities of least total line energy that reproduce the curvature, a linear
program per pixel. The content is the sum of the line energies dS.u times the absolute
densities, in 1/m^2 for line energies without a unit. The map should be smoothed first, a
noisy curvature gives noisy densities.

## Input

| | |
|---|---|
| `ebsd` | EBSD of one phase, gridded or with a lattice |
| `dS` | dislocationSystem, the systems in crystal coordinates |

## Output

| | |
|---|---|
| `gnd` | the dislocation content of every pixel, the shape of the map |
| `rho` | the density of every system at every pixel, one row per pixel |

## Keywords

| | default | |
|---|---|---|
| `stencil` | `'oneSided'` | the neighbours the curvature is taken from: 'oneSided' the one sided differences along the lattice directions, 'lattice' the central difference over the whole stencil of the lattice, 'full' the same with the diagonals |

## References

- W. Pantleon, Resolving the geometrically necessary dislocation content by conventional electron backscattering diffraction, Scripta Materialia 58 (2008) 994-997

## See also

[GND](GND_py.html), [curvature](curvature_py.html), [dislocationSystem](dislocationSystem_index_py.html), [fitDislocationSystems](curvatureTensor.fitDislocationSystems_py.html)

MATLAB's [EBSD3square.calcGND](EBSD3square.calcGND.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/dislocations.py#L89">source</a></font>
{% endraw %}
