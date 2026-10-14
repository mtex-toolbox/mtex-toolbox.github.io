---
title: 'quiverMap'
sidebar: function_reference_sidebar
permalink: quiverMap_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
arrows on a map: one per grain at its centroid, per measurement, or per boundary segment
at its midpoint

## Syntax

<div class="mx-form" markdown="1">

```python
quiver(grains, grains.meanOrientation * Miller(1, 0, 0, cs, 'uvw'))
```

A direction per grain.

</div>

<div class="mx-form" markdown="1">

```python
quiver(ebsd, v, color='w')
```

An arrow per measurement.

</div>

<div class="mx-form" markdown="1">

```python
quiver(gB, gB.direction, autoScaleFactor=0.5)
```

A needle per boundary segment.

</div>

<div class="mx-form" markdown="1">

```python
quiver(grains, v, antipodal=True)
```

Axes, centred on the centroids.

</div>

<div class="mx-form" markdown="1">

```python
quiver(grains, v, scale=10)
```

Scale times the length of v.

</div>

<div class="mx-form" markdown="1">

```python
quiver(ebsd, v, maxHeadSize=0.2)
```

Heads a fifth of the longest arrow.

</div>

## Description

A direction starts at its point, an axis (an antipodal vector, or antipodal=True) runs both
ways from it. The default length depends on what carries the arrows:

- grains: a fifth of the grain diameter along the direction in space, seen on the map, so
that a direction steep to the map is short; an axis reaches that far to either side. A
direction pointing into the map ends at the centroid unless projectIntoPlane=True.
- a map: one and a half pixel spacings on the map for every arrow, whatever its inclination.
- boundary segments: needles both ways from the midpoint, proportional to the length of the
vector in space and seen on the map; autoScaleFactor, by default 0.15, sets their size
relative to the spacing of the segments.

scale=s draws every arrow s times the length of its vector in the plane of the map instead,
scaling=False at that length itself. Into a held map plot the arrows go on top of it, else
into a map of their own.

## Input

| `x` | grain2d, EBSD or grainBoundary |
| `v` | vector3d, one per grain, measurement or segment |

## Keywords

| keyword | default | description |
|---|---|---|
| `scale` | `None` | draw every arrow scale times its length in the plane of the map |
| `color` | `None` | the colour of the arrows; for grains by default the next of the axes' colours |
| `lineWidth` | `None` | the width of the arrows |
| `scaling` | `True` | scale the arrows to the automatic length; False draws them at their own length |
| `displayName` | `None` | the name in a legend |
| `autoScaleFactor` | `None` | a factor on the automatic length |
| `projectIntoPlane` | `False` | let the arrow of a grain start at its centroid even when its direction points into the map, where it would otherwise end there |
| `antipodal` | `False` | draw the vectors as axes, centred on their points |
| `maxHeadSize` | `None` | the length of the heads as a fraction of the longest arrow, MATLAB's MaxHeadSize; by default matplotlib's heads |

## Output

| `h` | the matplotlib quiver or line collection |

## See also

[grain2d.plot](grain2d.plot_py.html), [EBSD.plot](EBSD.plot_py.html), [Annotations](Annotations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L1082">source</a></font>
{% endraw %}
