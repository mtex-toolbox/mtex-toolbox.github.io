---
title: 'ylabel'
sidebar: function_reference_sidebar
permalink: ylabel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a label left of an axes, written beside a spherical chart, which has no axis lines to
carry matplotlib's own label

## Syntax

Left of the current axes:

```python
ylabel('y')
```

Left of the axes given:

```python
ylabel(ax, 'y')
```

The current axes is the one nextAxis prepared, else the one drawn into last; without an
mtexFigure it is matplotlib's. Further keywords go to matplotlib's text.

## Input

| | |
|---|---|
| `ax` | the matplotlib axes, before the text |
| `text` | the label |

## Keywords

| | default | |
|---|---|---|
| `fig` | `None` | the mtexFigure whose current axes takes the label; the current figure by default |

## See also

[xlabel](xlabel_py.html), [mtexTitle](mtexTitle_py.html)

## Used on

[VPSCImport](VPSCImport_py.html), [BoundaryTutorial](BoundaryTutorial_py.html), [GrainTutorial](GrainTutorial_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L593">source</a></font>
{% endraw %}
