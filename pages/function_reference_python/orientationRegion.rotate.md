---
title: 'orientationRegion.rotate'
sidebar: function_reference_sidebar
permalink: orientationRegion.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationRegion.rotate.html
status: Reference
---
{% raw %}
rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method; 'left' and
'right' name the side, a flag is a keyword

## Syntax

```python
rotate(v, rot, *args, **kwargs)
```

```python
rotate(ebsd, rot, keepEuler=True)
rotate(odf, rot, 'right')
```

## Used on

[MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [Grains3DOperations](Grains3DOperations_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDInter](EBSDInter_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html), [EBSDReferenceFrame](EBSDReferenceFrame_py.html), [ODFModeling](ODFModeling_py.html), [CombinedPlots](CombinedPlots_py.html), [PoleFigureCorrection](PoleFigureCorrection_py.html), [PoleFigureDubna](PoleFigureDubna_py.html), [SO3FunOperations](SO3FunOperations_py.html), [S2FunOperations](S2FunOperations_py.html)

MATLAB's [orientationRegion.rotate](orientationRegion.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L112">source</a></font>
{% endraw %}
