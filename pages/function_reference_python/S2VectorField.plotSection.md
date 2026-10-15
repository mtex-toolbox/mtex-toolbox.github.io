---
title: 'S2VectorField.plotSection'
sidebar: function_reference_sidebar
permalink: S2VectorField.plotSection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2VectorField.plotSection.html
status: Reference
---
{% raw %}
plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9)

## Syntax

<div class="mx-form" markdown="1">

```python
plotSection(x, *args, **kw)
```

</div>

## Description

An SO3Fun or a list of orientations sliced into sections. Without a section object the
default is the phi2 sections against a specimen frame and the axis angle sections between
two crystals, as in MTEX; a string picks another family ('phi1', 'phi2', 'alpha',
'gamma', 'sigma', 'pf', 'axisAngle') and the keywords of the family name its sections.

## Example

Plot a model ODF in three specified Bunge phi2 sections. The remaining two Euler
angles vary within each panel; intensities are in multiples of a random distribution.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import crystalFrame, orientation, degree, unimodalODF, plotSection, mtexColorbar

cs = crystalFrame('m-3m')
centre = orientation.byEuler(15*degree, 35*degree, 45*degree, cs)
odf = unimodalODF(centre, halfwidth=15*degree)
plotSection(odf, 'phi2', np.array([0, 45, 90])*degree, resolution=5*degree, contourf=True)
mtexColorbar(title='mrd')
plt.show()
```

A section is a slice of the ODF. A pole figure is a projection of it; use plotPF for that view.

![Example output for S2Fun.plotSection](figures/python_reference/S2Fun.plotSection-01.png)


## Used on

[OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [OrientationStandard](OrientationStandard_py.html), [OrientationVisualizationSections](OrientationVisualizationSections_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDOrientationPlots](EBSDOrientationPlots_py.html), [AnisotropicTheory](AnisotropicTheory_py.html), [WaveVelocities](WaveVelocities_py.html), [ClusterDemo](ClusterDemo_py.html), [DensityEstimation](DensityEstimation_py.html), [EllipseBasedParameters](EllipseBasedParameters_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html), [EulerAngleSections](EulerAngleSections_py.html)

MATLAB's [S2VectorField.plotSection](S2VectorField.plotSection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectionplot.py#L151">source</a></font>
{% endraw %}
