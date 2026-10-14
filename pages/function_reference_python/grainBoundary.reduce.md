---
title: 'grainBoundary.reduce'
sidebar: function_reference_sidebar
permalink: grainBoundary.reduce_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.reduce.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the boundary coarsened by keeping every n-th vertex along each chain, whatever the shape;
MATLAB's grainBoundary.reduce

## Syntax

Every second vertex:

```python
gB = gB.reduce()
```

Every fourth vertex:

```python
gB = gB.reduce(4)
```

These vertices kept as well:

```python
gB = gB.reduce(2, protect=vertexIds)
```

No grain of the list collapsed:

```python
gB = gB.reduce(2, keepGrains=grains.id)
```

The vertices between the kept ones are dissolved and their segments merged, so the
boundary stays connected and keeps its length up to the straightening of the dissolved
corners. The junctions, the ends of the chains, and the vertices where the pair of grains
changes always stay, so which grains touch, and where, is unchanged. A closed chain keeps
at least three vertices. A merged segment inherits grainId, ebsdId and misrotation from
the last segment of its run, and its ebsdId says it runs between no one pair of pixels.

It thins a straight run and a corner alike; simplify spends the vertices where the shape
needs them and is mostly the better choice.

## Input

| | |
|---|---|
| `gB` | grainBoundary |

## Output

| | |
|---|---|
| `gB` | grainBoundary, the coarsened boundary |

## Keywords

| | default | |
|---|---|---|
| `n` | `2` | keep every n-th vertex along each chain; 1 or less leaves the boundary as it is |
| `protect` | `None` | the ids of the vertices that must stay, on top of the junctions |
| `keepGrains` | `None` | the ids of the grains that must keep a polygon: a grain that would be left with fewer than three vertices is not coarsened at all; MATLAB does this for every grain, grain2d.reduceBoundary passes all of them |

## See also

[grainBoundary.simplify](grainBoundary.simplify_py.html), [grainBoundary.refine](grainBoundary.refine_py.html), [grain2d.reduceBoundary](grain2d.reduceBoundary_py.html), [smoothBoundary](smoothBoundary_py.html)

MATLAB's [grainBoundary.reduce](grainBoundary.reduce.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundaryresampling.py#L130">source</a></font>
{% endraw %}
