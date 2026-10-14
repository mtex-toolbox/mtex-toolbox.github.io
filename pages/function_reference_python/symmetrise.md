---
title: 'symmetrise'
sidebar: function_reference_sidebar
permalink: symmetrise_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetrise.html
status: Reference
---
{% raw %}
apply the symmetry action appropriate to directions, tensors or fields.

## Syntax

<div class="mx-form" markdown="1">

```python
equivalents = symmetrise(h)
```

</div>

## Description

For an MTEX object, symmetrise(x, ...) calls x.symmetrise(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
symmetrise(x, *args, **kwargs)
```

</div>

## Methods it calls

| [fibre](fibre.symmetrise_py.html) | the symmetrically equivalent fibres, MATLAB's fibre.symmetrise |
| [orientation](orientation.symmetrise_py.html) | all crystallographically equivalent orientations |
| [S2AxisFieldHarmonic](S2AxisFieldHarmonic.symmetrise_py.html) | the projection onto the equivariant fields, a(s xi) = +- s a(xi) |
| [S2FunHarmonic](S2FunHarmonic.symmetrise_py.html) | the projection onto the functions invariant under the group of the frame, or under a list of rotations forming a group the frame does not name |
| [S2VectorFieldHarmonic](S2VectorFieldHarmonic.symmetrise_py.html) | the projection onto the equivariant fields of the frame, v(s xi) = s v(xi) for the elements of the group including the improper ones |
| [slipSystem](slipSystem.symmetrise_py.html) | the systems of every family: the pairs of the orbits that stay orthogonal, both signs of the Burgers vector unless antipodal |
| [SO3FunHarmonic](SO3FunHarmonic.symmetrise_py.html) | project the coefficients onto the symmetries carried by the two frames |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.symmetrise_py.html) | the projection onto the equivariant fields of the frames: the invariant side one component at a time, the equivariant side F -> s F(s^-1 R) on the left, F -> s F(R s) on the right, by the Kronecker products |
| [tensor](tensor.symmetrise_py.html) | the mean over the group of the frame, and whether the tensor is invariant under it |
| [vector3d](vector3d.symmetrise_py.html) | the symmetrically equivalent directions, numSym x shape, or the distinct ones of one direction with unique=True |

## Used on

[CrystalOperations](CrystalOperations_py.html), [OrientationSymmetry](OrientationSymmetry_py.html), [BoundaryNormalDistribution](BoundaryNormalDistribution_py.html), [MisorientationTheory](MisorientationTheory_py.html), [DislocationSystems](DislocationSystems_py.html), [SachsModel](SachsModel_py.html), [SchmidFactor](SchmidFactor_py.html), [TaylorModel](TaylorModel_py.html), [TextureEvolution](TextureEvolution_py.html), [S2FunOperations](S2FunOperations_py.html), [S2FunSym](S2FunSym_py.html)

MATLAB's [symmetrise](symmetrise.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
