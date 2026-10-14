---
title: 'The class ipfHSVKey'
sidebar: function_reference_sidebar
permalink: ipfHSVKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ipfHSVKey.html
status: Reference
---
{% raw %}
the default MTEX inverse pole figure colour key

## Syntax

<div class="mx-form" markdown="1">

```python
key = ipfHSVKey(cs)
key.ipfDirection = xvector
rgb = key.orientation2color(ori)
key.plot()
```

</div>

## Description

Crystal directions are coloured with HSVDirectionKey: primary colours identify the vertices
of the fundamental sector and its centre is white. A finite maxAngle concentrates the colour
variation around whiteCenter. Set ipfDirection to the specimen direction whose crystal
alignment you want to display.

## Input

| `x` | crystalFrame, orientation, or single-phase EBSD or grain data |
| `ipfDirection` | vector3d specimen direction; default zvector |
| `kwargs` | HSVDirectionKey options, including maxAngle, whiteCenter and perceptual |

## Output

| `key` | ipfHSVKey |

## Properties

| `ipfDirection` | specimen direction used for the inverse pole figure |
| `maxAngle` | angular radius in radians used for a concentrated colour key |
| `whiteCenter` | crystal direction assigned white |

## See also

[ipfColorKey](ipfColorKey_index_py.html), [HSVDirectionKey](HSVDirectionKey_index_py.html), [ipfTSLKey](ipfTSLKey_index_py.html), [ipfHKLKey](ipfHKLKey_index_py.html)

## Members

| [maxAngle](ipfHSVKey.maxAngle_py.html) | the sharpness and the white centre live on the direction key and are set through it |
| [whiteCenter](ipfHSVKey.whiteCenter_py.html) | the white centre of the key, a crystal direction |

## Used on

[QuasiCrystals](QuasiCrystals_py.html), [EBSDIPFMap](EBSDIPFMap_py.html), [EBSDPerceptualKey](EBSDPerceptualKey_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [GND](GND_py.html)

MATLAB's [ipfHSVKey](ipfHSVKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L205">source</a></font>
{% endraw %}
