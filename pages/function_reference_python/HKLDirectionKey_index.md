---
title: 'The class HKLDirectionKey'
sidebar: function_reference_sidebar
permalink: HKLDirectionKey_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: HKLDirectionKey_index.html
status: Reference
---
{% raw %}
the HKL vendor key on the Laue group: the three primaries blended linearly over the polar
angle and the azimuth of the fundamental sector

## Syntax

<div class="mx-form" markdown="1">

```python
key = HKLDirectionKey(cs)
```

</div>

## Input

| `CS` | crystalFrame or symmetry; colouring uses its Laue group |

## Members

| [direction2color](HKLDirectionKey.direction2color_py.html) | the colours of directions under the HKL key |
| [whiteCenter](HKLDirectionKey.whiteCenter_py.html) | the centre of the fundamental sector |

MATLAB's [HKLDirectionKey_index](HKLDirectionKey_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys.py#L466">source</a></font>
{% endraw %}
