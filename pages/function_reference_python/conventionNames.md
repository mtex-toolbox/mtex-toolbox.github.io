---
title: 'conventionNames'
sidebar: function_reference_sidebar
permalink: conventionNames_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the eight written in the axis names of a frame, 'Y1↑→X1' for an Oxford file

## Syntax

'y↑→x', 'y↓→x', ...

```python
conventionNames()
```

'Y1↑→X1', 'Y1↓→X1', ...

```python
conventionNames(names=('X1', 'Y1', 'Z1'))
```

The eight conventions whose screen axes lie along reference axes, AXIS_CONVENTIONS, the
ones the import wizard offers, as Unicode pictograms.

## Output

| | |
|---|---|
| `names` | list of eight str |

## Keywords

| | default | |
|---|---|---|
| `names` | `('x', 'y', 'z')` | the names of the three reference axes |

## See also

[plottingConvention.char](plottingConvention.char_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plottingconvention.py#L300">source</a></font>
{% endraw %}
