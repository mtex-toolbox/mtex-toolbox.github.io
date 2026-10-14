---
title: 'spotDirectionKey.direction2color'
sidebar: function_reference_sidebar
permalink: spotDirectionKey.direction2color_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spotDirectionKey](spotDirectionKey_index_py.html).

the colours of directions under the spot key

## Syntax

The colours of crystal directions:

```python
rgb = key.direction2color(h)
```

Every direction starts white and is multiplied, for every centre, by the colour of the
centre faded with the kernel psi of the angle to the nearest equivalent of the centre:
the full colour at a centre, white far from all.

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
| `gray` | `None` | taken for the calling form of the other keys and not used |

## See also

[spotColorKey](spotColorKey_index_py.html), [HSVDirectionKey](HSVDirectionKey_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys.py#L525">source</a></font>
{% endraw %}
