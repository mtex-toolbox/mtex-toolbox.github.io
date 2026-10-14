---
title: 'crystalShape.plot'
sidebar: function_reference_sidebar
permalink: crystalShape.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalShape.plot.html
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

a crystal shape drawn as the polygons of its faces, in a 3D axes or onto a held map

## Syntax

<div class="mx-form" markdown="1">

```python
plot(cS)
```

The shape in a 3D axes.

</div>

<div class="mx-form" markdown="1">

```python
plot(cS, faceColor='red', faceAlpha=0.5, edgeColor='k')
```

One colour, translucent.

</div>

<div class="mx-form" markdown="1">

```python
plot(cS, faceColor=cS.faceArea)
```

A value per face through the colour map.

</div>

<div class="mx-form" markdown="1">

```python
plot(cS, colored=True)
```

A colour per form, with a legend.

</div>

<div class="mx-form" markdown="1">

```python
plot(cS, colored=ipfHSVKey(cS.CS))
```

The colours of a key of the normals.

</div>

<div class="mx-form" markdown="1">

```python
plot(x, y, cS)
```

At positions, plot(x, y, z, cS) or plot(xy, cS).

</div>

<div class="mx-form" markdown="1">

```python
plot(cS, Miller(1, 1, 0, cS.CS, 'hkl'))
```

The section by a lattice plane.

</div>

<div class="mx-form" markdown="1">

```python
plot(cS, sS)
```

A slip system inside the shape.

</div>

## Description

A list of shapes, ori * cS for instance, is drawn at once; with positions every shape is
moved there first. Drawn while a map is held, the shapes are seen along the normal of the
map at their positions in its plane, as plot(grains, cS) puts them.

By default the faces take the colour of the mineral, or LightSkyBlue. A lattice plane after
the shape hands over to plotInnerFace, a slip system to plotSlipSystem. The keywords of the
axes, parent and the like, are taken as by every plot; MATLAB's legendSpacing is not
provided.

## Input

| `cS` | crystalShape, one or a list |
| `x, y, z` | the positions of the shapes, or xy an (n, 2) or (n, 3) array of them |

## Keywords

| keyword | default | description |
|---|---|---|
| `faceColor` | `None` | one colour, one per face, one per shape, or a value per face mapped through the colour map |
| `faceAlpha` | `None` | the opacity of the faces |
| `edgeColor` | `'k'` | the colour of the edges |
| `lineWidth` | `0.8` | the width of the edges |
| `colored` | `None` | True gives every form its own colour with a legend; a direction or ipf key colours the faces by their normals |
| `colormap` | `'viridis'` | the colour map of the values per face |
| `displayName` | `None` | the label of the shape in a legend |

## Output

| `h` | the matplotlib collection of the faces |

## See also

[crystalShape](crystalShape_index_py.html), [crystalShape.plotInnerFace](crystalShape.plotInnerFace_py.html), [crystalShape.plotInnerDirection](crystalShape.plotInnerDirection_py.html), [crystalShape.plotSlipSystem](crystalShape.plotSlipSystem_py.html), [faceColors](faceColors_py.html), [CrystalShapes](CrystalShapes_py.html)

MATLAB's [crystalShape.plot](crystalShape.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/shapeplot.py#L189">source</a></font>
{% endraw %}
