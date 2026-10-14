---
title: 'SO3VectorFieldRBF.interpolate'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldRBF.interpolate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldRBF.interpolate.html
status: Reference
---
{% raw %}
the function in harmonic form fitted by least squares to values at nodes: on SO(3) at
orientations, on the sphere at directions, a vector field for vector values or tangent vectors

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = interpolate(ori, y)
```

An SO(3) function through values at orientations.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = interpolate(ori, y, bandwidth=8, weights='equal')
```

Of a given degree, the nodes weighted equally.

</div>

<div class="mx-form" markdown="1">

```python
SO3F, (flag, residual, nIter) = interpolate(ori, y, withParameters=True)
```

With LSQR's flag, residual and iterations.

</div>

<div class="mx-form" markdown="1">

```python
sF = interpolate(v, y, bandwidth=16, lambda_=1e-4)
```

A function on the sphere through values at directions.

</div>

<div class="mx-form" markdown="1">

```python
sVF = interpolate(v, w)
```

A vector field on the sphere through vectors w.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = interpolate(SO3TangentVector(w, ori), bandwidth=8)
```

A vector field on SO(3) through tangent vectors.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = interpolate(SO3TangentVector(w, ori), lambda_=0)
```

Without regularisation.

</div>

## Description

The harmonic coefficients up to the bandwidth minimise the weighted squared misfit at the
nodes plus lambda_ times the Sobolev norm of order s, solved by LSQR. On SO(3) the fit is posed
among the functions with the symmetries of the nodes; nodes closer than 0.02 are merged into one
carrying the mean of their values; the bandwidth follows from the number of nodes, at most the
preference 'maxSO3Bandwidth'. Values with further axes after the node axis give one function
per component. A vector field on SO(3) is fitted componentwise, three SO3FunHarmonic, as
MATLAB's SO3VectorFieldHarmonic.interpolate; MATLAB passes the tangent vectors as values,
here they carry their orientations.

## Input

| `nodes` | orientation or rotation, vector3d, or SO3TangentVector for a vector field on SO(3) |
| `values` | ndarray of one value per node, or vector3d for a vector field on the sphere |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the largest harmonic degree; set by hand it may undersample |
| `lambda_` | `None` | the regularisation parameter, 1e-8 on SO(3) by default, 0 for none; MATLAB's 'regularization' |
| `s` | `2` | the order of the Sobolev norm; MATLAB's 'SobolevIndex' |
| `weights` | `None` | the weights of the nodes: by default their Voronoi volumes below 10000 nodes, else equal; 'equal', or one number per node |
| `maxIter` | `100` | the largest number of LSQR iterations |
| `tol` | `None` | the tolerance of LSQR, 1e-3 on SO(3) and 1e-6 on the sphere by default |
| `withParameters` | `False` | return also LSQR's flag, residual and number of iterations |

## Output

| `SO3F` | SO3FunHarmonic, S2FunHarmonic, S2VectorFieldHarmonic or SO3VectorFieldHarmonic |

## See also

[SO3FunHarmonic.interpolate](SO3FunHarmonic.interpolate_py.html), [S2FunHarmonic.interpolate](S2FunHarmonic.interpolate_py.html), [SO3FunRBF.interpolate](SO3FunRBF.interpolate_py.html), [calcDensity](calcDensity_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html), [HarmonicApproximationTheory](HarmonicApproximationTheory_py.html)

MATLAB's [SO3VectorFieldRBF.interpolate](SO3VectorFieldRBF.interpolate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/density.py#L188">source</a></font>
{% endraw %}
