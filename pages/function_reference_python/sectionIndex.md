---
title: 'sectionIndex'
sidebar: function_reference_sidebar
permalink: sectionIndex_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the section a coordinate falls in, or -1 when it falls beside every one: the distance to
a section value taken over the period of the coordinate

## Syntax

<div class="mx-form" markdown="1">

```python
k = sectionIndex(x, values, tol)
```

The nearest section within tol, -1 beside every one.

</div>

<div class="mx-form" markdown="1">

```python
k = sectionIndex(x, values, tol, period=360*degree)
```

A coordinate that wraps, 359 degree next to 0.

</div>

## Description

Every coordinate is compared with every section value; the nearest one is taken when it
lies within tol, else -1. With a finite period the distance is taken modulo the period,
so the sections of an angle that turns are found across its seam.

## Input

| `x` | array of coordinates, the angles that pick the section |
| `values` | the section values |
| `tol` | the largest distance from a section value that still falls into it |

## Keywords

| keyword | default | description |
|---|---|---|
| `period` | `inf` | the period of the coordinate, inf for one that does not wrap |

## Output

| `k` | int array of the shape of x, the index of the section or -1 |

## See also

[sectionTolerance](sectionTolerance_py.html), [ODFSections](ODFSections_index_py.html), [newODFSectionPlot](newODFSectionPlot_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections/__init__.py#L47">source</a></font>
{% endraw %}
