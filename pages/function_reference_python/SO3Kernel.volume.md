---
title: 'SO3Kernel.volume'
sidebar: function_reference_sidebar
permalink: SO3Kernel.volume_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Kernel.volume.html
status: Reference
---
{% raw %}
the share of orientations within a radius of a centre: the mean of f on a local grid in
the ball, times the ball's share of the fundamental region (its Haar measure times the
number of symmetric copies, at most one); a list of orientations gives the count instead

## Syntax

```python
volume(f, center, radius, resolution=None)
```

## Used on

[OrientationFibre](OrientationFibre_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html), [CSLBoundaries](CSLBoundaries_py.html), [ODFCharacteristics](ODFCharacteristics_py.html), [ODFComponents](ODFComponents_py.html), [ODFTheory](ODFTheory_py.html), [VectorsDensityEstimation](VectorsDensityEstimation_py.html)

MATLAB's [SO3Kernel.volume](SO3Kernel.volume.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L86">source</a></font>
{% endraw %}
