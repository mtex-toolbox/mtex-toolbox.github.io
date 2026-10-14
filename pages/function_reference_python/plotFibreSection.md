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
a fibre on the current section plot, as a chain of dots through the sections it passes;
what plot(f) does on a section plot

## Syntax

The fibre over the sections of an ODF:

```python
odf.plotSection(); plot(f)
```

Fewer and red dots:

```python
plot(f, points=200, lineColor='r')
```

The same, called directly:

```python
plotFibreSection(f)
```

The fibre is sampled at evenly spaced orientations, each drawn as a dot in the section it
lies in. Further keywords go to the markers, as markerSize; lineWidth is ignored.

## Input

| | |
|---|---|
| `f` | fibre |

## Output

| | |
|---|---|
| `h` | list of the marker handles |

## Keywords

| | default | |
|---|---|---|
| `points` | `1000` | the number of orientations along the fibre |
| `lineColor` | `'k'` | the colour of the dots |

## See also

[fibre](fibre_index_py.html), [plotSection](S2Fun.plotSection_py.html), [annotateSection](annotateSection_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectionplot.py#L279">source</a></font>
{% endraw %}
