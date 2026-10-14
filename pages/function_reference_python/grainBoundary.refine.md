---
title: 'grainBoundary.refine'
sidebar: function_reference_sidebar
permalink: grainBoundary.refine_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.refine.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

split every segment into pieces of about length delta: the old vertices stay where they
are and the new ones lie on the old segments, so the boundary keeps its shape and its
length and only the sampling gets finer, which gives a smoothing that follows evenly
spaced degrees of freedom. Every piece carries the grains, the phases, the pair of
measurements and the misorientation of the segment it lies on; MATLAB's grainBoundary.refine

## Syntax

<div class="mx-form" markdown="1">

```python
gB = gB.refine()
```

Pieces of half the median segment length.

</div>

<div class="mx-form" markdown="1">

```python
gB = gB.refine(10)
```

Pieces of about 10 map units.

</div>

## Description

A segment is split into round(length / delta) pieces, at least one. MATLAB resamples every
chain at equal arc length between the vertices that must stay and takes a protect list;
here every segment is split on its own, which keeps the old vertices, and there is no
protect.

## Input

| `gB` | grainBoundary |

## Keywords

| keyword | default | description |
|---|---|---|
| `delta` | `None` | the length of the pieces in the units of the map, by default half the median segment length; 0 or less leaves the boundary as it is |

## Output

| `gB` | grainBoundary, the refined boundary |

## See also

[grainBoundary.reduce](grainBoundary.reduce_py.html), [grainBoundary.simplify](grainBoundary.simplify_py.html), [grain2d.refineBoundary](grain2d.refineBoundary_py.html), [smoothBoundary](smoothBoundary_py.html)

MATLAB's [grainBoundary.refine](grainBoundary.refine.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundaryresampling.py#L338">source</a></font>
{% endraw %}
