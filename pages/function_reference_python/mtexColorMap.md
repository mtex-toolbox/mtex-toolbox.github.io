---
title: 'mtexColorMap'
sidebar: function_reference_sidebar
permalink: mtexColorMap_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mtexColorMap.html
status: Reference
---
{% raw %}
mtexColorMap WhiteJet: the colour map of the current figure, or of one figure

## Syntax

```python
mtexColorMap(name='WhiteJet', fig=None)
```

```python
mtexColorMap('LaboTeX')            # every axes of the current figure
mtexColorMap('white2black', mtexFig)
mtexColorMap(ax, 'hot')            # one axes only
mtexColorMap(np.array([[1, 1, 1], [0, 0, 1]]))   # an n x 3 matrix of rgb values
```

## Used on

[CrystalOperations](CrystalOperations_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html), [EBSDPlotting](EBSDPlotting_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [EBSDSpatialTransform](EBSDSpatialTransform_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html), [AnisotropicTheory](AnisotropicTheory_py.html)

MATLAB's [mtexColorMap](mtexColorMap.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L69">source</a></font>
{% endraw %}
