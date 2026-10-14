---
title: 'SO3Fun.plotPDF'
sidebar: function_reference_sidebar
permalink: SO3Fun.plotPDF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.plotPDF.html
status: Reference
---
{% raw %}
plotPF(ori, h), plotPF(ori, data, h), plotPF(ori, h, points=100, contourf=True, antipodal=True),
plotPF(odf, h), plotPF(pf)

## Syntax

```python
plotPF(o, *args, points=None, all=False, superposition=None, **kw)
```

The pole figures of a list of orientations: every orientation applied to every equivalent
of h, as markers on the specimen sector, coloured by a value per orientation when given;
a style draws the density of the poles instead. An ODF draws its pole figures, a measured
PoleFigure itself (MATLAB's plotPDF).

## Used on

[CrystalReferenceSystem](CrystalReferenceSystem_py.html), [OrientationFibre](OrientationFibre_py.html), [OrientationGrid](OrientationGrid_py.html), [OrientationImport](OrientationImport_py.html), [OrientationPoleFigure](OrientationPoleFigure_py.html), [OrientationStandard](OrientationStandard_py.html), [OrientationSymmetry](OrientationSymmetry_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html), [EBSDOrientationPlots](EBSDOrientationPlots_py.html), [EBSDReferenceFrame](EBSDReferenceFrame_py.html)

MATLAB's [SO3Fun.plotPDF](SO3Fun.plotPDF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polefigureplot.py#L198">source</a></font>
{% endraw %}
