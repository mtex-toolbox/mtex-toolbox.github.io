---
title: 'The class HSVDirectionKey'
sidebar: function_reference_sidebar
permalink: HSVDirectionKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: HSVDirectionKey.html
status: Reference
---
{% raw %}
MTEX's default direction key: white at the centre of the fundamental sector, the primary
colours at its vertices

## Syntax

<div class="mx-form" markdown="1">

```python
HSVDirectionKey(cs)
HSVDirectionKey(cs, whiteCenter=v, maxAngle=5*degree)
HSVDirectionKey(cs, perceptual=True, hueLightness=0.5)
```

</div>

## Description

A finite maxAngle makes the key sharp: the whole colour circle is spent on the cap of that
opening about the white centre and everything outside it is black. perceptual=True takes
the colours from a double cone in OKLab instead of MTEX's HSL sphere: the colour changes
at a nearly steady rate over the sector. hueLightness, from 0 to 1, lets the lightness of
the boundary follow the hue towards where each hue is brightest: yellow comes back as
yellow, and the key comes closer to MTEX's and less even.

## Input

| `CS` | referenceFrame, symmetry, or vector3d supplying its frame; default specimen frame |
| `whiteCenter` | unit direction at the white centre; None uses the sector centre |
| `maxAngle` | angular radius in radians of concentrated colouring; default infinity uses the whole sector |
| `sR` | sphericalRegion to colour; None uses the conventional fundamental sector |
| `colorStretching` | exponent controlling how the colour varies with polar distance; default 1 |
| `grayValue` | pair giving the gray contribution at the white and black centres |
| `grayGradient` | pair controlling how rapidly gray fades away from those centres |
| `antipodal` | colour opposite directions alike by using the Laue group; default False |
| `perceptual` | use the OKLab colour construction; default False |
| `hueLightness` | hue-dependent boundary lightness in the perceptual construction, from 0 to 1 |

## Members

| [direction2color](HSVDirectionKey.direction2color_py.html) | the colours of directions under the key |

## Used on

[EBSDGROD](EBSDGROD_py.html), [BoundaryPlots](BoundaryPlots_py.html), [GrainOrientationParameters](GrainOrientationParameters_py.html), [WBV](WBV_py.html)

MATLAB's [HSVDirectionKey](HSVDirectionKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys.py#L312">source</a></font>
{% endraw %}
