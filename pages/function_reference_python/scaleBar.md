---
title: 'scaleBar'
sidebar: function_reference_sidebar
permalink: scaleBar_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: scaleBar.html
status: Reference
---
{% raw %}
how long a scale bar of a map should be, in the coordinates the map is drawn in, and how
it reads: a round number near a tenth of the width, in the unit that keeps it readable

## Syntax

<div class="mx-form" markdown="1">

```python
length, label = scaleBar(ebsd)
```

(5000.0, '5 mm') for a map 36.6 mm wide.

</div>

<div class="mx-form" markdown="1">

```python
length, label = scaleBar(36550.0, 'um', fraction=0.2)
```

From a width in a unit.

</div>

<div class="mx-form" markdown="1">

```python
length, label = scaleBar(0.5, 'mm')
```

(0.05, '50 µm').

</div>

## Description

The fraction of the width is brought to the unit among nm, µm, mm and m that keeps its
number between one and a thousand and rounded to the nearest of 1, 2, 5, 10, 15, 20, 25,
50, 75, 100, 125, 150, 200, 500, 750. A map, grains or boundary give their width on the
screen and their scanUnit.

## Input

| `x` | the width of the map, or the map, grains or boundary |

## Keywords

| keyword | default | description |
|---|---|---|
| `unit` | `'um'` | the unit of a width given as a number |
| `fraction` | `0.1` | the length aimed at, as a fraction of the width |

## Output

| `length` | the length of the bar in the units of the map |
| `label` | its text, as '5 mm' |

## See also

[mapExtent](mapExtent_py.html), [plotEBSD](EBSD.plot_py.html)

MATLAB's [scaleBar](scaleBar.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L403">source</a></font>
{% endraw %}
