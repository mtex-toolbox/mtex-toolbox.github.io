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

A direction per grain:

```python
quiver(grains, grains.meanOrientation * Miller(1, 0, 0, cs, 'uvw'))
```

An arrow per measurement:

```python
quiver(ebsd, v, color='w')
```

A needle per boundary segment:

```python
quiver(gB, gB.direction, autoScaleFactor=0.5)
```

Axes, centred on the centroids:

```python
quiver(grains, v, antipodal=True)
```

Scale times the length of v:

```python
quiver(grains, v, scale=10)
```

A direction starts at its point, an axis (an antipodal vector, or antipodal=True) is centred
on it. By default an arrow of a grain is a fifth of its diameter, of a map one and a half
spacings, of a boundary three median segment lengths, and is drawn as its projection onto
the map, so that a direction steep to the map is short. scale=s draws every arrow s times
the length of its vector in the plane instead, scaling=False at the length of the vector
itself. Into a held map plot the arrows go on top of it, else into a map of their own.

## Input

| | |
|---|---|
| `x` | grain2d, EBSD or grainBoundary |
| `v` | vector3d, one per grain, measurement or segment |

## Output

| | |
|---|---|
| `h` | the matplotlib quiver or line collection |

## Keywords

| | default | |
|---|---|---|
| `scale` | `None` | draw every arrow scale times its length in the plane of the map |
| `color` | `None` | the colour of the arrows; for grains by default the next of the axes' colours |
| `lineWidth` | `None` | the width of the arrows |
| `scaling` | `True` | scale the arrows to the automatic length; False draws them at their own length |
| `displayName` | `None` | the name in a legend |
| `autoScaleFactor` | `None` | a factor on the automatic length |
| `projectIntoPlane` | `False` | let the arrow of a grain start at its centroid even when its direction points into the map, where it would otherwise end there |
| `antipodal` | `False` | draw the vectors as axes, centred on their points |

## See also

[grain2d.plot](grain2d.plot_py.html), [EBSD.plot](EBSD.plot_py.html), [Annotations](Annotations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L1070">source</a></font>
{% endraw %}
