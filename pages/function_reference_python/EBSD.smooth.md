---
title: 'EBSD.smooth'
sidebar: function_reference_sidebar
permalink: EBSD.smooth_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.smooth.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the map with its orientations denoised, every one replaced by one computed from its
neighbours, within the grains where the map knows them and within the phases otherwise

## Syntax

The default filter, total variation:

```python
ebsd_s = smooth(ebsd)
```

Another filter:

```python
ebsd_s = smooth(ebsd, halfQuadraticFilter())
```

The pixels without a measurement solved for as well:

```python
ebsd_s = smooth(ebsd, F, fill=True)
```

Only those inside a grain:

```python
ebsd_s = smooth(ebsd, F, fill=grains)
```

A numeric property smoothed along:

```python
ebsd_s = smooth(ebsd, F, props=('bc',))
```

The orientations are turned into a field of tangent vectors per connected component of
the map (a grain, if calcGrains has written the grain ids, else a phase) and the filter
acts on that field: a variational filter (splineFilter, halfQuadraticFilter, l1TVFilter,
infimalConvolutionFilter) solves for the smoothed field, a window filter (meanFilter,
medianFilter, KuwaharaFilter) replaces each pixel by its neighbourhood. Nothing is mixed
across a grain boundary or a phase boundary.

With fill the pixels that carry no measurement are solved for too (this is not the same as
notIndexed); fill=grains fills a pixel only from the grain whose polygon holds it, so
pixels between grains stay empty. A window filter solves for nothing, so with it the holes
are closed by fill first. The map passed is not changed; MATLAB's second output, the
filter, is the F passed.

## Input

| | |
|---|---|
| `ebsd` | EBSD, the map |
| `F` | EBSDFilter, the filter; by default l1TVFilter() |

## Output

| | |
|---|---|
| `ebsd_s` | EBSD, the smoothed map |

## Keywords

| | default | |
|---|---|---|
| `fill` | `False` | True to fill the pixels without a measurement, or grain2d to fill only those inside a grain |
| `extrapolate` | `False` | fill up to the outer boundary of the map, the pixels the outside reaches without crossing a measurement included |
| `props` | `()` | the names of numeric properties of the map smoothed with the orientations, by a variational filter |

## See also

[fill](fill_py.html), [interp](interp_py.html), [halfQuadraticFilter](halfQuadraticFilter_index_py.html), [splineFilter](splineFilter_index_py.html), [meanFilter](meanFilter_index_py.html), [EBSDDenoising](EBSDDenoising_py.html), [EBSDFilling](EBSDFilling_py.html)

MATLAB's [EBSD.smooth](EBSD.smooth.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/denoising.py#L286">source</a></font>
{% endraw %}
