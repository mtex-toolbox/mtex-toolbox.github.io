---
title: 'TSLDirectionKey.direction2color'
sidebar: function_reference_sidebar
permalink: TSLDirectionKey.direction2color_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [TSLDirectionKey](TSLDirectionKey_index_py.html).

the colours of directions under the TSL key; MATLAB's TSLDirectionKey/direction2color

## Syntax

The colours of crystal directions:

```python
rgb = key.direction2color(h)
```

Less saturated:

```python
rgb = key.direction2color(h, gray=0.5)
```

Each direction is brought into the sector of the Laue group, its polar coordinates about
the centre of the sector, from the first vertex, turned into hue and lightness without
the hue correction: white at the centre, the full colours on the boundary.

## Input

| | |
|---|---|
| `h` | vector3d or Miller, the directions |

## Output

| | |
|---|---|
| `rgb` | an array of shape h.shape + (3,), RGB values in [0, 1] |

## Keywords

| | default | |
|---|---|---|
| `gray` | `None` | the saturation, in [0, 1], by default 1; MATLAB's option grayValue |

## See also

[HSVDirectionKey](HSVDirectionKey_index_py.html), [HKLDirectionKey](HKLDirectionKey_index_py.html), [ipfTSLKey](ipfTSLKey_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys.py#L414">source</a></font>
{% endraw %}
