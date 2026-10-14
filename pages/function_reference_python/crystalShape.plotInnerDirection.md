---
title: 'crystalShape.plotInnerDirection'
sidebar: function_reference_sidebar
permalink: crystalShape.plotInnerDirection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalShape.plotInnerDirection.html
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

a crystal direction drawn as an arrow from the centre of a crystal shape to its surface

## Syntax

The direction d inside the shape:

```python
plotInnerDirection(cS, d)
```

Coloured, for a legend:

```python
plotInnerDirection(cS, d, faceColor='blue', arrowWidth=0.05, displayName='[101]')
```

The arrow runs from the centre of the shape along d up to where d leaves it, so that it
shows inside a translucent shape drawn before. Several directions give several arrows.

## Input

| | |
|---|---|
| `cS` | crystalShape |
| `d` | Miller, the crystal direction, one or several |

## Output

| | |
|---|---|
| `h` | the arrow, or a list of them |

## Keywords

| | default | |
|---|---|---|
| `faceColor` | `'blue'` | the colour of the arrow |
| `arrowWidth` | `None` | MATLAB's width of the arrow, which replaces lineWidth: 0.05 gives two points |
| `lineWidth` | `2.0` | the width of the arrow in points |
| `displayName` | `None` | its label in a legend |

## See also

[crystalShape.plotInnerFace](crystalShape.plotInnerFace_py.html), [crystalShape.plotSlipSystem](crystalShape.plotSlipSystem_py.html), [crystalShape.plot](crystalShape.plot_py.html), [CrystalShapes](CrystalShapes_py.html)

MATLAB's [crystalShape.plotInnerDirection](crystalShape.plotInnerDirection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/shapeplot.py#L311">source</a></font>
{% endraw %}
