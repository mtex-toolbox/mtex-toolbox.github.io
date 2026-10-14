---
title: 'sphericalRegion.plot'
sidebar: function_reference_sidebar
permalink: sphericalRegion.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion.plot.html
status: Reference
---
{% raw %}
A method of [sphericalRegion](sphericalRegion_index_py.html).

the outline of a spherical region on the charts of the current figure, or of a new one;
MATLAB's sphericalRegion.plot

## Syntax

<div class="mx-form" markdown="1">

```python
plot(cs.fundamentalSector())
```

The fundamental sector of a crystal.

</div>

<div class="mx-form" markdown="1">

```python
plot(sR, color='r', lineWidth=2)
```

In red, thicker.

</div>

## Description

The boundary is drawn as its arcs at half a degree; lineColor is taken for color, the
other keywords go to the spherical plots and matplotlib's lines.

## Input

| `sR` | sphericalRegion |

## Keywords

| keyword | default | description |
|---|---|---|
| `color` | `'k'` | the colour of the outline |
| `lineWidth` | `1.0` | its width |

## Output

| `h` | the matplotlib lines |

## See also

[sphericalRegion](sphericalRegion_index_py.html), [fundamentalSector](fundamentalSector_py.html), [plot](S1Grid.plot_py.html)

MATLAB's [sphericalRegion.plot](sphericalRegion.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L1387">source</a></font>
{% endraw %}
