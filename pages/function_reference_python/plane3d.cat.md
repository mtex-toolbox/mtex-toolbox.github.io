---
title: 'plane3d.cat'
sidebar: function_reference_sidebar
permalink: plane3d.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plane3d.cat.html
status: Reference
---
{% raw %}
cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the
carried attributes joined; the keywords go to the class's cat, axis= the axis to concatenate
along for the classes whose lists have axes

## Syntax

```python
v = cat(v1, v2)
```

Side by side:

```python
v = cat(v1, v2, axis=1)
```

```python
ebsd = cat(ebsd1, ebsd2)
```

## Signature

```python
cat(*arrays, **kwargs)
```

## Used on

[CrystalDirections](CrystalDirections_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html), [CrystalShapes](CrystalShapes_py.html), [QuasiCrystals](QuasiCrystals_py.html), [DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [OrientationDefinition](OrientationDefinition_py.html), [OrientationStandard](OrientationStandard_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html), [EBSDOrientationPlots](EBSDOrientationPlots_py.html), [EBSDProfile](EBSDProfile_py.html), [AnisotropicTheory](AnisotropicTheory_py.html)

MATLAB's [plane3d.cat](plane3d.cat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/_array.py#L198">source</a></font>
{% endraw %}
