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
what an EBSD file says about itself from its header alone: format, vendor, phases,
properties, data sets, grid, step and Euler correction, as inspectEBSD returns it; a volume
has a grid and a step of three, and says what it holds of its grains

## Members

| | |
|---|---|
| [describe](EBSDFileInfo.describe_py.html) | the rows of the file information panel, name and value |
| [eulerAxesNames](EBSDFileInfo.eulerAxesNames_py.html) | the axis names the vendor writes its Euler angles in |
| [extent](EBSDFileInfo.extent_py.html) | the lengths the grid spans along its axes, in the scan unit |
| [is3d](EBSDFileInfo.is3d_py.html) | whether the file holds a volume, which EBSD3.load reads |
| [name](EBSDFileInfo.name_py.html) | the file name without its folder |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/inspect.py#L30">source</a></font>
{% endraw %}
