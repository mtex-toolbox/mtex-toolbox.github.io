---
title: 'The class ipfHSVKey'
sidebar: function_reference_sidebar
permalink: ipfHSVKey_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ipfHSVKey_index.html
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

## Example

Choose specimen Z as the colouring direction, then colour three orientations and plot
the matching key and inverse poles. All inputs are constructed here; no EBSD file is needed.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import crystalFrame, orientation, ipfHSVKey, vector3d, degree, plotIPF

cs = crystalFrame('m-3m')
ori = orientation.byEuler(np.array([[0, 0, 0], [25, 35, 15], [60, 50, 30]])*degree, cs)
key = ipfHSVKey(cs)
key.ipfDirection = vector3d.Z
rgb = key.orientation2color(ori)
print('RGB colours:', np.round(rgb, 3))
key.plot()
plotIPF(ori, rgb, vector3d.Z, all=True, markerSize=10)
plt.show()
```

The first figure is the colour key; the second places the same colours at the crystal
directions parallel to specimen Z. Changing ipfDirection changes which crystal direction is coloured.

```text
RGB colours: [[1.    0.01  0.   ]
 [0.748 0.922 0.737]
 [0.076 0.749 0.993]]
```

![Example output for ipfHSVKey](figures/python_reference/ipfHSVKey-01.png)

![Example output for ipfHSVKey](figures/python_reference/ipfHSVKey-02.png)


## See also

[ipfColorKey](ipfColorKey_index_py.html), [HSVDirectionKey](HSVDirectionKey_index_py.html), [ipfTSLKey](ipfTSLKey_index_py.html), [ipfHKLKey](ipfHKLKey_index_py.html)

## Members

| [maxAngle](ipfHSVKey.maxAngle_py.html) | the sharpness and the white centre live on the direction key and are set through it |
| [whiteCenter](ipfHSVKey.whiteCenter_py.html) | the white centre of the key, a crystal direction |

## Used on

[QuasiCrystals](QuasiCrystals_py.html), [EBSDIPFMap](EBSDIPFMap_py.html), [EBSDPerceptualKey](EBSDPerceptualKey_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [GND](GND_py.html)

MATLAB's [ipfHSVKey_index](ipfHSVKey_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L227">source</a></font>
{% endraw %}
