---
title: 'mtexFigure.takeAxis'
sidebar: function_reference_sidebar
permalink: mtexFigure.takeAxis_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [mtexFigure](mtexFigure_index_py.html).

the axes the next plot draws into: the pending one, else a new one

## Syntax

<div class="mx-form" markdown="1">

```python
ax = mtexFig.takeAxis()
```

The axes for the next plot.

</div>

<div class="mx-form" markdown="1">

```python
ax = mtexFig.takeAxis(keep=True)
```

The pending axes kept as drawn, to annotate it.

</div>

## Description

The pending axes is the one nextAxis prepared or a plot left for the next; an axes already
drawn into is emptied for the new plot unless hold is on, as MATLAB's nextAxis(k) picks the
cell the next plot paints. Without a pending axes a new one is added to the layout.

## Keywords

| keyword | default | description |
|---|---|---|
| `keep` | `False` | leave a pending axes as it is, with what is drawn in it, for an annotation onto the plot it holds |

## Output

| `ax` | the matplotlib axes |

## See also

[nextAxis](nextAxis_py.html), [hold](hold_py.html), [mtexFigure](mtexFigure_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L175">source</a></font>
{% endraw %}
