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

<div class="mx-form" markdown="1">

```python
ori = orientation(rot, cs, ss)
```

A rotation between a crystal and a specimen frame.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation(a, b, c, d, cs, ss)
```

The quaternion coefficients.

</div>

<div class="mx-form" markdown="1">

```python
mori = orientation(rot, cs, cs, antipodal=True)
```

A misorientation with grain exchange.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation(f, points=100)
```

Points along a fibre.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.byEuler(phi1, Phi, phi2, cs, ss)
```

Euler angles, and the other constructors.

</div>

## Description

An orientation is a rotation that carries the two frames it maps between: frameA, the crystal
frame CS, from which it takes the coordinates, and frameB, the specimen frame SS or the second
crystal frame of a misorientation, to which it takes them. The symmetries of both frames
enter every comparison, angle, mean and plot. A frame left out is the triclinic crystal frame,
or the default specimen frame. Coefficients are normalised; an improper transform is refused,
an orientation is proper.

An orientation given keeps its frames unless others are named; a fibre is sampled at points
orientations, an embedding projected back onto the orientations.

## Input

| `rot` | rotation, quaternion or orientation |
| `a, b, c, d` | the quaternion coefficients, numbers or arrays |
| `cs` | crystalFrame, the frame mapped from |
| `ss` | specimenFrame, or the second crystalFrame of a misorientation |
| `f` | fibre |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | a misorientation with grain exchange, between two frames of one crystal: the misorientation and its inverse are taken as one |
| `dtype` | `None` | the floating point type of the coefficients |
| `points` | `1000` | the number of orientations sampled along a fibre |

## Output

| `ori` | orientation |

## See also

[orientation.byEuler](orientation.byEuler_py.html), [orientation.byAxisAngle](orientation.byAxisAngle_py.html), [orientation.byMiller](orientation.byMiller_py.html), [orientation.byMatrix](orientation.byMatrix_py.html), [orientation.map](orientation.map_py.html), [rotation](rotation_index_py.html), [crystalFrame](crystalFrame_index_py.html), [OrientationDefinition](OrientationDefinition_py.html), [MisorientationTheory](MisorientationTheory_py.html)

## Used on

[DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html), [FibreODFs](FibreODFs_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [RotationFibre](RotationFibre_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [orientation.orientation](orientation.orientation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L61">source</a></font>
{% endraw %}
