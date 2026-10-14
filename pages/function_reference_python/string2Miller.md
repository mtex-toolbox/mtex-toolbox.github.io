---
title: 'string2Miller'
sidebar: function_reference_sidebar
permalink: string2Miller_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: string2Miller.html
status: Reference
---
{% raw %}
the Miller indices a file name or a header line spells: four digits with optional signs,
else three; every such group of the name is one direction, several a superposition;
MATLAB's string2Miller

## Syntax

{10-11}:

```python
h = string2Miller('Q(10-11)_amp.cnv', cs)
```

Two directions, a superposition:

```python
h = string2Miller('Q(10-11)(01-11)_amp.cnv', cs)
```

{002} of the cubic frame:

```python
h = string2Miller('PF_002_R.UXD')
```

Only the base name of a path is read. Four digits from 0 to 6 with optional minus signs are
taken when the first three sum to zero, else three digits without a sign, else three with
signs; a name with none is (100). MATLAB's second output, whether the name spelled one, is
not returned.

## Input

| | |
|---|---|
| `s` | a file name or a line of text |

## Output

| | |
|---|---|
| `h` | Miller, one direction or several |

## Keywords

| | default | |
|---|---|---|
| `CS` | `None` | the crystal frame of the directions, m-3m when not given |

## See also

[loadPoleFigure](loadPoleFigure_aachen_py.html), [Miller](Miller_py.html)

MATLAB's [string2Miller](string2Miller.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/loadpolefigure.py#L35">source</a></font>
{% endraw %}
