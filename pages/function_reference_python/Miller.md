---
title: 'Miller'
sidebar: function_reference_sidebar
permalink: Miller_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
crystal directions and lattice plane normals, a vector3d in a crystal frame

## Syntax

```python
Miller(*args, antipodal=False, dispStyle=None)
```

antipodal=True adds the antipodal symmetry, dispStyle= the indices the display shows ('hkl',
'hkil', 'uvw', 'UVTW', 'xyz')


```python
m = Miller(h, k, l, cs)                    # a lattice plane normal
m = Miller(h, k, i, l, cs)                 # four indices, hexagonal and trigonal lattices
m = Miller(u, v, w, cs, 'uvw')             # a lattice direction, 'UVTW' with four indices
m = Miller([[1, 0, 0], [1, 1, 1]], cs)     # many at once, the indices along the last axis
m = Miller('{111}', cs)                    # (hkl) or [uvw] one, {hkl} or <uvw> the whole family
m = Miller('[100]\[011]', cs)             # the plane holding both directions, the zone law
m = Miller('(100)\(011)', cs)             # the direction both planes hold
m = Miller(v, cs)                          # a vector3d expressed in the crystal frame
```

## Used on

[CrystalDirections](CrystalDirections_py.html), [CrystalOperations](CrystalOperations_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html), [CrystalShapeSmorf](CrystalShapeSmorf_py.html), [CrystalShapes](CrystalShapes_py.html), [FundamentalSector](FundamentalSector_py.html), [LatticeMetric](LatticeMetric_py.html), [SymmetryAlignment](SymmetryAlignment_py.html), [DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [OrientationDefinition](OrientationDefinition_py.html), [OrientationFibre](OrientationFibre_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/miller.py#L31">source</a></font>
{% endraw %}
