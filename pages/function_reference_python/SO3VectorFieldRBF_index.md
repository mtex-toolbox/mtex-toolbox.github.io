---
title: 'The class SO3VectorFieldRBF'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldRBF_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a vector field on SO(3) as a sum of radial kernels at centre orientations with weight vectors,
exactly equivariant

## Syntax

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldRBF(center, weights, psi)
```

From centres, weight vectors and a kernel.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldRBF(center, weights, None, 'right')
```

In the right tangent space, the default kernel.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldRBF(t, kernel=psi)
```

Fitted through tangent vectors t.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldRBF(F, resolution=10*degree)
```

Another field fitted on a grid.

</div>

## Description

The field is the sum over the centres of the kernel at the misorientation to the centre,
times the centre's weight vector. It is summed over the symmetric equivalents, so that it
is equivariant under the frames.

Through tangent vectors t, an SO3TangentVector at reference orientations, the weights solve
the dense linear system of the kernel between the references, which suits hundreds of
centres. Another field is sampled on an equispaced grid of the resolution and fitted the
same way, with a kernel of halfwidth the resolution unless one is given.

MATLAB stores the three components as SO3FunRBF; here the weights are one vector per centre.

## Input

| `center` | orientation, the centres; or an SO3TangentVector or SO3VectorField to fit |
| `weights` | (n, 3) array, one weight vector per centre |
| `psi` | SO3Kernel, a de la Vallee Poussin kernel of halfwidth 10 degree unless given |

## Keywords

| keyword | default | description |
|---|---|---|
| `kernel` |  | the kernel of a fit |
| `resolution` |  | the grid spacing of the fit of another field, 5 degree unless given |

## Output

| `SO3VF` | SO3VectorFieldRBF |

## See also

[SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html), [SO3FunRBF](SO3FunRBF_index_py.html), [SO3TangentVector](SO3TangentVector_index_py.html), [SO3FunVectorField](SO3FunVectorField_py.html)

## Members

| [bandwidth](SO3VectorFieldRBF.bandwidth_py.html) | the bandwidth of the kernel |
| [CS](SO3VectorFieldRBF.CS_py.html) | the crystal frame of the field, that of the centres |
| [dot](SO3VectorFieldRBF.dot_py.html) | the pointwise inner product: with another field a function on SO(3), with a constant vector a function on the component frames |
| [eval](SO3VectorFieldRBF.eval_py.html) | the tangent vectors of the field at orientations, the kernel sums over the symmetric equivalents of the centres |
| [frameA](SO3VectorFieldRBF.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](SO3VectorFieldRBF.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [interpolate](SO3VectorFieldRBF.interpolate_py.html) | the function in harmonic form fitted by least squares to values at nodes: on SO(3) at orientations, on the sphere at directions, a vector field for vector values or tangent vectors |
| [norm](SO3VectorFieldRBF.norm_py.html) | the length of the vectors as a function on SO(3), the same as abs |
| [normalize](SO3VectorFieldRBF.normalize_py.html) | the field of unit vectors in the directions of the field, by quadrature at twice the bandwidth |
| [plus](SO3VectorFieldRBF.plus_py.html) |  |
| [rotate](SO3VectorFieldRBF.rotate_py.html) | the field turned by a rotation, from the left or with side='right' from the right, the centres and weights moved |
| [SO3VectorFieldRBF](SO3VectorFieldRBF.SO3VectorFieldRBF_py.html) | a vector field on SO(3) as a sum of radial kernels at centre orientations with weight vectors, exactly equivariant |
| [SS](SO3VectorFieldRBF.SS_py.html) | the specimen frame of the field, that of the centres |
| [times](SO3VectorFieldRBF.times_py.html) |  |
| [uminus](SO3VectorFieldRBF.uminus_py.html) |  |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L1007">source</a></font>
{% endraw %}
