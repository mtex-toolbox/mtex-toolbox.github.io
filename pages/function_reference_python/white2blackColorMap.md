---
title: 'white2blackColorMap'
sidebar: function_reference_sidebar
permalink: white2blackColorMap_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: white2blackColorMap.html
status: Reference
---
{% raw %}
the white2black colour map, as MATLAB's white2blackColorMap returns it

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = white2blackColorMap()
```

128 colours, as MATLAB's.

</div>

<div class="mx-form" markdown="1">

```python
rgb = white2blackColorMap(16)
```

16 colours.

</div>

## Description

The colours are interpolated linearly between the stops of the map; pass the result to
mtexColorMap or as a plot's colormap.

## Keywords

| keyword | default | description |
|---|---|---|
| `n` | `128` | the number of colours |

## Output

| `rgb` | an n x 3 array of rgb values in [0, 1] |

## See also

[mtexColorMap](mtexColorMap_py.html), [num2rgb](num2rgb_py.html)

MATLAB's [white2blackColorMap](white2blackColorMap.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L208">source</a></font>
{% endraw %}
