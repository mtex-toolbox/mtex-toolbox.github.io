---
title: 'crystalShape.plotInnerFace'
sidebar: function_reference_sidebar
permalink: crystalShape.plotInnerFace_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalShape.plotInnerFace.html
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

the section of a crystal shape by a lattice plane through its centre

## Syntax

<div class="mx-form" markdown="1">

```python
plotInnerFace(cS, N)
```

The plane N inside the shape.

</div>

<div class="mx-form" markdown="1">

```python
plotInnerFace(cS, N, faceColor='red', faceAlpha=0.5, displayName='(101)')
```

Coloured, for a legend.

</div>

## Description

The plane is drawn as the polygon where it cuts the shape, in the axes of the shape, so
that it shows inside a translucent shape drawn before: plot(cS, faceAlpha=0.2), then
plotInnerFace with the figure held. Several planes give several polygons.

## Input

| `cS` | crystalShape |
| `N` | Miller, the lattice plane, one or several |

## Keywords

| keyword | default | description |
|---|---|---|
| `faceColor` | `'blue'` | the colour of the section |
| `faceAlpha` | `1.0` | its opacity |
| `edgeColor` | `'k'` | the colour of its edges |
| `lineWidth` | `0.8` | the width of its edges |
| `displayName` | `None` | its label in a legend |

## Output

| `h` | the matplotlib collection of the sections, None when the plane misses the shape |

## See also

[crystalShape.plotInnerDirection](crystalShape.plotInnerDirection_py.html), [crystalShape.plotSlipSystem](crystalShape.plotSlipSystem_py.html), [crystalShape.plot](crystalShape.plot_py.html), [CrystalShapes](CrystalShapes_py.html)

MATLAB's [crystalShape.plotInnerFace](crystalShape.plotInnerFace.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/shapeplot.py#L262">source</a></font>
{% endraw %}
