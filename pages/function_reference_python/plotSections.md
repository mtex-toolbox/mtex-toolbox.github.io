---
title: 'plotSections'
sidebar: function_reference_sidebar
permalink: plotSections_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the empty charts of a section plot, one per section, with the reference field of every
section; MATLAB's ODFSections/plot

## Syntax

<div class="mx-form" markdown="1">

```python
plot(oS)
```

The charts of the sections.

</div>

<div class="mx-form" markdown="1">

```python
fig = plotSections(oS, columns=2)
```

In two columns.

</div>

<div class="mx-form" markdown="1">

```python
plotSections(oS, field=False)
```

Without the reference fields.

</div>

## Description

A section plot of orientations or of a function draws into these charts; the figure keeps
oS as its sections, so that later plots of orientations, fibres or annotations go into the
section each lies in. Sections that rescale their coordinate show the sector all of them
lie in. The other keywords are those of the spherical charts, figSize and layout among
them.

## Input

| `oS` | ODFSections, as phi2Sections or sigmaSections |

## Keywords

| keyword | default | description |
|---|---|---|
| `columns` | `0` | the number of columns of sections; by default a grid near a slightly wide picture |
| `field` | `True` | draw the field each section counts its coordinate from, where it has one |

## Output

| `fig` | mtexFigure |

## See also

[plotSection](S2Fun.plotSection_py.html), [phi2Sections](phi2Sections_index_py.html), [sigmaSections](sigmaSections_index_py.html), [newODFSectionPlot](newODFSectionPlot_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectionplot.py#L241">source</a></font>
{% endraw %}
