---
title: 'loadEBSD_dream3d'
sidebar: function_reference_sidebar
permalink: loadEBSD_dream3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: loadEBSD_dream3d.html
status: Reference
---
{% raw %}
the map a file holds, read by its extension

## Syntax

```python
loadEBSD(fname, CS=None, *args, interface=None, grid=True, **kwargs)
```

```python
loadEBSD('map.ang'), loadEBSD('map.ctf')          the vendor formats declare their phases
loadEBSD('map.txt', CS=cs, columnNames=[...])     a table whose columns the caller names
loadEBSD('map.dat', interface='ang')              the format named rather than read off the name
loadEBSD(['a.ang', 'b.ang'])                      one map per file
```

Every keyword of the format's loader passes through: eulerCorrection, setting for an EDAX
file, columnNames, columns, radians, delimiter, header for a table. A complete scan comes
back on its grid; grid=False keeps the list, and so does a scan whose measurements do not
form a grid, which says why.

MATLAB's [loadEBSD_dream3d](loadEBSD_dream3d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/load.py#L460">source</a></font>
{% endraw %}
