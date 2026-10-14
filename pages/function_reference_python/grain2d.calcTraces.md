---
title: 'grain2d.calcTraces'
sidebar: function_reference_sidebar
permalink: grain2d.calcTraces_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.calcTraces.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the traces of subregions of a map or of sets of grains, the direction their lamellae run
along; MATLAB's calcTraces

## Syntax

<div class="mx-form" markdown="1">

```python
traces, rel, cSize = calcTraces(ebsd)
```

One trace of all indexed pixels, by the Radon transform.

</div>

<div class="mx-form" markdown="1">

```python
traces, rel, cSize = calcTraces(ebsd, ebsd.phaseId, 'Fourier', minClusterSize=50)
```

A trace per phase, Fourier based.

</div>

<div class="mx-form" markdown="1">

```python
traces, rel, cSize = calcTraces(grains, grains.phaseId)
```

A trace per phase from the characteristic shape.

</div>

<div class="mx-form" markdown="1">

```python
traces, rel, cSize = calcTraces(grains, grains.phaseId, 'calliper')
```

The shortest calliper of the shape instead.

</div>

## Description

A cluster is the set of pixels, or grains, with one value of every column of clusterId, as
MATLAB's clusterId = [grainId, variantId]; ids of zero or NaN belong to no cluster. By
default all indexed pixels, or all grains, form one cluster. The outputs have the shape of
the largest id of every column. A cluster of minClusterSize pixels or fewer (default 100)
keeps a NaN trace and a reliability of zero.

On a map, measured on a lattice, the method is:

- 'Radon', the default: perpendicular to the projection of the cluster with the most
energy at high frequencies
- 'Fourier': the axis of the smaller second moment of the cluster image's Fourier transform

On grains it is:

- 'shape', the default: the principal axis of the characteristic shape of the boundaries
- 'calliper': the direction across the shortest calliper of that shape
- 'hist': the maximum of the length weighted density of the segment directions

The method is a positional string or method=. A cluster filling a rectangle has no
direction: 'Fourier' then gives NaN, 'Radon' a side of the rectangle with high reliability.

## Input

| `x` | EBSD on a lattice, or grain2d |

## Keywords

| keyword | default | description |
|---|---|---|
| `clusterId` | `None` | one or more columns of ids, a row per pixel or grain, naming the cluster of each; by default one cluster |

## Output

| `traces` | vector3d, antipodal directions in the plane of the map, one per cluster |
| `rel` | the reliability, how much the winning direction stands out, zero for none |
| `cSize` | the size of every cluster, pixels on a map, summed numPixel of the grains |

## References

- Determination of child phase habit planes from two-dimensional reconstructed parent phase orientation maps, arXiv 2201.02103 (2022)

## See also

[grainBoundary.characteristicShape](grainBoundary.characteristicShape_py.html), [parentGrainReconstructor](parentGrainReconstructor_index_py.html)

MATLAB's [grain2d.calcTraces](grain2d.calcTraces.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/traces.py#L186">source</a></font>
{% endraw %}
