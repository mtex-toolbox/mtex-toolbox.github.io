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


A lattice plane normal:

```python
m = Miller(h, k, l, cs)
```

Four indices, hexagonal and trigonal lattices:

```python
m = Miller(h, k, i, l, cs)
```

A lattice direction, 'UVTW' with four indices:

```python
m = Miller(u, v, w, cs, 'uvw')
```

Many at once, the indices along the last axis:

```python
m = Miller([[1, 0, 0], [1, 1, 1]], cs)
```

(hkl) or [uvw] one, {hkl} or <uvw> the whole family:

```python
m = Miller('{111}', cs)
```

The plane holding both directions, the zone law:

```python
m = Miller('[100]\[011]', cs)
```

The direction both planes hold:

```python
m = Miller('(100)\(011)', cs)
```

A vector3d expressed in the crystal frame:

```python
m = Miller(v, cs)
```

## Used on

[CrystalDirections](CrystalDirections_py.html), [CrystalOperations](CrystalOperations_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html), [CrystalShapeSmorf](CrystalShapeSmorf_py.html), [CrystalShapes](CrystalShapes_py.html), [FundamentalSector](FundamentalSector_py.html), [LatticeMetric](LatticeMetric_py.html), [SymmetryAlignment](SymmetryAlignment_py.html), [DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [OrientationDefinition](OrientationDefinition_py.html), [OrientationFibre](OrientationFibre_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/miller.py#L31">source</a></font>
{% endraw %}
