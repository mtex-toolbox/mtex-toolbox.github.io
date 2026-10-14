---
title: 'crystalShape.plotSlipSystem'
sidebar: function_reference_sidebar
permalink: crystalShape.plotSlipSystem_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalShape.plotSlipSystem.html
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

a slip system drawn inside a crystal shape: the slip plane through the centre with the
slip direction as an arrow in it

## Syntax

The slip plane and direction, red:

```python
plot(cS, sS)
```

Another colour:

```python
plot(cS, sS, faceColor='blue')
```

The arrow named at its tip:

```python
plotSlipSystem(cS, sS, label='b')
```

The plane is the section by the slip plane, as plotInnerFace draws it, the arrow the slip
direction from the centre to the surface; several systems are drawn together. Draw the
shape translucent first, plot(cS, faceAlpha=0.2), and hold the figure.

## Input

| | |
|---|---|
| `cS` | crystalShape |
| `sS` | slipSystem |

## Output

| | |
|---|---|
| `h` | the matplotlib collection of the slip planes |

## Keywords

| | default | |
|---|---|---|
| `faceColor` | `'red'` | the colour of the plane and the arrow |
| `faceAlpha` | `0.5` | the opacity of the plane |
| `edgeColor` | `'k'` | the colour of the edges of the plane |
| `lineWidth` | `0.8` | the width of the edges of the plane |
| `displayName` | `None` | the label of the plane in a legend |
| `label` | `None` | the text at the tip of the arrow (not on a map) |

## See also

[crystalShape.plotInnerFace](crystalShape.plotInnerFace_py.html), [crystalShape.plotInnerDirection](crystalShape.plotInnerDirection_py.html), [slipSystem](slipSystem_index_py.html), [crystalShape.plot](crystalShape.plot_py.html), [CrystalShapes](CrystalShapes_py.html)

MATLAB's [crystalShape.plotSlipSystem](crystalShape.plotSlipSystem.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/shapeplot.py#L339">source</a></font>
{% endraw %}
