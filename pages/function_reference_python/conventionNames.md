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

<div class="mx-form" markdown="1">

```python
conventionNames()
```

'y↑→x', 'y↓→x', ...

</div>

<div class="mx-form" markdown="1">

```python
conventionNames(names=('X1', 'Y1', 'Z1'))
```

'Y1↑→X1', 'Y1↓→X1', ...

</div>

## Description

The eight conventions whose screen axes lie along reference axes, AXIS_CONVENTIONS, the
ones the import wizard offers, as Unicode pictograms.

## Keywords

| keyword | default | description |
|---|---|---|
| `names` | `('x', 'y', 'z')` | the names of the three reference axes |

## Output

| `names` | list of eight str |

## See also

[plottingConvention.char](plottingConvention.char_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plottingconvention.py#L324">source</a></font>
{% endraw %}
