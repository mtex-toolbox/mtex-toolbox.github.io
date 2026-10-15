---
title: 'SO3FunHarmonic.plot'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.plot.html
status: Reference
---
{% raw %}
plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9)

## Syntax

<div class="mx-form" markdown="1">

```python
plot(x, *args, **kw)
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


MATLAB's [SO3FunHarmonic.plot](SO3FunHarmonic.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectionplot.py#L151">source</a></font>
{% endraw %}
