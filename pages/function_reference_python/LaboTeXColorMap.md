---
title: 'LaboTeXColorMap'
sidebar: function_reference_sidebar
permalink: LaboTeXColorMap_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: LaboTeXColorMap.html
status: Reference
---
{% raw %}
the LaboTeX colour map, as MATLAB's LaboTeXColorMap returns it

## Syntax

256 colours:

```python
rgb = LaboTeXColorMap()
```

16 colours:

```python
rgb = LaboTeXColorMap(16)
```

The colours are interpolated linearly between the stops of the map; pass the result to
mtexColorMap or as a plot's colormap.

## Output

| | |
|---|---|
| `rgb` | an n x 3 array of rgb values in [0, 1] |

## Keywords

| | default | |
|---|---|---|
| `n` | `256` | the number of colours |

## See also

[mtexColorMap](mtexColorMap_py.html), [num2rgb](num2rgb_py.html)

MATLAB's [LaboTeXColorMap](LaboTeXColorMap.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L199">source</a></font>
{% endraw %}
