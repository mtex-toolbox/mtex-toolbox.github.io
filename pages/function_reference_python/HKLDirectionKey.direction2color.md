---
title: 'HKLDirectionKey.direction2color'
sidebar: function_reference_sidebar
permalink: HKLDirectionKey.direction2color_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [HKLDirectionKey](HKLDirectionKey_index_py.html).

the colours of directions under the HKL key; MATLAB's HKLDirectionKey/direction2color

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = key.direction2color(h)
```

The colours of crystal directions.

</div>

## Description

Each direction is brought into the sector of the Laue group, red at its pole, green and
blue along its two edges, blended linearly over the polar angle and the azimuth; for the
Laue group -1 three lobes of the upper hemisphere.

## Input

| `h` | vector3d or Miller, the directions |

## Keywords

| keyword | default | description |
|---|---|---|
| `gray` | `None` | taken for the calling form of the other keys and not used, as in MATLAB |

## Output

| `rgb` | an array of shape h.shape + (3,), RGB values in [0, 1] |

## See also

[HSVDirectionKey](HSVDirectionKey_index_py.html), [TSLDirectionKey](TSLDirectionKey_index_py.html), [ipfHKLKey](ipfHKLKey_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys/__init__.py#L488">source</a></font>
{% endraw %}
