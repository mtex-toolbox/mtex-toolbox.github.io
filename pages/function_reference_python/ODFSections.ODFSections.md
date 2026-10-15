---
title: 'ODFSections.ODFSections'
sidebar: function_reference_sidebar
permalink: ODFSections.ODFSections_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ODFSections.ODFSections.html
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

## Signature

<div class="mx-form" markdown="1">

```python
ODFSections(frameA, frameB, values, tol)
```

</div>

MATLAB's [ODFSections.ODFSections](ODFSections.ODFSections.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections/__init__.py#L95">source</a></font>
{% endraw %}
