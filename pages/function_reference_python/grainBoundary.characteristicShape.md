---
title: 'grainBoundary.characteristicShape'
sidebar: function_reference_sidebar
permalink: grainBoundary.characteristicShape_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.characteristicShape.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the characteristic shape of a set of boundary segments; MATLAB's
grainBoundary.characteristicShape

## Syntax

<div class="mx-form" markdown="1">

```python
cShape = characteristicShape(grains.boundary['Fo', 'Fo'])
```

Of the boundaries of a phase.

</div>

<div class="mx-form" markdown="1">

```python
cShape = grains.characteristicShape(nmax=256)
```

Of the boundary of the grains.

</div>

## Description

Every segment and its antipode, sorted by direction and laid end to end, close into a
convex, centrally symmetric outline whose boundary length in each direction is the
boundary length the map has in it. An outline of more than nmax vertices is sampled down to
nmax, which keeps its extent.

## Input

| `x` | grainBoundary, or grain2d for its boundary |

## Keywords

| keyword | default | description |
|---|---|---|
| `nmax` | `1024` | the largest number of vertices of the outline |

## Output

| `cShape` | shape2d |

## See also

[shape2d.byFV](shape2d.byFV_py.html), [grainBoundary.surfor](grainBoundary.surfor_py.html), [ShapeParameters](ShapeParameters_py.html)

MATLAB's [grainBoundary.characteristicShape](grainBoundary.characteristicShape.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L375">source</a></font>
{% endraw %}
