---
title: 'EBSD.text'
sidebar: function_reference_sidebar
permalink: EBSD.text_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.text.html
status: Reference
---
{% raw %}
text(v, labels): text at directions, text(v, labeled=True) each direction's own name;
text(ebsd, labels): labels on the map; text(x, y, s) and text(x, y, z, s): text at a point
of the current axes, as MATLAB's text

## Syntax

```python
text(v, labels=None, *more, **kw)
```

## Used on

[MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [EBSDIndex](EBSDIndex_py.html), [EBSDKAM](EBSDKAM_py.html), [CPOSeismicProperties](CPOSeismicProperties_py.html), [GrainSpatialPlots](GrainSpatialPlots_py.html), [HullBasedParameters](HullBasedParameters_py.html), [SelectingGrains](SelectingGrains_py.html), [MisorientationTheory](MisorientationTheory_py.html), [SchmidFactor](SchmidFactor_py.html), [TaylorModel](TaylorModel_py.html)

MATLAB's [EBSD.text](EBSD.text.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L965">source</a></font>
{% endraw %}
