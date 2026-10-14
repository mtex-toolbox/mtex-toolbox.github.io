---
title: 'phaseLegend'
sidebar: function_reference_sidebar
permalink: phaseLegend_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the legend of the phases present in a map or grains, one patch per phase in its colour,
a not indexed phase only when it was given a colour of its own

## Syntax

<div class="mx-form" markdown="1">

```python
leg = phaseLegend(mP, ebsd)
```

The phases of a map in the upper right.

</div>

<div class="mx-form" markdown="1">

```python
leg = phaseLegend(mP, grains, loc='lower left')
```

Elsewhere.

</div>

## Description

A map coloured by phase draws this itself with legend=True. A patch is labelled by the
mineral of its phase.

## Input

| `mP` | mapPlot, the map plot the legend goes into |
| `x` | EBSD or grain2d, whose phases are shown |

## Keywords

| keyword | default | description |
|---|---|---|
| `loc` | `'upper right'` | the place of the legend, as matplotlib's legend takes it |

## Output

| `leg` | the matplotlib Legend |

## See also

[keyLegend](keyLegend_py.html), [plotEBSD](EBSD.plot_py.html), [plotGrains](grain2d.plot_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L1333">source</a></font>
{% endraw %}
