---
title: 'rotation.plotSection'
sidebar: function_reference_sidebar
permalink: rotation.plotSection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.plotSection.html
status: Reference
---
{% raw %}
plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9)

## Syntax

```python
plotSection(x, *args, **kw)
```

An SO3Fun or a list of orientations sliced into sections. Without a section object the
default is the phi2 sections against a specimen frame and the axis angle sections between
two crystals, as in MTEX; a string picks another family ('phi1', 'phi2', 'alpha',
'gamma', 'sigma', 'pf', 'axisAngle') and the keywords of the family name its sections.

## Used on

[OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [OrientationStandard](OrientationStandard_py.html), [OrientationVisualizationSections](OrientationVisualizationSections_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDOrientationPlots](EBSDOrientationPlots_py.html), [AnisotropicTheory](AnisotropicTheory_py.html), [WaveVelocities](WaveVelocities_py.html), [ClusterDemo](ClusterDemo_py.html), [DensityEstimation](DensityEstimation_py.html), [EllipseBasedParameters](EllipseBasedParameters_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html), [EulerAngleSections](EulerAngleSections_py.html)

MATLAB's [rotation.plotSection](rotation.plotSection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectionplot.py#L151">source</a></font>
{% endraw %}
