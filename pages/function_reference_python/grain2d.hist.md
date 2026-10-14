---
title: 'grain2d.hist'
sidebar: function_reference_sidebar
permalink: grain2d.hist_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.hist.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

histogram(grains), histogram(grains, prop, bins): the area weighted distribution of a
grain property as one histogram per indexed phase, drawn over each other, or with
grouped=True side by side (MATLAB's hist); histogram(v, numBin, weights=w): the rose
diagram of directions

## Syntax

<div class="mx-form" markdown="1">

```python
grain2d.hist(x, *args, **kw)
```

</div>

## Used on

[EBSDSelect](EBSDSelect_py.html), [DensityEstimation](DensityEstimation_py.html), [PythonDevelopers](PythonDevelopers_py.html), [GrainNeighbours](GrainNeighbours_py.html), [ShapeParameters](ShapeParameters_py.html), [Twinning](Twinning_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html), [OrientationRelationshipFit](OrientationRelationshipFit_py.html), [SachsModel](SachsModel_py.html), [RotationRepresentations](RotationRepresentations_py.html)

MATLAB's [grain2d.hist](grain2d.hist.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/grainplots.py#L65">source</a></font>
{% endraw %}
