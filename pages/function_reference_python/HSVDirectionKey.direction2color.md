---
title: 'HSVDirectionKey.direction2color'
sidebar: function_reference_sidebar
permalink: HSVDirectionKey.direction2color_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [HSVDirectionKey](HSVDirectionKey_index_py.html).

the colours of directions under the key; MATLAB's HSVDirectionKey/direction2color

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = key.direction2color(h)
```

The colours of crystal directions.

</div>

<div class="mx-form" markdown="1">

```python
rgb = key.direction2color(h, gray=0.5)
```

One saturation for every direction.

</div>

## Description

Each direction is brought into the sector, then into the white half, the fold telling
which of the two centres its colours run from, and coloured by the colour sphere
(sphereColor) with the key's grayValue, grayGradient and colorStretching. A sharp key
(a finite maxAngle) instead brings each to the equivalent nearest the white centre and
reads the radius off the angle to it. Directions of zero or undefined length are black.

## Input

| `h` | vector3d or Miller, the directions |

## Keywords

| keyword | default | description |
|---|---|---|
| `gray` | `None` | the saturation of every direction, in [0, 1], instead of the fading towards the centres; MATLAB's option grayValue |

## Output

| `rgb` | an array of shape h.shape + (3,), RGB values in [0, 1] |

## See also

[sphereColor](sphereColor_py.html), [ipfHSVKey](ipfHSVKey_index_py.html), [plotKey](plotKey_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys.py#L368">source</a></font>
{% endraw %}
