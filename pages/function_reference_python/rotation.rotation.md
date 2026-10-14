---
title: 'rotation.rotation'
sidebar: function_reference_sidebar
permalink: rotation.rotation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.rotation.html
status: Reference
---
{% raw %}
rotations, unit quaternions with q and -q one rotation; numbers are normalised, a point group
or a frame gives its elements, an improper orthogonalTransform is refused

## Syntax

```python
rotation(a, b, c, d)
rotation(q)
rotation(cs)
```

## Signature

```python
rotation(*args, dtype=None)
```

## Used on

[CrystalSymmetries](CrystalSymmetries_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [EBSDKAM](EBSDKAM_py.html), [RotationDefinition](RotationDefinition_py.html), [RotationImproper](RotationImproper_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [rotation.rotation](rotation.rotation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L479">source</a></font>
{% endraw %}
