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

<div class="mx-form" markdown="1">

```python
c = cs.conventionChar()
```

The frame's own convention.

</div>

<div class="mx-form" markdown="1">

```python
c = cs.conventionChar(plottingConvention.ij)
```

Another one, in crystal axes.

</div>

## Description

The axis out of the screen and the one to the east are named, from the direct and the
reciprocal axes, since the axis to the north is in general none of them; where none fits
the form of plottingConvention.char is returned.

## Input

| `cs` | crystalFrame |

## Keywords

| keyword | default | description |
|---|---|---|
| `pC` | `None` | plottingConvention; by default the frame's how2plot |

## Output

| `c` | str |

## See also

[plottingConvention](plottingConvention_index_py.html), [referenceFrame.conventionChar](referenceFrame.conventionChar_py.html)

MATLAB's [crystalFrame.conventionChar](crystalFrame.conventionChar.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames/__init__.py#L1068">source</a></font>
{% endraw %}
