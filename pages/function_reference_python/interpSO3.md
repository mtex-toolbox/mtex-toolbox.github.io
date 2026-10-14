---
title: 'interpSO3'
sidebar: function_reference_sidebar
permalink: interpSO3_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a function on SO(3) through values at orientations, by radial basis functions, by harmonics
or as a Bingham distribution; ori.interp(values) calls it

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = ori.interp(y)
```

A sum of kernels, the default.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = interpSO3(ori, y, halfwidth=10*degree, resolution=7*degree, density=True)
```

Of a kernel and grid, a density.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = interpSO3(ori, y, 'harmonic', bandwidth=16)
```

In harmonic form.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = interpSO3(ori, y, 'harmonic', regularisation=1e-4, SobolevIndex=2)
```

Regularised.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = interpSO3(ori, y, 'bingham')
```

The Bingham distribution of the weighted orientations.

</div>

## Description

The method is the flag: no flag gives an SO3FunRBF fitted by interpolateRBF, which takes the
other keywords (halfwidth, kernel, resolution, SO3Grid, exact, density, mean, tol,
maxIter); 'harmonic' an SO3FunHarmonic fitted by least squares, interpolate, which takes
bandwidth, weights, tol and maxIter; 'bingham' the Bingham distribution fitted to the
orientations weighted by the values, calcBinghamODF. Vector values give a vector field.

## Input

| `ori` | orientation, the nodes |
| `values` | the values at the nodes, or vectors for a vector field |
| `flags` | 'harmonic' or 'bingham' |

## Keywords

| keyword | default | description |
|---|---|---|
| `regularisation` | `None` | the weight of the Sobolev penalty of the harmonic fit |
| `SobolevIndex` | `None` | the Sobolev index s of the penalty of the harmonic fit |

## Output

| `SO3F` | SO3FunRBF, SO3FunHarmonic, SO3FunBingham or a vector field |

## See also

[interpolateRBF](interpolateRBF_py.html), [interpolate](SO3VectorFieldHarmonic.interpolate_py.html), [calcBinghamODF](orientation.calcBinghamODF_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html), [RBFApproximationTheory](RBFApproximationTheory_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbfinterpolation.py#L239">source</a></font>
{% endraw %}
