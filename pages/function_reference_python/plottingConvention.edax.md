---
title: 'plottingConvention.edax'
sidebar: function_reference_sidebar
permalink: plottingConvention.edax_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [plottingConvention](plottingConvention_index_py.html).

the EDAX/TSL frame of the given setting, 1 to 4, z out of the screen

## Syntax

Setting 2, y pointing west:

```python
pC = plottingConvention.edax()
```

Y pointing east:

```python
pC = plottingConvention.edax(setting=1)
```

The conventions that match EDAX's Euler reference frames A1 to A4, to compare
orientation plots with EDAX's software; east is y, -y, x or -x. MATLAB warns when no
setting is given, the port takes 2 silently.

## Output

| | |
|---|---|
| `pC` | plottingConvention |

## Keywords

| | default | |
|---|---|---|
| `setting` | `2` | the EDAX setting, 1 to 4 |

## See also

[plottingConvention](plottingConvention_index_py.html), [plottingConvention.default](plotx2east_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plottingconvention.py#L65">source</a></font>
{% endraw %}
