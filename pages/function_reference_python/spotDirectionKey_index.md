---
title: 'The class spotDirectionKey'
sidebar: function_reference_sidebar
permalink: spotDirectionKey_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
each centre, a crystal direction, given its colour, fading to white with the kernel of
the angular distance to the nearest symmetric equivalent; several centres multiply

## Syntax

<div class="mx-form" markdown="1">

```python
spotDirectionKey(cs, center=Miller(1, 1, 1, cs), color=(0, 0, 1), psi=S2DeLaValleePoussinKernel(halfwidth=7.5*degree))
```

</div>

## Input

| `CS` | referenceFrame or symmetry defining equivalent directions |
| `center` | Miller or vector3d spot centres; None selects the z direction |
| `color` | one RGB triplet per centre; default red for one centre |
| `psi` | spherical kernel controlling colour spread; default halfwidth 10*degree |

## Members

| [center](spotDirectionKey.center_py.html) | the centres, with the equivalents under the group kept beside them |
| [direction2color](spotDirectionKey.direction2color_py.html) | the colours of directions under the spot key |
| [whiteCenter](spotDirectionKey.whiteCenter_py.html) | the first centre of the key |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys/__init__.py#L524">source</a></font>
{% endraw %}
