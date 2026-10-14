---
title: 'red2blueColorMap'
sidebar: function_reference_sidebar
permalink: red2blueColorMap_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: red2blueColorMap.html
status: Reference
---
{% raw %}
the red2blue colour map, as MATLAB's red2blueColorMap returns it

## Syntax

256 colours:

```python
rgb = red2blueColorMap()
```

16 colours:

```python
rgb = red2blueColorMap(16)
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

MATLAB's [red2blueColorMap](red2blueColorMap.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L199">source</a></font>
{% endraw %}
