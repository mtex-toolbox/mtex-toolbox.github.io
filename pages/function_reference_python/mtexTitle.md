---
title: 'mtexTitle'
sidebar: function_reference_sidebar
permalink: mtexTitle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a title over an axes

## Syntax

<div class="mx-form" markdown="1">

```python
mtexTitle('pole figures')
```

The title of the current axes.

</div>

<div class="mx-form" markdown="1">

```python
mtexTitle(ax, '(100)')
```

The title of the axes given.

</div>

<div class="mx-form" markdown="1">

```python
mtexTitle('(110)', fig=mtexFig, fontSize=14)
```

The axes of a figure given, larger.

</div>

## Description

The current axes is the one drawn into last; an axes made with plt.subplot outside an
mtexFigure takes the title as well. Further keywords go to matplotlib's set_title, fontSize
as its fontsize. MATLAB's 'global' title over all axes and its alignments have no
counterpart.

## Input

| `ax` | the matplotlib axes, before the text |
| `text` | the title |

## Keywords

| keyword | default | description |
|---|---|---|
| `fig` | `None` | the mtexFigure whose axes drawn into last takes the title; the current one by default |

## See also

[xlabel](xlabel_py.html), [ylabel](ylabel_py.html), [mtexFigure](mtexFigure_index_py.html)

## Used on

[FundamentalSector](FundamentalSector_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3DOperations](Grains3DOperations_py.html), [Grains3DProperties](Grains3DProperties_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [NeperInterface](NeperInterface_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html), [EBSDSimulation](EBSDSimulation_py.html), [EBSDSpatialTransform](EBSDSpatialTransform_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L563">source</a></font>
{% endraw %}
