---
title: 'grainBoundary.curvature'
sidebar: function_reference_sidebar
permalink: grainBoundary.curvature_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.curvature.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the signed curvature of every segment: the Menger curvature through the midpoints of a
segment and its two neighbours along the chain, smoothed by a binomial filter along
it; positive where the boundary bulges into grainId[:, 1]; MATLAB's grainBoundary.curvature

## Syntax

<div class="mx-form" markdown="1">

```python
kappa = gB.curvature()
```

Smoothed 50 times.

</div>

<div class="mx-form" markdown="1">

```python
kappa = gB.curvature(2)
```

Smoothed twice.

</div>

## Description

The segments are stored in walk order with the grain grainId[:, 0] on the left, so the sign
says into which grain the boundary bulges. To read it as convex or concave with respect to
one grain, put that grain first throughout, gB.flip(gB.grainId[:, 1] == id). A segment at
the end of an open chain has a neighbour on one side only and is NaN, as is a chain of one
segment; a closed chain wraps around.

## Input

| `gB` | grainBoundary |

## Keywords

| keyword | default | description |
|---|---|---|
| `n` | `50` | the number of passes of the binomial filter along the chain |

## Output

| `kappa` | one over the radius of the fitted circle, in the units of the map, per segment |

## See also

[grainBoundary.flip](grainBoundary.flip_py.html), [grainBoundary.calcMeanDirection](grainBoundary.calcMeanDirection_py.html)

MATLAB's [grainBoundary.curvature](grainBoundary.curvature.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L472">source</a></font>
{% endraw %}
