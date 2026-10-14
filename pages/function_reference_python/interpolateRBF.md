---
title: 'interpolateRBF'
sidebar: function_reference_sidebar
permalink: interpolateRBF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
an SO3FunRBF, a weighted sum of radial kernels, through values at orientations; MATLAB's
SO3FunRBF.interpolate

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = interpolateRBF(ori, y)
```

The defaults.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = interpolateRBF(ori, y, halfwidth=10*degree)
```

The halfwidth of the kernel.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = interpolateRBF(ori, y, kernel=psi, exact=True)
```

The kernels centred at the nodes.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = interpolateRBF(ori, y, kernel=psi, resolution=7*degree)
```

On an equispaced grid of that resolution.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = interpolateRBF(ori, y, kernel=psi, SO3Grid=S3G)
```

On a grid of your own.

</div>

<div class="mx-form" markdown="1">

```python
SO3F, it = interpolateRBF(ori, y, density=True, withIterations=True)
```

A density, with the iterations.

</div>

## Description

The function f(g) = sum_j w_j psi(angle(g, g_j)) has its kernels centred on an equispaced
grid, on a grid of your own or, with exact=True, at the nodes. Its weights minimise the
squared misfit sum_i |f(ori_i) - y_i|^2.

How the weights are found depends on the values:

- density=True: non negative weights by the modified least squares method, mlsq; the result
has mean one and drops the centres of negligible weight.
- values of one sign: weights of that sign by mlsq, scaled to the mean given, or by default
to the mean of the values over the Voronoi cells of the nodes. Above 10000 nodes without a
mean, LSQR as below.
- values of both signs: LSQR, the weights of any sign.

Values of shape (n, k) give a list of k functions, one per column, on the same centres, and
withIterations a list of the iterations of each.

## Input

| `ori` | orientation, the nodes |
| `y` | the values at the nodes, (n,) or (n, k) |

## Keywords

| keyword | default | description |
|---|---|---|
| `kernel` | `None` | SO3Kernel, the shape of the kernels instead of the de la Vallee Poussin kernel |
| `halfwidth` | `None` | the halfwidth of the de la Vallee Poussin kernel, by default the resolution or 5 degree |
| `resolution` | `None` | the resolution of the equispaced grid of the centres, by default the halfwidth of the kernel |
| `SO3Grid` | `None` | orientation, the centres instead of the equispaced grid |
| `density` | `False` | a non negative function of mean one |
| `mean` | `None` | the mean the result is scaled to, by default that of the values over the Voronoi cells of the nodes |
| `exact` | `False` | centre the kernels at the nodes themselves |
| `tol` | `0.001` | the tolerance of the iteration |
| `maxIter` | `None` | the largest number of iterations, by default 100 for mlsq and 30 for LSQR |
| `withIterations` | `False` | also return the number of iterations, MATLAB's second output |

## Output

| `SO3F` | SO3FunRBF, or a list of them for several columns |
| `it` | the number of iterations |

## References

- H. Schaeben, F. Bachmann, J.-J. Fundenberger, Construction of weighted crystallographic orientations capturing a given orientation density function, J. Mater. Sci. 52 (2017) 2077-2090

## See also

[interpSO3](interpSO3_py.html), [interpolate](SO3VectorFieldHarmonic.interpolate_py.html), [mlsq](mlsq_py.html), [SO3FunRBF](SO3FunRBF_index_py.html), [RBFApproximationTheory](RBFApproximationTheory_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbfinterpolation.py#L149">source</a></font>
{% endraw %}
