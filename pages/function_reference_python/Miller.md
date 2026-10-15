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
crystal directions and lattice plane normals, a vector3d in a crystal frame; MATLAB's Miller

## Syntax

<div class="mx-form" markdown="1">

```python
m = Miller(h, k, l, cs)
```

A lattice plane normal.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller(h, k, i, l, cs)
```

Four indices, hexagonal and trigonal lattices.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller(u, v, w, cs, 'uvw')
```

A lattice direction, 'UVTW' with four indices.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller([[1, 0, 0], [1, 1, 1]], cs)
```

Many at once, the indices along the last axis.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller('{111}', cs)
```

(hkl) or [uvw] one, {hkl} or <uvw> the whole family.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller(r'[100]\[011]', cs)
```

The plane holding both directions, the zone law.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller(r'(100)\(011)', cs)
```

The direction both planes hold.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller(v, cs)
```

A vector3d expressed in the crystal frame.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller(1, 1, 0, cs, antipodal=True)
```

With antipodal symmetry.

</div>

## Description

A crystal direction is a vector3d written in a crystal frame: it has the Miller indices hkl
and uvw, and where the frame carries a point group it stands for its symmetrically
equivalent set; it is stored in Euclidean coordinates. A string names the indices by its
brackets: (hkl) one plane and {hkl} its family, [uvw] one direction and <uvw> its family; a
single plane or direction is in the frame without its group. A vector3d keeps its
components and is restated in the crystal frame.

## Input

| `args` | three or four indices, each a number or an array, or one array with the indices along its last axis; a string; or a vector3d. Then the crystalFrame cs, and a style 'hkl', 'hkil', 'uvw', 'UVTW' or 'xyz', in any case, saying how the indices are read |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | the antipodal symmetry: sets m.antipodal, and the frame's Laue group takes the place of its point group |
| `dispStyle` | `None` | the indices the display shows and the numbers are read as, the same as the style given positionally ('hkl', 'hkil', 'uvw', 'UVTW', 'xyz'); a string keeps the style of its brackets |

## Output

| `m` | vector3d in the crystal frame |

## Example

In a hexagonal lattice, a plane normal and a direct-lattice direction with the same
three indices need not be parallel. Compare their Cartesian directions without symmetry reduction.


```python
import numpy as np
from mtex import crystalFrame, Miller, degree

cs = crystalFrame('6/mmm', [3.20927, 3.20927, 5.21033])
normal = Miller(1, 0, 1, cs, 'hkl')
direction = Miller(1, 0, 1, cs, 'uvw')
print('Plane normal:', np.round(normal.normalize().data, 3))
print('Lattice direction:', np.round(direction.normalize().data, 3))
print('Angle in degrees:', round(float(normal.angle(direction, symmetry=False) / degree), 2))
cAxis = Miller(0, 0, 0, 1, cs, 'UVTW')
print('Four-index c-axis:', cAxis)
```

Use hkl or hkil for reciprocal-lattice plane normals and uvw or UVTW for direct-lattice
directions. The angle above compares these particular vectors rather than their symmetry orbits.

```text
Plane normal: [ 0.882 -0.     0.471]
Lattice direction: [ 0.454 -0.262  0.851]
Angle in degrees: 36.73
Four-index c-axis: <0001>
```


## See also

[vector3d](vector3d_index_py.html), [crystalFrame](crystalFrame_index_py.html), [CrystalDirections](CrystalDirections_py.html), [CrystalOperations](CrystalOperations_py.html)

## Used on

[CrystalDirections](CrystalDirections_py.html), [CrystalOperations](CrystalOperations_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html), [CrystalShapeSmorf](CrystalShapeSmorf_py.html), [CrystalShapes](CrystalShapes_py.html), [FundamentalSector](FundamentalSector_py.html), [LatticeMetric](LatticeMetric_py.html), [SymmetryAlignment](SymmetryAlignment_py.html), [DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [OrientationDefinition](OrientationDefinition_py.html), [OrientationFibre](OrientationFibre_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/miller.py#L31">source</a></font>
{% endraw %}
