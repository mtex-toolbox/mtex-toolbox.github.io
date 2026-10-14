---
title: 'mtexFigure.colorbar'
sidebar: function_reference_sidebar
permalink: mtexFigure.colorbar_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mtexFigure.colorbar.html
status: Reference
---
{% raw %}
A method of [mtexFigure](mtexFigure_index_py.html).

the colour bars of the figure: a bar per axes, or one for all when they share a range and
a colour map; a figure that has bars loses them instead, as MATLAB's toggle does

## Syntax

<div class="mx-form" markdown="1">

```python
mtexFig.colorbar()
```

A bar per axes, or one for all.

</div>

<div class="mx-form" markdown="1">

```python
mtexFig.colorbar(label='mrd')
```

With a label.

</div>

<div class="mx-form" markdown="1">

```python
mtexFig.colorbar(multiple=True)
```

A bar per axes, also where the ranges agree.

</div>

## Description

A figure of explicit colours, as a boundary coloured by num2rgb, shows the colour map over
the range setColorRange gave. mtexColorbar calls this on the current figure; further
keywords, as location, go to matplotlib's colorbar.

## Keywords

| keyword | default | description |
|---|---|---|
| `label` | `''` | the label of the bar, or a list of one label per bar in the order of the axes |
| `multiple` | `False` | a bar per axes even where the ranges and the colour maps agree |

## Output

| `bars` | list of the matplotlib colour bars drawn, empty when they were removed |

## See also

[mtexColorbar](mtexColorbar_py.html), [setColorRange](setColorRange_py.html), [mtexFigure.setColormap](mtexFigure.setColormap_py.html)

## Used on

[Grains3DProperties](Grains3DProperties_py.html), [IsotropicTheory](IsotropicTheory_py.html)

MATLAB's [mtexFigure.colorbar](mtexFigure.colorbar.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L361">source</a></font>
{% endraw %}
