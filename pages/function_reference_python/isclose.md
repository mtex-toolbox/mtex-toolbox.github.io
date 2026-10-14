---
title: 'isclose'
sidebar: function_reference_sidebar
permalink: isclose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
compare objects within the numerical tolerances of their type.

## Syntax

<div class="mx-form" markdown="1">

```python
close = isclose(a, b)
```

</div>

## Description

For an MTEX object, isclose(x, ...) calls x.isclose(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.isclose.

## Signature

<div class="mx-form" markdown="1">

```python
isclose(x, *args, **kwargs)
```

</div>

## Methods it calls

| [embedding](embedding.isclose_py.html) | whether two embeddings belong to the same frame and have the same images up to atol |
| [fibre](fibre.eq_py.html) | equal when the frames are the same and h and r agree up to the symmetry of the frames within tol, both flipped counting as well |
| [orientation](orientation.isclose_py.html) | equal up to the symmetry of the frames within the angular tolerance tol, between the same frames |
| [orthogonalTransform](orthogonalTransform.isclose_py.html) | equal within the angular tolerance tol and of one parity, MATLAB's eq |
| [quaternion](quaternion.eq_py.html) | equal within the angular tolerance tol, MATLAB's eq |
| [referenceFrame](referenceFrame.isclose_py.html) | whether two frames may be treated as one: the same class of group and aligned bases, and for crystal frames the same mineral (MATLAB's eqTol) |
| [rotation](rotation.isclose_py.html) | equal within the angular tolerance tol, MATLAB's eq |
| [S1FunHarmonic](S1FunHarmonic.isclose_py.html) | whether the coefficients of g agree within atol + rtol times their norm |
| [S2FunHarmonic](S2FunHarmonic.isclose_py.html) | whether the coefficients agree with those of g within the tolerances, relative to the norm of g |
| [S2VectorFieldHarmonic](S2VectorFieldHarmonic.isclose_py.html) | whether two fields agree in their coefficients up to the relative tolerance rtol |
| [SO3FunHarmonic](SO3FunHarmonic.isclose_py.html) | the same coefficients up to a tolerance |
| [SO3TangentVector](SO3TangentVector.eq_py.html) | equal at the same reference within tol in the components (MATLAB's eq) |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.isclose_py.html) | whether two fields have the same coefficients on one side up to the relative tolerance rtol |
| [tensor](tensor.eq_py.html) | whether two tensors of one rank and shape agree coefficientwise within rtol and atol |
| [vector3d](vector3d.eq_py.html) | isclose(v, w), isclose(v, w, antipodal=True, tol=): pointing the same way up to the group of a crystal frame within the tolerance tol of the cosine, and up to sign when antipodal (MATLAB's eq) |

## Used on

[CrystalOperations](CrystalOperations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
