---
title: 'SO3Fun.hist'
sidebar: function_reference_sidebar
permalink: SO3Fun.hist_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.hist.html
status: Reference
---
{% raw %}
histogram(grains), histogram(grains, prop, bins): the area weighted distribution of a
grain property as one histogram per indexed phase, drawn over each other, or with
grouped=True side by side (MATLAB's hist); histogram(v, numBin, weights=w): the rose
diagram of directions

## Syntax

```python
histogram(x, *args, **kw)
```

## Used on

[EBSD3Analysis](EBSD3Analysis_py.html), [Grains3DProperties](Grains3DProperties_py.html), [Grains3DReconstruction](Grains3DReconstruction_py.html), [NeperInterface](NeperInterface_py.html), [GrainSmoothing](GrainSmoothing_py.html), [GrainSmoothingAdvanced](GrainSmoothingAdvanced_py.html), [TwinningBoundaries](TwinningBoundaries_py.html), [EllipseBasedParameters](EllipseBasedParameters_py.html), [ShapeParameters](ShapeParameters_py.html), [BoundaryTutorial](BoundaryTutorial_py.html), [GrainTutorial](GrainTutorial_py.html)

MATLAB's [SO3Fun.hist](SO3Fun.hist.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/grainplots.py#L65">source</a></font>
{% endraw %}
