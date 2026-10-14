---
title: 'xlabel'
sidebar: function_reference_sidebar
permalink: xlabel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a label under the current axes, which a spherical chart draws without axis lines, so
matplotlib's own label would not show

## Syntax

Under the current axes:

```python
xlabel('x')
```

Under the current axes of a figure given:

```python
xlabel('x', fig=mtexFig)
```

The current axes is the one nextAxis prepared, else the one drawn into last; without an
mtexFigure it is matplotlib's. Further keywords go to matplotlib's text.

## Input

| | |
|---|---|
| `text` | the label |

## Keywords

| | default | |
|---|---|---|
| `fig` | `None` | the mtexFigure whose current axes takes the label; the current figure by default |

## See also

[ylabel](ylabel_py.html), [mtexTitle](mtexTitle_py.html)

## Used on

[TwinningBoundaries](TwinningBoundaries_py.html), [MartensiteVariants](MartensiteVariants_py.html), [ParentChildVariants](ParentChildVariants_py.html), [TransformationTexture](TransformationTexture_py.html), [BoundaryTutorial](BoundaryTutorial_py.html), [GrainTutorial](GrainTutorial_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L621">source</a></font>
{% endraw %}
