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

<div class="mx-form" markdown="1">

```python
names = export(pf, 'dubna')
```

Dubna_{101̅0}.txt, ..., the angles in radians.

</div>

<div class="mx-form" markdown="1">

```python
names = export(pf, 'dubna', degree=True)
```

The angles in degrees.

</div>

## Description

Every crystal direction (or superposition of directions) gets the file
<fname>_<directions>.txt with three columns, the polar angle and the azimuth of the specimen
directions and the intensity, the table loadPoleFigure reads back, with radians=True unless
written with degree=True. The angles are in radians by default, as MATLAB writes them.

## Input

| `pf` | a PoleFigure |
| `fname` | the base name of the files |

## Keywords

| keyword | default | description |
|---|---|---|
| `degree` | `False` | the polar angle and the azimuth in degrees instead of radians |

## Output

| `names` | the names of the files written |

## See also

[loadPoleFigure](loadPoleFigure_aachen_py.html), [PoleFigure.load](PoleFigure.load_py.html)

MATLAB's [PoleFigure.export](PoleFigure.export.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/exportpolefigure.py#L21">source</a></font>
{% endraw %}
