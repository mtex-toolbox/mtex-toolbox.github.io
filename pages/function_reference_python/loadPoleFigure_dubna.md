---
title: 'loadPoleFigure_dubna'
sidebar: function_reference_sidebar
permalink: loadPoleFigure_dubna_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: loadPoleFigure_dubna.html
status: Reference
---
{% raw %}
the pole figures a file holds, or the files of a list, read by their format; MATLAB's
PoleFigure.load and loadPoleFigure

## Syntax

<div class="mx-form" markdown="1">

```python
pf = loadPoleFigure('Q(10-10)_amp.cnv', cs)
```

The format and the direction found from the file.

</div>

<div class="mx-form" markdown="1">

```python
pf = PoleFigure.load([f1, f2, f3], cs)
```

Several files, one pole figure or more each.

</div>

<div class="mx-form" markdown="1">

```python
pf = loadPoleFigure([f1, f2], [h1, [h2, h3]], cs, superposition=[1, [0.52, 1.23]])
```

Given directions, a superposed pair weighted.

</div>

<div class="mx-form" markdown="1">

```python
pf = loadPoleFigure('scan.dat', cs, interface='geesthacht')
```

A format named.

</div>

<div class="mx-form" markdown="1">

```python
pf = loadPoleFigure('scan.txt', h, cs, columnNames=['polar angle', 'azimuth angle', 'intensity'], radians=True)
```

A table.

</div>

## Description

The format follows the extension and the marker the file carries; interface= names it when
the extension leaves it open, one of 'dubna', 'ana', 'popla', 'labotex', 'aachen',
'aachen_exp', 'philips', 'plf', 'ibm', 'out1', 'slc', 'beartex', 'xrd', 'siemens', 'uxd',
'juelich', 'geesthacht', 'nja', 'pwd', 'rigaku', 'rigaku_dat', 'rigaku_txt', 'gpol', 'rw1',
'xrdml' or 'generic'.

The crystal directions are read off the file names (string2Miller) unless given. Give one
per file or, for a file of several pole figures, a list of them; a list inside it is a
superposition of directions, weighted equally unless superposition gives the weights. The
frames are given positionally.

A table option (columnNames, columns, header, delimiter, radians) reads a table whose columns
the caller names: the polar angle and the azimuth, in degrees unless radians=True, or x, y, z,
and the intensity.

## Input

| `fname` | a file name or a list of them |
| `h` | Miller, the crystal directions, a list of them, a list for a superposition (optional) |
| `cs, ss` | the crystal and the specimen frame (optional) |

## Keywords

| keyword | default | description |
|---|---|---|
| `interface` | `None` | the format: 'dubna', 'uxd', 'geesthacht', 'xrdml', 'generic', ...; by default told by the extension and the marker the file carries |
| `superposition` | `None` | the structure coefficients of the directions, one number or a list of numbers per pole figure |

## Output

| `pf` | a PoleFigure |

## See also

[PoleFigure](PoleFigure_index_py.html), [string2Miller](string2Miller_py.html), [exportPoleFigure](PoleFigure.export_py.html), [mtexdata](mtexdata_py.html)

MATLAB's [loadPoleFigure_dubna](loadPoleFigure_dubna.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/loadpolefigure.py#L395">source</a></font>
{% endraw %}
