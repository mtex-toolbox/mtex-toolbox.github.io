---
title: 'The class spotColorKey'
sidebar: function_reference_sidebar
permalink: spotColorKey_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
highlight selected orientations with colours that fade to white with disorientation

## Syntax

<div class="mx-form" markdown="1">

```python
key = spotColorKey(center, color=(0, 0, 1))
key = spotColorKey(cs, center=ori, color=rgb)
colors = key.orientation2color(ori)
```

</div>

## Description

Each centre gets one RGB colour. Its contribution fades according to the chosen SO(3)
kernel, normalised to its peak value. Several centre contributions are multiplied channel
by channel. Comparisons use the crystal and specimen symmetry of the orientations.

## Input

| `x` | centre orientation or orientations, or a crystalFrame or single-phase map supplying the frames when centres will be set separately |
| `center` | centre orientation or orientations; default x when x is an orientation |
| `color` | one RGB triplet per centre; default red for one centre |
| `psi` | SO3Kernel controlling angular spread; default de la Vallee Poussin kernel with halfwidth 10*degree |

## Output

| `key` | spotColorKey |

## Properties

| `center` | orientations to highlight; must be set before colouring |
| `color` | array of RGB triplets, one row per centre |
| `psi` | angular colour kernel |

## See also

[ipfSpotKey](ipfSpotKey_index_py.html), [axisAngleColorKey](axisAngleColorKey_index_py.html), [SO3DeLaValleePoussinKernel](SO3DeLaValleePoussinKernel_index_py.html)

## Members

| [orientation2color](spotColorKey.orientation2color_py.html) | the colours of orientations: white, multiplied for every centre by its colour faded with the kernel of the disorientation to it |

## Used on

[EBSDAdvancedMaps](EBSDAdvancedMaps_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L442">source</a></font>
{% endraw %}
