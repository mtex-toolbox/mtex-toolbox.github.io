---
title: 'unimodalODF'
sidebar: function_reference_sidebar
permalink: unimodalODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: unimodalODF.html
status: Reference
---
{% raw %}
a unimodal ODF, the weights normalised to a mean of one, the centres of negligible weight
dropped unless thinning=False

## Syntax

```python
unimodalODF(center=None, *args, kernel=None, halfwidth=None, weights=None, thinning=True)
```

```python
odf = unimodalODF(ori)  # the de la Vallee Poussin kernel of halfwidth 10 degree
odf = unimodalODF(ori, halfwidth=15*degree)
odf = unimodalODF(ori, cs, ss)  # the centre given as a rotation, the frames named
odf = unimodalODF(ori, psi)  # the kernel psi, also kernel=psi
odf = unimodalODF(ori, weights=w, thinning=False)  # one weight per centre, all kept
```

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [OrientationExport](OrientationExport_py.html), [OrientationGrid](OrientationGrid_py.html), [OrientationStandard](OrientationStandard_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html), [ClusterDemo](ClusterDemo_py.html), [OptimalKernel](OptimalKernel_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [EulerAngleSections](EulerAngleSections_py.html), [ODFCharacteristics](ODFCharacteristics_py.html), [ODFExport](ODFExport_py.html), [ODFInversePoleFigure](ODFInversePoleFigure_py.html)

MATLAB's [unimodalODF](unimodalODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L760">source</a></font>
{% endraw %}
