---
title: 'The class orientationColorKey'
sidebar: function_reference_sidebar
permalink: orientationColorKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationColorKey.html
status: Reference
---
{% raw %}
base class for mapping crystal orientations to RGB colours

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = key.orientation2color(ori)
```

</div>

## Description

Choose an inverse pole figure key to show which crystal direction lies along a specimen
direction, or an axis-angle, Euler-angle or spot key to show the whole orientation.
The result is a numeric array of shape ori.shape + (3,), with RGB channels in [0, 1],
ready to pass to plot. Construct a concrete subclass; this base does not define a colour map.

## Input

| `x` | crystalFrame, orientation, or single-phase EBSD or grain data supplying the frames |
| `frameB` | specimenFrame when x is a crystal frame; default specimen frame otherwise |

## Properties

| `frameA` | crystal frame |
| `frameB` | specimen frame |
| `antipodal` | grain-exchange symmetry inherited from orientation input |

## See also

[ipfHSVKey](ipfHSVKey_index_py.html), [axisAngleColorKey](axisAngleColorKey_index_py.html), [BungeColorKey](BungeColorKey_index_py.html), [spotColorKey](spotColorKey_index_py.html)

## Members

| [CS](orientationColorKey.CS_py.html) | the crystal frame of the key, frameA |
| [orientation2color](orientationColorKey.orientation2color_py.html) | the colours of orientations, an (..., 3) array in [0, 1] |
| [SS](orientationColorKey.SS_py.html) | the specimen frame of the key, frameB |

MATLAB's [orientationColorKey](orientationColorKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L40">source</a></font>
{% endraw %}
