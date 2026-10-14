---
title: 'black2whiteColorMap'
sidebar: function_reference_sidebar
permalink: black2whiteColorMap_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: black2whiteColorMap.html
status: Reference
---
{% raw %}
the black2white colour map, as MATLAB's black2whiteColorMap returns it

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = black2whiteColorMap()
```

256 colours.

</div>

<div class="mx-form" markdown="1">

```python
rgb = black2whiteColorMap(16)
```

16 colours.

</div>

## Description

The colours are interpolated linearly between the stops of the map; pass the result to
mtexColorMap or as a plot's colormap.

## Keywords

| keyword | default | description |
|---|---|---|
| `n` | `256` | the number of colours |

## Output

| `rgb` | an n x 3 array of rgb values in [0, 1] |

## See also

[mtexColorMap](mtexColorMap_py.html), [num2rgb](num2rgb_py.html)

MATLAB's [black2whiteColorMap](black2whiteColorMap.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L199">source</a></font>
{% endraw %}
