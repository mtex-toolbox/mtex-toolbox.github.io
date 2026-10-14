---
title: 'annotate'
sidebar: function_reference_sidebar
permalink: annotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: annotate.html
status: Reference
---
{% raw %}
annotate: markers on every axes of the current figure, black by default; the keywords are
those of plot

## Syntax

```python
annotate(v)
annotate(v, markerFaceColor='r', label='a', backgroundColor='w')
```

The great circle normal to v:

```python
annotate(v, plane=True, lineStyle='--')
```

Into the sections, pole figures or orientation space shown:

```python
annotate(ori, marker='v', markerSize=15)
```

## Signature

```python
annotate(v, *args, **kw)
```

## Used on

[CrystalDirections](CrystalDirections_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html), [CrystalSymmetries](CrystalSymmetries_py.html), [ClusterDemo](ClusterDemo_py.html), [BoundaryNormalDistribution](BoundaryNormalDistribution_py.html), [CSLBoundaries](CSLBoundaries_py.html), [TiltAndTwistBoundaries](TiltAndTwistBoundaries_py.html), [Grain_dispersion_axes](Grain_dispersion_axes_py.html), [MisorientationTheory](MisorientationTheory_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [EulerAngleSections](EulerAngleSections_py.html), [ODFCharacteristics](ODFCharacteristics_py.html)

MATLAB's [annotate](annotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L1205">source</a></font>
{% endraw %}
