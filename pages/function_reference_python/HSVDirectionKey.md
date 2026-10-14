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

```python
HSVDirectionKey(cs)
HSVDirectionKey(cs, whiteCenter=v, maxAngle=5*degree)
HSVDirectionKey(cs, perceptual=True, hueLightness=0.5)
```

A finite maxAngle makes the key sharp: the whole colour circle is spent on the cap of that
opening about the white centre and everything outside it is black. perceptual=True takes
the colours from a double cone in OKLab instead of MTEX's HSL sphere: the colour changes
at a nearly steady rate over the sector. hueLightness, from 0 to 1, lets the lightness of
the boundary follow the hue towards where each hue is brightest: yellow comes back as
yellow, and the key comes closer to MTEX's and less even.

## Members

| | |
|---|---|
| [direction2color](HSVDirectionKey.direction2color_py.html) | the colour of directions: each is brought into the sector, then into the white half, the fold telling which of the two centres its colours run from |

## Used on

[EBSDGROD](EBSDGROD_py.html), [BoundaryPlots](BoundaryPlots_py.html), [GrainOrientationParameters](GrainOrientationParameters_py.html), [WBV](WBV_py.html)

MATLAB's [HSVDirectionKey](HSVDirectionKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys.py#L273">source</a></font>
{% endraw %}
