---
title: 'grain2d.rotate'
sidebar: function_reference_sidebar
permalink: grain2d.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.rotate.html
status: Reference
---
{% raw %}
rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method; 'left' and
'right' name the side, a flag is a keyword

## Syntax

<div class="mx-form" markdown="1">

```python
rotate(ebsd, rot, keepEuler=True)
rotate(odf, rot, 'right')
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
rotate(v, rot, *args, **kwargs)
```

</div>

## Used on

[MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [Grains3DOperations](Grains3DOperations_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDInter](EBSDInter_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html), [EBSDReferenceFrame](EBSDReferenceFrame_py.html), [ODFModeling](ODFModeling_py.html), [CombinedPlots](CombinedPlots_py.html), [PoleFigureCorrection](PoleFigureCorrection_py.html), [PoleFigureDubna](PoleFigureDubna_py.html), [SO3FunOperations](SO3FunOperations_py.html), [S2FunOperations](S2FunOperations_py.html)

MATLAB's [grain2d.rotate](grain2d.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L242">source</a></font>
{% endraw %}
