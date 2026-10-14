---
title: 'plotFibreSection'
sidebar: function_reference_sidebar
permalink: plotFibreSection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a fibre on the current section plot, as lines through the sections it passes; what
plot(f) does on a section plot, MATLAB's line of the orientations of the fibre

## Syntax

<div class="mx-form" markdown="1">

```python
odf.plotSection(); plot(f)
```

The fibre over the sections of an ODF.

</div>

<div class="mx-form" markdown="1">

```python
plot(f, points=200, lineColor='r', lineWidth=2)
```

Coarser, red and thicker.

</div>

<div class="mx-form" markdown="1">

```python
plotFibreSection(f)
```

The same, called directly.

</div>

## Description

The fibre is sampled at evenly spaced orientations and every symmetric equivalent of them
is put into the section it lies in; neighbours along the fibre in one section are joined by
a line, which breaks where the fibre leaves the section or the chart. Further keywords go to
the lines.

## Input

| `f` | fibre |

## Keywords

| keyword | default | description |
|---|---|---|
| `points` | `1000` | the number of orientations along the fibre |
| `lineColor` | `'k'` | the colour of the lines |
| `lineWidth` | `1.5` | the width of the lines |

## Output

| `h` | list of the line handles |

## See also

[fibre](fibre_index_py.html), [plotSection](S2Fun.plotSection_py.html), [annotateSection](annotateSection_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectionplot.py#L279">source</a></font>
{% endraw %}
