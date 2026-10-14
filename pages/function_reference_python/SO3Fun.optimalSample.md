---
title: 'SO3Fun.optimalSample'
sidebar: function_reference_sidebar
permalink: SO3Fun.optimalSample_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.optimalSample.html
status: Reference
---
{% raw %}
the sample of n nodes that reproduces a density best up to the bandwidth, on the sphere
or the rotation group; MATLAB's optimal discrete sampling points

## Syntax

Equally weighted directions:

```python
v = optimalSample(sF, 1000)
```

Moved from the starting nodes v0:

```python
v = optimalSample(sF, v0)
```

Exact up to degree 128:

```python
v = optimalSample(sF, 1000, bandwidth=128)
```

Gradient descent instead of L-BFGS:

```python
v = optimalSample(sF, n, method='steepestDescent')
```

More iterations, a finer stop:

```python
v = optimalSample(sF, n, maxIter=1000, tol=0.005*degree)
```

The weights optimised too:

```python
v, c = optimalSample(sF, n, optimizeWeights=True)
```

Nodes of smaller weight dropped:

```python
v, c = optimalSample(sF, n, optimizeWeights=True, minWeight=1e-4)
```

Orientations of an ODF:

```python
ori = optimalSample(odf, 500)
```

With the discrepancy and the stop reason:

```python
res = optimalSample(odf, 500, diagnostics=True)
```

The density f is represented by the discrete measure sum_j c_j delta_{x_j}, and the nodes
are moved so that the kernel discrepancy sum_l A_l |mu_l - f_l|^2, with the Legendre
coefficients A_l of the restricted distance kernel and the degrees l up to the bandwidth,
becomes small. f need not be normalised. The minimisation is a limited memory BFGS
iteration with an Armijo line search, along the geodesics of the sphere with the stored
steps parallel transported, and in the left components on the rotation group; memory=0
or method='steepestDescent' is plain gradient descent. Like discreteSample, but the nodes
fit the density far better, at the price of time.

With optimizeWeights=True the weights are unknowns too and stay on the simplex: through a
softmax moved together with the nodes on the sphere, by multiplicative steps alternating
with the node steps on the rotation group; the first warmUp iterations move the nodes
only. The weights are volume fractions, calcDensity(v, weights=c) takes them. MATLAB
optimises the weights when a second output is asked for; here the keyword says it.

## Input

| | |
|---|---|
| `f` | S2Fun or SO3Fun, a nonnegative real density |
| `n` | the number of nodes, or the starting nodes, vector3d or orientation |

## Output

| | |
|---|---|
| `v` | vector3d, or orientation for a function on SO(3), the nodes |
| `c` | ndarray, the weights, nonnegative and summing to one (with optimizeWeights) |
| `res` | OptimalSampleResult (with diagnostics): nodes, weights, discrepancy, history, iterations, converged, reason, bandwidth |

## Keywords

| | default | |
|---|---|---|
| `optimizeWeights` | `False` | optimise the weights as well and return the nodes and the weights |
| `bandwidth` | `None` | the largest harmonic degree reproduced; by default the preference defaultS2Bandwidth on the sphere, 32 on SO(3) |
| `maxIter` | `None` | the largest number of iterations; by default 1000 on the sphere, 100 on SO(3) |
| `tol` | `None` | stop when no node moves further, in radians; by default 0.01 degree on the sphere, 0.1 degree on SO(3) |
| `weights` | `None` | the starting weights, fixed unless optimised; by default equal |
| `memory` | `5` | the number of steps L-BFGS keeps; 0 is steepest descent |
| `method` | `'lbfgs'` | 'lbfgs' or 'steepestDescent', the latter an empty memory |
| `warmUp` | `None` | the iterations that move the nodes only, when the weights are optimised; by default a fifth of maxIter |
| `tolWeights` | `None` | stop when no weight changes more; by default 1e-3 / n |
| `tolJ` | `0.0001` | stop below this relative decrease of the discrepancy, when the weights are optimised |
| `innerIter` | `5` | the multiplicative weight steps per iteration on SO(3) |
| `minWeight` | `0.0` | drop the nodes of a smaller weight at the end, when the weights are optimised |
| `diagnostics` | `False` | return an OptimalSampleResult instead of the nodes |

## References

- M. Graef, D. Potts, G. Steidl, Quadrature errors, discrepancies, and their relations to halftoning on the torus and the sphere, SIAM J. Sci. Comput. 34 (2012) A2760-A2791
- M. Knezevic, N. W. Landry, Procedures for reducing large datasets of crystal orientations using generalized spherical harmonics, Mech. Mater. 88 (2015) 73-86

## See also

[discreteSample](discreteSample_py.html), [calcDensity](calcDensity_py.html), [S2RestrictedDistanceKernel](S2RestrictedDistanceKernel_index_py.html), [SO3RestrictedDistanceKernel](SO3RestrictedDistanceKernel_index_py.html)

## Used on

[RandomSampling](RandomSampling_py.html), [S2FunSampling](S2FunSampling_py.html)

MATLAB's [SO3Fun.optimalSample](SO3Fun.optimalSample.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/optimalsample.py#L378">source</a></font>
{% endraw %}
