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
an orientation coloured by the crystal direction it carries along a specimen direction

## Syntax

```python
ipfColorKey(cs), ipfColorKey(ebsd), ipfColorKey(ori)
key.ipfDirection = xvector
rgb = key.orientation2color(ori)
```

dirMap is the direction key doing the colouring, HSVDirectionKey unless given.

## Members

| | |
|---|---|
| [crystalDirection](ipfColorKey.crystalDirection_py.html) | the crystal directions along the specimen direction of every orientation |
| [orientation2color](ipfColorKey.orientation2color_py.html) | an orientation that was never measured has no colour, and a map shows nothing for it |
| [plot](ipfColorKey.plot_py.html) | the direction key drawn on its sector, or with complete=True over the whole sphere |
| [precompute](ipfColorKey.precompute_py.html) | the direction key evaluated once on a grid of the whole sphere, so that the colours of many orientations are cheap |
| [whiteCenter](ipfColorKey.whiteCenter_py.html) | the white centre of the direction key |

## Used on

[CrystalShapes](CrystalShapes_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3DProperties](Grains3DProperties_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDDenoising](EBSDDenoising_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSDPlotting](EBSDPlotting_py.html), [EBSDPseudoSymmetry](EBSDPseudoSymmetry_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [EBSDSimulation](EBSDSimulation_py.html), [BoundaryCurvature](BoundaryCurvature_py.html)

MATLAB's [ipfColorKey](ipfColorKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L73">source</a></font>
{% endraw %}
