---
title: 'EBSD.fill'
sidebar: function_reference_sidebar
permalink: EBSD.fill_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.fill.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the map with every pixel that carries no measurement filled, the measured ones left as
they are

## Syntax

The holes filled:

```python
ebsd_f = fill(ebsd)
```

Filled within the grains only:

```python
ebsd_f = fill(ebsd, grains)
```

Another filter, up to the outer boundary:

```python
ebsd_f = fill(ebsd, halfQuadraticFilter(), extrapolate=True)
```

A hole is filled with the continuation of the field of orientations that encloses it, by
the solver of a variational filter (by default l1TVFilter; a window filter has no
variational form and is refused), within the grains where the map knows them and within
the phases otherwise. The numeric properties are filled by the same solve, the labels
(phase, grain id, ...) copied from the nearest measured pixel. A pixel the outside reaches
without crossing a measurement stays empty unless extrapolate. MATLAB fills by the
nearest neighbour; here the hole takes the smooth continuation.

With grains, MATLAB's fill(ebsd, grains), a pixel is filled only from the grain whose
polygon holds it: one inside no grain becomes notIndexed, one its grain's measurements do
not reach over the lattice takes the grain's mean orientation; padding a polygon holds
becomes a cell of the map. The map needs its grain ids, from calcGrains(ebsd). The pixels
to fill must exist on the lattice: a gridded map, or the padding gridify adds. The map
passed is not changed.

## Input

| | |
|---|---|
| `ebsd` | EBSD, the map |
| `F` | EBSDFilter, a variational filter, or grain2d in place of grains |

## Output

| | |
|---|---|
| `ebsd_f` | EBSD, the filled map |

## Keywords

| | default | |
|---|---|---|
| `grains` | `None` | grain2d of the map: fill a pixel only from the grain whose polygon holds it |
| `extrapolate` | `False` | fill up to the outer boundary of the map |

## See also

[smooth](smooth_py.html), [interp](interp_py.html), [gridify](gridify_py.html), [calcGrains](EBSD.calcGrains_py.html), [EBSDFilling](EBSDFilling_py.html)

MATLAB's [EBSD.fill](EBSD.fill.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/denoising.py#L335">source</a></font>
{% endraw %}
