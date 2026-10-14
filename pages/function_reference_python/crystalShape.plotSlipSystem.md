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

<div class="mx-form" markdown="1">

```python
plot(cS, sS)
```

The slip plane and direction, red.

</div>

<div class="mx-form" markdown="1">

```python
plot(cS, sS, faceColor='blue')
```

Another colour.

</div>

<div class="mx-form" markdown="1">

```python
plotSlipSystem(cS, sS, label='b')
```

The arrow named at its tip.

</div>

## Description

The plane is the section by the slip plane, as plotInnerFace draws it, the arrow the slip
direction from the centre to the surface; several systems are drawn together. Draw the
shape translucent first, plot(cS, faceAlpha=0.2), and hold the figure.

## Input

| `cS` | crystalShape |
| `sS` | slipSystem |

## Keywords

| keyword | default | description |
|---|---|---|
| `faceColor` | `'red'` | the colour of the plane and the arrow |
| `faceAlpha` | `0.5` | the opacity of the plane |
| `edgeColor` | `'k'` | the colour of the edges of the plane |
| `lineWidth` | `0.8` | the width of the edges of the plane |
| `displayName` | `None` | the label of the plane in a legend |
| `label` | `None` | the text at the tip of the arrow (not on a map) |

## Output

| `h` | the matplotlib collection of the slip planes |

## Example

Draw two pyramidal slip systems in a translucent magnesium crystal. The blue plane and
arrow show an a-type system; the red ones show a c+a-type system. The lattice parameters
are those of Mg-Magnesium.cif in the MATLAB example, in angstroms.


```python
from mtex import crystalFrame, crystalShape, slipSystem, plot, hold
from matplotlib.pyplot import show

cs = crystalFrame('6/mmm', [3.20927, 3.20927, 5.21033], mineral='Magnesium')
cS = crystalShape.hex(cs)
aSlip = slipSystem.pyramidalA(cs)
caSlip = slipSystem.pyramidal2CA(cs)

plot(cS, faceAlpha=0.2)
hold(True)
plot(cS, aSlip, faceColor='blue')
plot(cS, caSlip, faceColor='red')
hold(False)
show()
```

Keep the first plot with hold(True) so that the slip planes and arrows are added to the
same figure.

![Example output for crystalShape.plotSlipSystem](figures/python_reference/crystalShape.plotSlipSystem-01.png)


## See also

[crystalShape.plotInnerFace](crystalShape.plotInnerFace_py.html), [crystalShape.plotInnerDirection](crystalShape.plotInnerDirection_py.html), [slipSystem](slipSystem_index_py.html), [crystalShape.plot](crystalShape.plot_py.html), [CrystalShapes](CrystalShapes_py.html)

MATLAB's [crystalShape.plotSlipSystem](crystalShape.plotSlipSystem.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/shapeplot.py#L341">source</a></font>
{% endraw %}
