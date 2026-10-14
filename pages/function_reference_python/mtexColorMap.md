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
the colour map of the current figure, or of one figure or axes; MATLAB's mtexColorMap

## Syntax

Every axes of the current figure:

```python
mtexColorMap('LaboTeX')
```

Every axes of one MTEX figure:

```python
mtexColorMap('white2black', gcm())
```

One axes only:

```python
mtexColorMap(ax, 'hot')
```

An n x 3 matrix of rgb values:

```python
mtexColorMap(np.array([[1, 1, 1], [0, 0, 1]]))
```

A named map function, as MATLAB passes it:

```python
mtexColorMap(blue2redColorMap)
```

Without a figure the map is given to every axes of the current MTEX figure, so that all the
sections of one function share the colour scale; to give the subplots of a figure different
maps, pass each axes as the first argument. A name is one of MTEX's maps (WhiteJet, LaboTeX,
blue2red, red2blue, white2black, black2white, parula) or one of matplotlib's. In a plain
matplotlib figure the images and filled contours of the current figure take the map.

## Input

| | |
|---|---|
| `name` | the name of a colour map, a matplotlib Colormap, an n x 3 matrix of rgb values or a function returning one; an axes, with the map following as the second argument |

## Output

| | |
|---|---|
| `cmap` | the matplotlib Colormap set |

## Keywords

| | default | |
|---|---|---|
| `fig` | `None` | the mtexFigure to colour instead of the current one |

## See also

[mtexColorbar](mtexColorbar_py.html), [setColorRange](setColorRange_py.html), [num2rgb](num2rgb_py.html)

## Used on

[CrystalOperations](CrystalOperations_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html), [EBSDPlotting](EBSDPlotting_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [EBSDSpatialTransform](EBSDSpatialTransform_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html), [AnisotropicTheory](AnisotropicTheory_py.html)

MATLAB's [mtexColorMap](mtexColorMap.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L69">source</a></font>
{% endraw %}
