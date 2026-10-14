---
title: 'grain2d.smoothBoundary'
sidebar: function_reference_sidebar
permalink: grain2d.smoothBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.smoothBoundary.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the grains with the pixel staircase of their boundaries turned into smooth curves; MATLAB's
grain2d.smoothBoundary

## Syntax

<div class="mx-form" markdown="1">

```python
grains = smoothBoundary(grains)
```

One smoothing step.

</div>

<div class="mx-form" markdown="1">

```python
grains = smoothBoundary(grains, 5, moveTriplePoints=True)
```

Five steps, the junctions moving too.

</div>

<div class="mx-form" markdown="1">

```python
grains = smoothBoundary(grains, 3, simplify=False, refine=False)
```

The segments kept, smoothing only.

</div>

<div class="mx-form" markdown="1">

```python
grains = smoothBoundary(grains, 3, simplify=0.5, refine=1)
```

Own tolerance and resampling length.

</div>

<div class="mx-form" markdown="1">

```python
grains = smoothBoundary(grains, taubinFilter())
```

Smoothing without shrinking.

</div>

<div class="mx-form" markdown="1">

```python
grains = smoothBoundary(grains, curvatureFilter(smoothingLength=3))
```

A smoothing length.

</div>

## Description

calcGrains gives a boundary as a staircase of pixel edges, every segment along a grid axis.
The smoothing repairs it in three steps:

- simplify: drops every vertex whose removal moves the boundary by less than a tolerance,
by default d / sqrt(2) for the pixel spacing d, which removes the staircase and nothing else.
- refine: resamples what is left at equal arc length, by default d, so that the vertices are
evenly spaced and no longer tied to the grid.
- the boundaryFilter smooths, by default laplaceFilter(iter), iter steps of local averaging.

The first two steps matter: simplifying alone leaves a curve as a few long chords whose
corners the smoothing cuts off, and smoothing alone leaves straight boundaries scattered
around the grid axes. They change the segments, though, and a resampled segment no longer
lies between one pair of pixels: where gB.ebsdId is read per segment, as calcGBND does,
switch them off with simplify=False, refine=False.

The junctions (triple and quadruple points, and the ends of the inner boundary on the outer
one) stay fixed unless moveTriplePoints=True, the outer boundary of the map unless
moveOuterBoundary=True. MATLAB's second output, the filter used, is the one passed or
laplaceFilter(iter).

## Input

| `grains` | grain2d |
| `iter` | the number of smoothing steps of the default laplaceFilter, or the boundaryFilter to smooth with: laplaceFilter, taubinFilter, curvatureFilter or huberFilter |

## Keywords

| keyword | default | description |
|---|---|---|
| `simplify` | `None` | the tolerance of the simplification in the units of the map, by default d / sqrt(2) for the pixel spacing d; False leaves it out, MATLAB's 'noSimplify' |
| `refine` | `None` | the resampling length in the units of the map, by default d; False leaves it out, MATLAB's 'noRefine' |
| `moveTriplePoints` | `False` | smooth the junctions as well |
| `moveOuterBoundary` | `False` | smooth the outer boundary of the map as well |

## Output

| `grains` | grain2d with the smoothed boundary and inner boundary |

## See also

[grain2d.simplifyBoundary](grain2d.simplifyBoundary_py.html), [grain2d.refineBoundary](grain2d.refineBoundary_py.html), [grain2d.reduceBoundary](grain2d.reduceBoundary_py.html), [boundaryFilter](boundaryFilter_index_py.html), [laplaceFilter](laplaceFilter_index_py.html), [taubinFilter](taubinFilter_index_py.html), [curvatureFilter](curvatureFilter_index_py.html), [huberFilter](huberFilter_index_py.html), [GrainSmoothing](GrainSmoothing_py.html)

MATLAB's [grain2d.smoothBoundary](grain2d.smoothBoundary.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/smoothing.py#L274">source</a></font>
{% endraw %}
