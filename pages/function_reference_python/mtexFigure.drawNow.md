---
title: 'mtexFigure.drawNow'
sidebar: function_reference_sidebar
permalink: mtexFigure.drawNow_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mtexFigure.drawNow.html
status: Reference
---
{% raw %}
A method of [mtexFigure](mtexFigure_index_py.html).

the figure drawn, resized first when a size is given; MATLAB's drawNow(mtexFig)

## Syntax

<div class="mx-form" markdown="1">

```python
mtexFig.drawNow()
```

The figure drawn as it is.

</div>

<div class="mx-form" markdown="1">

```python
mtexFig.drawNow(figSize='large')
```

Resized to a named size of its layout.

</div>

## Keywords

| keyword | default | description |
|---|---|---|
| `figSize` | `None` | 'tiny', 'small', 'medium', 'normal', 'large', 'huge', scaling the size the layout gives, or (width, height) in inches; by default the size is kept |

## See also

[mtexFigure](mtexFigure_index_py.html), [saveFigure](saveFigure_py.html)

## Used on

[MartensiteVariants](MartensiteVariants_py.html), [ParentChildVariants](ParentChildVariants_py.html), [TransformationTexture](TransformationTexture_py.html), [Annotations](Annotations_py.html), [S2Bingham](S2Bingham_py.html), [VectorsDensityEstimation](VectorsDensityEstimation_py.html)

MATLAB's [mtexFigure.drawNow](mtexFigure.drawNow.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L418">source</a></font>
{% endraw %}
