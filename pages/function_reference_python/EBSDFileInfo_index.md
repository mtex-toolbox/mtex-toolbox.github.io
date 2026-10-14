---
title: 'The class EBSDFileInfo'
sidebar: function_reference_sidebar
permalink: EBSDFileInfo_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
metadata describing an EBSD file before its measurement arrays are imported

## Syntax

<div class="mx-form" markdown="1">

```python
info = inspectEBSD('map.ctf')
rows = info.describe()
```

</div>

## Description

inspectEBSD reads header information to identify the format, phases, properties and scan
geometry. This result describes the file; it does not contain the loaded EBSD measurements.
For a volume, grid and step have three entries. Metadata not available from the header
remains unset.

## Properties

| `path` | source filename |
| `format` | detected file interface |
| `vendor` | instrument or software vendor |
| `size` | file size in bytes |
| `date` | modification time when available |
| `phases` | phaseList of declared crystal phases |
| `properties` | available per-measurement property names |
| `dataSets` | available data sets, when the format stores several |
| `points` | measurement count when known |
| `grid` | scan dimensions when known |
| `step` | scan spacing along each grid axis |
| `eulerCorrection` | rotation used to interpret the vendor Euler convention |
| `unit` | spatial scan unit |
| `header` | remaining header metadata |
| `grains` | available grain data sets for volume formats |
| `is3d` | whether the grid has three spatial dimensions |

## See also

[inspectEBSD](inspectEBSD_py.html), [loadEBSD](loadEBSD_ang_py.html), [loadEBSD3](loadEBSD3_py.html)

## Members

| [describe](EBSDFileInfo.describe_py.html) | the rows of the file information panel, name and value |
| [eulerAxesNames](EBSDFileInfo.eulerAxesNames_py.html) | the axis names the vendor writes its Euler angles in |
| [extent](EBSDFileInfo.extent_py.html) | the lengths the grid spans along its axes, in the scan unit |
| [is3d](EBSDFileInfo.is3d_py.html) | whether the file holds a volume, which EBSD3.load reads |
| [name](EBSDFileInfo.name_py.html) | the file name without its folder |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/inspect.py#L30">source</a></font>
{% endraw %}
