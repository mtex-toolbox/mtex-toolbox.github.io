---
title: 'sphereColor'
sidebar: function_reference_sidebar
permalink: sphereColor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the colour of a point of the colour sphere, the hue from the azimuth and the lightness
from the radius; the colouring the direction keys are built of

## Syntax

The colours of points of the sphere:

```python
rgb = sphereColor(radius, rho)
```

Full saturation everywhere:

```python
rgb = sphereColor(radius, rho, gray=1)
```

Stretched, the plain hue circle:

```python
rgb = sphereColor(radius, rho, colorStretching=2, hueCorrection=False)
```

The colour sphere has a white centre at radius 1 and a black one at radius 0; on the circle
radius 0.5 between them the colours are fully saturated and the azimuth rho turns the hue
once around. Close to either centre the colours fade to gray: grayValue says how gray they
are at the centre and grayGradient how fast the gray fades away from it. A direction key
(HSVDirectionKey) maps its fundamental sector onto this sphere and calls sphereColor with
its own grayValue, grayGradient and colorStretching.

## Input

| | |
|---|---|
| `radius` | array, from 0 at the black centre to 1 at the white one |
| `rho` | array, the azimuth in radians, the hue |

## Output

| | |
|---|---|
| `rgb` | array of shape (..., 3), RGB values in [0, 1] |

## Keywords

| | default | |
|---|---|---|
| `grayValue` | `(0.2, 0.5)` | (white, black), the gray at the white and at the black centre, 0 none, 1 all |
| `grayGradient` | `(0.5, 0.5)` | (white, black), how fast the gray fades away from the white and from the black centre |
| `colorStretching` | `1.0` | an exponent on the lightness, larger values giving more of the saturated colours of the middle |
| `gray` | `None` | one saturation for every point, in [0, 1], instead of the fading towards the centres |
| `hueCorrection` | `True` | even out the hue circle, so that red, green and blue take equal arcs |

## See also

[HSVDirectionKey](HSVDirectionKey_index_py.html), direction2color, [ipfHSVKey](ipfHSVKey_index_py.html), [EBSDIPFMap](EBSDIPFMap_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys.py#L96">source</a></font>
{% endraw %}
