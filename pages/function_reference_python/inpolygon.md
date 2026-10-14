---
title: 'inpolygon'
sidebar: function_reference_sidebar
permalink: inpolygon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
test whether map positions or grain centroids lie inside a polygon.

## Syntax

<div class="mx-form" markdown="1">

```python
inside = inpolygon(ebsd, polygon)
```

</div>

## Description

For an MTEX object, inpolygon(x, ...) calls x.inpolygon(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
inpolygon(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.inpolygon_py.html) | the mask of the measurements inside a rectangle [x, y, w, h] or a polygon (N, 2), edges included |
| [grain2d](grain2d.inpolygon_py.html) | the mask of the outlines whose centroid lies inside a rectangle [xmin, ymin, dx, dy] or a polygon (N, 2), edges included, as MATLAB's |
| [grainBoundary](grainBoundary.inpolygon_py.html) | the segments whose midpoint lies inside a polygon (N, 2), or the rectangle [x, y, w, h] |

## Used on

[EBSDFilling](EBSDFilling_py.html), [EBSDIndex](EBSDIndex_py.html), [EBSDPseudoSymmetry](EBSDPseudoSymmetry_py.html), [EBSDSelect](EBSDSelect_py.html), [BoundaryMisorientations](BoundaryMisorientations_py.html), [BoundaryPlots](BoundaryPlots_py.html), [BoundarySelect](BoundarySelect_py.html), [GrainReconstructionMCL](GrainReconstructionMCL_py.html), [TensorAverage](TensorAverage_py.html), [GrainTutorial](GrainTutorial_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
