---
title: 'The class TSLDirectionKey'
sidebar: function_reference_sidebar
permalink: TSLDirectionKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: TSLDirectionKey.html
status: Reference
---
{% raw %}
the vendors' keys, both on the Laue group whatever the frame carries (MATLAB
TSLDirectionKey, HKLDirectionKey): TSL reads the polar coordinates of the sector from its
centre, unfolded and without the hue correction; HKL blends the three primaries linearly
over the polar angle and the azimuth of the sector

## Input

| `CS` | crystalFrame or symmetry; colouring uses its Laue group |

## Members

| [direction2color](TSLDirectionKey.direction2color_py.html) | the colours of directions under the TSL key |
| [whiteCenter](TSLDirectionKey.whiteCenter_py.html) | the centre of the sector the colours run from |

MATLAB's [TSLDirectionKey](TSLDirectionKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys.py#L420">source</a></font>
{% endraw %}
