---
title: 'referenceFrame.conventionChar'
sidebar: function_reference_sidebar
permalink: referenceFrame.conventionChar_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: referenceFrame.conventionChar.html
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

the plotting convention in the frame's own axes names, e.g. TD←RD↑, or the pictogram in
x, y, z; MATLAB's conventionChar

## Syntax

The frame's own convention:

```python
c = ss.conventionChar()
```

Another one, in the frame's names:

```python
c = ss.conventionChar(plottingConvention('x↑→y'))
```

The canonical X, Y, Z frame keeps the form of plottingConvention.char; empty when the frame
carries no convention and none is given.

## Input

| | |
|---|---|
| `ss` | referenceFrame |

## Output

| | |
|---|---|
| `c` | str |

## Keywords

| | default | |
|---|---|---|
| `pC` | `None` | plottingConvention; by default the frame's how2plot |

## See also

[plottingConvention](plottingConvention_index_py.html), [crystalFrame.conventionChar](crystalFrame.conventionChar_py.html)

MATLAB's [referenceFrame.conventionChar](referenceFrame.conventionChar.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L574">source</a></font>
{% endraw %}
