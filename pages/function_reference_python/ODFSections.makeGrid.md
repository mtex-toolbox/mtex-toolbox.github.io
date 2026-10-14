---
title: 'ODFSections.makeGrid'
sidebar: function_reference_sidebar
permalink: ODFSections.makeGrid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [ODFSections](ODFSections_index_py.html).

the orientations of the nodes of every section chart, section by section, at which values
are computed for oS.plot(values); MATLAB's makeGrid

## Syntax

<div class="mx-form" markdown="1">

```python
ori = oS.makeGrid()
```

The nodes at 2.5 degree.

</div>

<div class="mx-form" markdown="1">

```python
ori = oS.makeGrid(resolution=5*degree)
```

A coarser grid.

</div>

<div class="mx-form" markdown="1">

```python
oS.plot(odf.eval(ori))
```

Values on the nodes drawn as sections.

</div>

## Description

The nodes are the grids of the section charts, chart by chart, turned into orientations;
the sections remember the resolution and the node counts, so oS.plot(values) splits the
values onto the charts again.

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `2.5*degree` | the spacing of the grid on every chart |

## Output

| `ori` | orientation, a list of the nodes of every chart in turn |

## See also

[plotSection](S2Fun.plotSection_py.html), [sphericalProjection.grid](sphericalProjection.grid_py.html)

## Used on

[SlipTransmission](SlipTransmission_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L159">source</a></font>
{% endraw %}
