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

The defaults:

```python
SO3F = interpolateRBF(ori, y)
```

The halfwidth of the kernel:

```python
SO3F = interpolateRBF(ori, y, halfwidth=10*degree)
```

The kernels centred at the nodes:

```python
SO3F = interpolateRBF(ori, y, kernel=psi, exact=True)
```

On an equispaced grid of that resolution:

```python
SO3F = interpolateRBF(ori, y, kernel=psi, resolution=7*degree)
```

On a grid of your own:

```python
SO3F = interpolateRBF(ori, y, kernel=psi, SO3Grid=S3G)
```

A density, with the iterations:

```python
SO3F, it = interpolateRBF(ori, y, density=True, withIterations=True)
```

The function f(g) = sum_j w_j psi(angle(g, g_j)) with kernels centred on a grid minimises
sum_i |f(ori_i) - y_i|^2, the system matrix the kernel values between the nodes and the
centres, sparse. For a density, or values of one sign with a mean, the weights keep the
sign of the values and are found by the modified least squares method, mlsq; for others
by LSQR. A density has mean one and its centres of negligible weight are dropped. Values
with more than one column give one set of weights per column.

## Input

| | |
|---|---|
| `ori` | orientation, the nodes |
| `y` | the values at the nodes, (n,) or (n, k) |

## Output

| | |
|---|---|
| `SO3F` | SO3FunRBF |
| `it` | the number of iterations, one per column of y |

## Keywords

| | default | |
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

## References

- H. Schaeben, F. Bachmann, J.-J. Fundenberger, Construction of weighted crystallographic orientations capturing a given orientation density function, J. Mater. Sci. 52 (2017) 2077-2090

## See also

[interpSO3](interpSO3_py.html), [interpolate](SO3VectorFieldHarmonic.interpolate_py.html), [mlsq](mlsq_py.html), [SO3FunRBF](SO3FunRBF_index_py.html), [RBFApproximationTheory](RBFApproximationTheory_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbfinterpolation.py#L104">source</a></font>
{% endraw %}
