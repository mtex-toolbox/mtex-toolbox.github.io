---
title: 'The class ODFSections'
sidebar: function_reference_sidebar
permalink: ODFSections_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ODFSections_index.html
status: Reference
---
{% raw %}
sections through orientation space

## Syntax

<div class="mx-form" markdown="1">

```python
oS.frameA, oS.frameB
```

The two frames.

</div>

<div class="mx-form" markdown="1">

```python
oS.tol
```

The tolerance an orientation may deviate from a section.

</div>

<div class="mx-form" markdown="1">

```python
oS.numSections
```

How many.

</div>

<div class="mx-form" markdown="1">

```python
oS.sectionCharts(k)
```

The charts section k is drawn on.

</div>

<div class="mx-form" markdown="1">

```python
oS.sectionData(ori)
```

Where the equivalents of a list fall: directions, section, source.

</div>

<div class="mx-form" markdown="1">

```python
oS.orientationsAt(k, v)
```

The orientations at points of a chart of section k.

</div>

<div class="mx-form" markdown="1">

```python
oS.plot(x, ...)
```

PlotSection(x, oS, ...).

</div>

## Input

| `frameA` | crystal reference frame |
| `frameB` | specimen reference frame |
| `values` | section angles in radians |
| `tol` | angular acceptance tolerance in radians for assigning orientations to sections |

## Members

| [CS](ODFSections.CS_py.html) | the first frame of the sections, frameA |
| [makeGrid](ODFSections.makeGrid_py.html) | the orientations of the nodes of every section chart, section by section, at which values are computed for oS.plot(values) |
| [numSections](ODFSections.numSections_py.html) | the number of sections |
| [ODFSections](ODFSections.ODFSections_py.html) | sections through orientation space |
| [plot](ODFSections.plot_py.html) | oS.plot(odf), oS.plot(ori), and oS.plot(values, 'smooth') of values on makeGrid's nodes |
| [quiver](ODFSections.quiver_py.html) | arrows: tangent vectors at directions, a vector or axis field on the sphere, arrows at orientations in the sections of the current figure, or directions on a map or a volume |
| [sectionField](ODFSections.sectionField_py.html) | the directions and vectors of a field drawn over section k, None for sections without one |
| [sectionScale](ODFSections.sectionScale_py.html) | the scale of the axes of section k, one unless the section shrinks with its value |
| [SS](ODFSections.SS_py.html) | the second frame of the sections, frameB |

MATLAB's [ODFSections_index](ODFSections_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L95">source</a></font>
{% endraw %}
