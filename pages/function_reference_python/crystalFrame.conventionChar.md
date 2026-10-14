---
title: 'crystalFrame.conventionChar'
sidebar: function_reference_sidebar
permalink: crystalFrame.conventionChar_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalFrame.conventionChar.html
status: Reference
---
{% raw %}
A method of [crystalFrame](crystalFrame_index_py.html).

the plotting convention in crystal directions, e.g. ⊙c→a, with the reciprocal axes named
too; MATLAB's crystalFrame.conventionChar

## Syntax

The frame's own convention:

```python
c = cs.conventionChar()
```

Another one, in crystal axes:

```python
c = cs.conventionChar(plottingConvention.ij)
```

The axis out of the screen and the one to the east are named, from the direct and the
reciprocal axes, since the axis to the north is in general none of them; where none fits
the form of plottingConvention.char is returned.

## Input

| | |
|---|---|
| `cs` | crystalFrame |

## Output

| | |
|---|---|
| `c` | str |

## Keywords

| | default | |
|---|---|---|
| `pC` | `None` | plottingConvention; by default the frame's how2plot |

## See also

[plottingConvention](plottingConvention_index_py.html), [referenceFrame.conventionChar](referenceFrame.conventionChar_py.html)

MATLAB's [crystalFrame.conventionChar](crystalFrame.conventionChar.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L977">source</a></font>
{% endraw %}
