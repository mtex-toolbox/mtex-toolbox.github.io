---
title: 'EBSD.KAM'
sidebar: function_reference_sidebar
permalink: EBSD.KAM_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.KAM.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the kernel average misorientation: the mean misorientation angle of every pixel to its
neighbours; MATLAB's KAM

## Syntax

The nearest neighbours:

```python
kam = ebsd['Forsterite'].KAM()
```

Misorientations above 10 degree left out:

```python
kam = KAM(ebsd, threshold=10*degree)
```

The neighbours up to the second order:

```python
kam = KAM(ebsd, order=2)
```

The neighbours within a distance:

```python
kam = KAM(ebsd, radius=3*ebsd.lattice.dxy)
```

Weighted by the distance:

```python
kam = KAM(ebsd, order=3, weights=lambda d: np.exp(-(d / dxy)**2))
```

The largest angle instead of the mean:

```python
kam = KAM(ebsd, max=True)
```

The neighbours of a pixel are those within order steps over the stencil of the lattice,
square or hexagonal, or within a physical radius. Only neighbours of the same phase, both
indexed, count, and on a map that carries grain ids (after calcGrains) only those of the
same grain, so the grain boundaries are left out. A pixel with no neighbour to compare with
is NaN. The map needs no grid: the lattice of a list is used too. The angles are in radian.

## Input

| | |
|---|---|
| `ebsd` | EBSD |

## Output

| | |
|---|---|
| `kam` | array of the shape of the map, the angles in radian |

## Keywords

| | default | |
|---|---|---|
| `order` | `1` | the neighbours up to this many steps over the lattice |
| `radius` | `None` | the neighbours up to this distance, in the scan unit, instead of order |
| `threshold` | `inf` | a misorientation angle above it is left out |
| `max` | `False` | the largest misorientation angle instead of the mean |
| `weights` | `None` | a function of the distance of a neighbour, its weight in the mean |

## See also

[calcGROD](calcGROD_py.html), [gradient](gradient_py.html), [calcGrains](EBSD.calcGrains_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSD3.KAM](EBSD3.KAM_py.html)

MATLAB's [EBSD.KAM](EBSD.KAM.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L339">source</a></font>
{% endraw %}
