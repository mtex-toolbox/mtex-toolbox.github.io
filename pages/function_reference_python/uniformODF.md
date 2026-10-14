---
title: 'uniformODF'
sidebar: function_reference_sidebar
permalink: uniformODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: uniformODF.html
status: Reference
---
{% raw %}
the uniform ODF, constant one, between a crystal and a specimen frame

## Syntax

```python
uniformODF(*frames, antipodal=False)
```

```python
odf = uniformODF(cs, ss)
mdf = uniformODF(cs, cs, antipodal=True)  # a uniform misorientation distribution
```

## Used on

[IsotropicTheory](IsotropicTheory_py.html), [WaveVelocities](WaveVelocities_py.html), [OptimalKernel](OptimalKernel_py.html), [ODFComponents](ODFComponents_py.html), [ODFExport](ODFExport_py.html), [ODFModeling](ODFModeling_py.html), [RadialODFs](RadialODFs_py.html), [RandomSampling](RandomSampling_py.html), [SingleSlipModel](SingleSlipModel_py.html), [ColorMaps](ColorMaps_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html)

MATLAB's [uniformODF](uniformODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L744">source</a></font>
{% endraw %}
