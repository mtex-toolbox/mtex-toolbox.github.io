---
title: 'SO3VectorFieldRBF.SO3VectorFieldRBF'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldRBF.SO3VectorFieldRBF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldRBF.SO3VectorFieldRBF.html
status: Reference
---
{% raw %}
a vector field on SO(3) as a sum of radial kernels at centre orientations with weight vectors,
exactly equivariant

## Syntax

From centres, weight vectors and a kernel:

```python
SO3VF = SO3VectorFieldRBF(center, weights, psi)
```

In the right tangent space, the default kernel:

```python
SO3VF = SO3VectorFieldRBF(center, weights, None, 'right')
```

Fitted through tangent vectors t:

```python
SO3VF = SO3VectorFieldRBF(t, kernel=psi)
```

Another field fitted on a grid:

```python
SO3VF = SO3VectorFieldRBF(F, resolution=10*degree)
```

The field is the sum over the centres of the kernel at the misorientation to the centre
times the centre's weight vector, summed over the symmetric equivalents so that it is
equivariant under the frames. Through tangent vectors t, an SO3TangentVector at reference
orientations, the weights solve the dense linear system of the kernel between the
references, which suits hundreds of centres; another field is sampled on an equispaced grid
of the resolution and fitted the same way, the kernel by default of halfwidth the resolution.
MATLAB stores the three components as SO3FunRBF; the weights here are one vector per centre.

## Input

| | |
|---|---|
| `center` | orientation, the centres; or an SO3TangentVector or SO3VectorField to fit |
| `weights` | (n, 3) array, one weight vector per centre |
| `psi` | SO3Kernel, a de la Vallee Poussin kernel of halfwidth 10 degree unless given |

## Output

| | |
|---|---|
| `SO3VF` | SO3VectorFieldRBF |

## Keywords

| | default | |
|---|---|---|
| `kernel` | `None` | the kernel of a fit |
| `resolution` | `None` | the grid spacing of the fit of another field, 5 degree unless given |

## See also

[SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html), [SO3FunRBF](SO3FunRBF_index_py.html), [SO3TangentVector](SO3TangentVector_index_py.html), [SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorFieldRBF.SO3VectorFieldRBF](SO3VectorFieldRBF.SO3VectorFieldRBF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L997">source</a></font>
{% endraw %}
