---
title: 'orientation.orientation'
sidebar: function_reference_sidebar
permalink: orientation.orientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.orientation.html
status: Reference
---
{% raw %}
orientations and misorientations, rotations taking coordinates in the frame CS to coordinates
in the frame SS; a misorientation is one between two crystal frames

## Syntax

```python
orientation(*args, antipodal=False, dtype=None, points=1000)
```

```python
orientation(rot, cs, ss)
orientation(a, b, c, d, cs, ss)      the quaternion coefficients
orientation(f, cs, points=1000)      points along a fibre
```

## Used on

[DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html), [FibreODFs](FibreODFs_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [RotationFibre](RotationFibre_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [orientation.orientation](orientation.orientation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L61">source</a></font>
{% endraw %}
