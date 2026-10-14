---
title: 'loadPoleFigure_slc'
sidebar: function_reference_sidebar
permalink: loadPoleFigure_slc_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: loadPoleFigure_slc.html
status: Reference
---
{% raw %}
the pole figures a file holds, or the files of a list, read by their format

## Syntax

```python
loadPoleFigure('Q(10-10)_amp.cnv', cs)
loadPoleFigure([f1, f2], [h1, h23], cs, superposition=[1, [0.52, 1.23]])
loadPoleFigure('scan.dat', h, cs, interface='geesthacht')
loadPoleFigure('scan.txt', cs, columnNames=['polar angle', 'azimuth angle', 'intensity'], header=21)
```

The crystal directions are read off the file names unless given, one per file or, for
a file of several pole figures, a list of them; the frames are given positionally. The
format follows the extension and the marker the file carries, interface= names one of
INTERFACES, and a table option (columnNames, columns, header, delimiter, radians) reads a
table whose columns the caller names.

## Signature

```python
loadPoleFigure(fname, *args, interface=None, superposition=None, **kwargs)
```

MATLAB's [loadPoleFigure_slc](loadPoleFigure_slc.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/loadpolefigure.py#L373">source</a></font>
{% endraw %}
