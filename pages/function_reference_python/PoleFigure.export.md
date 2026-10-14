---
title: 'PoleFigure.export'
sidebar: function_reference_sidebar
permalink: PoleFigure.export_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.export.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

write every pole figure of a data set to its own three column table; returns the file names;
MATLAB's PoleFigure/export

## Syntax

Dubna_{101̅0}.txt, ..., the angles in radians:

```python
names = export(pf, 'dubna')
```

The angles in degrees:

```python
names = export(pf, 'dubna', degree=True)
```

Every crystal direction (or superposition of directions) gets the file
<fname>_<directions>.txt with three columns, the polar angle and the azimuth of the specimen
directions and the intensity, the table loadPoleFigure reads back.

## Input

| | |
|---|---|
| `pf` | a PoleFigure |
| `fname` | the base name of the files |

## Output

| | |
|---|---|
| `names` | the names of the files written |

## Keywords

| | default | |
|---|---|---|
| `degree` | `False` | the polar angle and the azimuth in degrees instead of radians |

## See also

[loadPoleFigure](loadPoleFigure_aachen_py.html), [PoleFigure.load](PoleFigure.load_py.html)

MATLAB's [PoleFigure.export](PoleFigure.export.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/exportpolefigure.py#L20">source</a></font>
{% endraw %}
