---
title: 'mtexFigure.setColorRange'
sidebar: function_reference_sidebar
permalink: mtexFigure.setColorRange_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [mtexFigure](mtexFigure_index_py.html).

one colour range over every axes ('equal'), each axes its own ('tight'), or one given
as (lo, hi)

## Syntax

<div class="mx-form" markdown="1">

```python
mtexFig.setColorRange()
```

One range over every axes.

</div>

<div class="mx-form" markdown="1">

```python
mtexFig.setColorRange('tight')
```

Each axes the range of its own data.

</div>

<div class="mx-form" markdown="1">

```python
mtexFig.setColorRange((0, 5))
```

The range given.

</div>

## Description

A filled contour plot is drawn again with its levels over the new range, and the colour
bars of the figure follow it. A figure of explicit colours keeps a range given for the bar
mtexColorbar draws.

## Input

| `colorRange` | 'equal', 'tight' or (lo, hi) |

## See also

[setColorRange](setColorRange_py.html), [mtexFigure.colorbar](mtexFigure.colorbar_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
mtexFigure.setColorRange(self, colorRange='equal')
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L235">source</a></font>
{% endraw %}
