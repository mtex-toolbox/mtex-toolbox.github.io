---
title: 'blue2redColorMap'
sidebar: function_reference_sidebar
permalink: blue2redColorMap_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: blue2redColorMap.html
status: Reference
---
{% raw %}
the blue2red colour map, as MATLAB's blue2redColorMap returns it

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = blue2redColorMap()
```

256 colours.

</div>

<div class="mx-form" markdown="1">

```python
rgb = blue2redColorMap(16)
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

## Used on

[TiltAndTwistBoundaries](TiltAndTwistBoundaries_py.html)

MATLAB's [blue2redColorMap](blue2redColorMap.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L199">source</a></font>
{% endraw %}
