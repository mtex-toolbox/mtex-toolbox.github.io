---
title: 'S2Fun.optimalSample'
sidebar: function_reference_sidebar
permalink: S2Fun.optimalSample_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Fun.optimalSample.html
status: Reference
---
{% raw %}
the sample of n nodes that reproduces a density best up to the bandwidth, on the sphere
or the rotation group; MATLAB's optimal discrete sampling points

## Syntax

<div class="mx-form" markdown="1">

```python
v = optimalSample(sF, 1000)
```

Equally weighted directions.

</div>

<div class="mx-form" markdown="1">

```python
v = optimalSample(sF, v0)
```

Moved from the starting nodes v0.

</div>

<div class="mx-form" markdown="1">

```python
v = optimalSample(sF, 1000, bandwidth=128)
```

Exact up to degree 128.

</div>

<div class="mx-form" markdown="1">

```python
v = optimalSample(sF, n, method='steepestDescent')
```

Gradient descent instead of L-BFGS.

</div>

<div class="mx-form" markdown="1">

```python
v = optimalSample(sF, n, maxIter=1000, tol=0.005*degree)
```

More iterations, a finer stop.

</div>

<div class="mx-form" markdown="1">

```python
v, c = optimalSample(sF, n, optimizeWeights=True)
```

The weights optimised too.

</div>

<div class="mx-form" markdown="1">

```python
v, c = optimalSample(sF, n, optimizeWeights=True, minWeight=1e-4)
```

Nodes of smaller weight dropped.

</div>

<div class="mx-form" markdown="1">

```python
ori = optimalSample(odf, 500)
```

Orientations of an ODF.

</div>

<div class="mx-form" markdown="1">

```python
res = optimalSample(odf, 500, diagnostics=True)
```

With the discrepancy and the stop reason.

</div>

## Description

The nodes are moved until the weighted point measure they form has the same harmonic
coefficients as the density, up to the bandwidth, as nearly as possible. The density need
not be normalised. The result fits the density far better than discreteSample, at the
price of time.

The minimisation is a limited memory BFGS iteration along the geodesics of the sphere or
of the rotation group. memory=0 or method='steepestDescent' is plain gradient descent.

With optimizeWeights=True the weights are unknowns too; they stay nonnegative and sum to
one, so they are volume fractions that calcDensity(v, weights=c) takes. The first warmUp
iterations move the nodes only. MATLAB optimises the weights when a second output is asked
for; here the keyword says it.

## Input

| `f` | S2Fun or SO3Fun, a nonnegative real density |
| `n` | the number of nodes, or the starting nodes, vector3d or orientation |

## Keywords

| keyword | default | description |
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

## Output

| `v` | vector3d, or orientation for a function on SO(3), the nodes |
| `c` | ndarray, the weights, nonnegative and summing to one (with optimizeWeights) |
| `res` | OptimalSampleResult (with diagnostics): nodes, weights, discrepancy, history, iterations, converged, reason, bandwidth |

## References

- M. Graef, D. Potts, G. Steidl, Quadrature errors, discrepancies, and their relations to halftoning on the torus and the sphere, SIAM J. Sci. Comput. 34 (2012) A2760-A2791
- M. Knezevic, N. W. Landry, Procedures for reducing large datasets of crystal orientations using generalized spherical harmonics, Mech. Mater. 88 (2015) 73-86

## See also

[discreteSample](discreteSample_py.html), [calcDensity](calcDensity_py.html), [S2RestrictedDistanceKernel](S2RestrictedDistanceKernel_index_py.html), [SO3RestrictedDistanceKernel](SO3RestrictedDistanceKernel_index_py.html)

## Used on

[RandomSampling](RandomSampling_py.html), [S2FunSampling](S2FunSampling_py.html)

MATLAB's [S2Fun.optimalSample](S2Fun.optimalSample.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/optimalsample.py#L398">source</a></font>
{% endraw %}
