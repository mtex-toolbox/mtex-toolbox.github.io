---
title: 'loadPoleFigure_beartex'
sidebar: function_reference_sidebar
permalink: loadPoleFigure_beartex_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: loadPoleFigure_beartex.html
status: Reference
---
{% raw %}
the pole figures a file holds, or the files of a list, read by their format; MATLAB's
PoleFigure.load and loadPoleFigure

## Syntax

The format and the direction found from the file:

```python
pf = loadPoleFigure('Q(10-10)_amp.cnv', cs)
```

Several files, one pole figure or more each:

```python
pf = PoleFigure.load([f1, f2, f3], cs)
```

Given directions, a superposed pair weighted:

```python
pf = loadPoleFigure([f1, f2], [h1, [h2, h3]], cs, superposition=[1, [0.52, 1.23]])
```

A format named:

```python
pf = loadPoleFigure('scan.dat', cs, interface='geesthacht')
```

A table:

```python
pf = loadPoleFigure('scan.txt', h, cs, columnNames=['polar angle', 'azimuth angle', 'intensity'], radians=True)
```

The crystal directions are read off the file names (string2Miller) unless given, one per
file or, for a file of several pole figures, a list of them, a list inside it for a
superposition; the frames are given positionally. The format follows the extension and the
marker the file carries; interface= names one of INTERFACES when the extension leaves it
open. A table option (columnNames, columns, header, delimiter, radians) reads a table whose
columns the caller names: the polar angle and the azimuth in degrees unless radians=True,
or x, y, z, and the intensity.

## Input

| | |
|---|---|
| `fname` | a file name or a list of them |
| `h` | Miller, the crystal directions, a list of them, a list for a superposition (optional) |
| `cs, ss` | the crystal and the specimen frame (optional) |

## Output

| | |
|---|---|
| `pf` | a PoleFigure |

## Keywords

| | default | |
|---|---|---|
| `interface` | `None` | the format: 'dubna', 'uxd', 'geesthacht', 'xrdml', 'generic', ...; by default told by the extension and the marker the file carries |
| `superposition` | `None` | the structure coefficients of the directions, one number or a list of numbers per pole figure |

## See also

[PoleFigure](PoleFigure_index_py.html), [string2Miller](string2Miller_py.html), [exportPoleFigure](PoleFigure.export_py.html), [mtexdata](mtexdata_py.html)

MATLAB's [loadPoleFigure_beartex](loadPoleFigure_beartex.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/loadpolefigure.py#L392">source</a></font>
{% endraw %}
