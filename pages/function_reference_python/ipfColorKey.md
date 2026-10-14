---
title: 'The class ipfColorKey'
sidebar: function_reference_sidebar
permalink: ipfColorKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ipfColorKey.html
status: Reference
---
{% raw %}
colour orientations by the crystal direction parallel to a chosen specimen direction

## Syntax

<div class="mx-form" markdown="1">

```python
key = ipfColorKey(cs)
key.ipfDirection = xvector
rgb = key.orientation2color(ori)
key.plot()
```

</div>

## Description

For each orientation, the inverse rotation carries ipfDirection into crystal coordinates.
The direction key then folds that crystal direction into its fundamental sector and assigns
a colour. Thus the same colour identifies the same crystal axis along the selected specimen
direction. An inverse pole figure colour alone does not determine the full orientation.

## Input

| `x` | crystalFrame, orientation, or single-phase EBSD or grain data |
| `ipfDirection` | vector3d specimen direction; default zvector |
| `dirMap` | direction colour key; default HSVDirectionKey of the crystal frame |

## Output

| `key` | ipfColorKey |

## Properties

| `ipfDirection` | specimen direction used for colouring |
| `dirMap` | direction colour key used for crystal directions |
| `CS` | crystal frame of the key |

## See also

[ipfHSVKey](ipfHSVKey_index_py.html), [ipfTSLKey](ipfTSLKey_index_py.html), [ipfHKLKey](ipfHKLKey_index_py.html), [ipfColorKey.orientation2color](ipfColorKey.orientation2color_py.html)

## Members

| [crystalDirection](ipfColorKey.crystalDirection_py.html) | the crystal directions along the specimen direction of every orientation |
| [orientation2color](ipfColorKey.orientation2color_py.html) | convert orientations to inverse pole figure RGB colours |
| [plot](ipfColorKey.plot_py.html) | the direction key drawn on its sector, or with complete=True over the whole sphere |
| [precompute](ipfColorKey.precompute_py.html) | the direction key evaluated once on a grid of the whole sphere, so that the colours of many orientations are cheap |
| [whiteCenter](ipfColorKey.whiteCenter_py.html) | the white centre of the direction key |

## Used on

[CrystalShapes](CrystalShapes_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3DProperties](Grains3DProperties_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDDenoising](EBSDDenoising_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSDPlotting](EBSDPlotting_py.html), [EBSDPseudoSymmetry](EBSDPseudoSymmetry_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [EBSDSimulation](EBSDSimulation_py.html), [BoundaryCurvature](BoundaryCurvature_py.html)

MATLAB's [ipfColorKey](ipfColorKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L86">source</a></font>
{% endraw %}
