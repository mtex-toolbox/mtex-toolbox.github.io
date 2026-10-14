---
title: 'S2Fun.interpolate'
sidebar: function_reference_sidebar
permalink: S2Fun.interpolate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S2Fun](S2Fun_index_py.html).

a function on the sphere through the values at the nodes, a regularised least squares fit;
MATLAB's S2FunHarmonic.interpolate

## Syntax

A function through values at directions:

```python
sF = S2Fun.interpolate(v, y)
```

Of a given degree, regularised:

```python
sF = S2Fun.interpolate(v, y, bandwidth=16, lambda_=1e-4)
```

A vector field through vectors w:

```python
sVF = S2Fun.interpolate(v, w)
```

The harmonic coefficients up to the bandwidth minimise the weighted squared misfit at the
nodes plus lambda_ times the Sobolev norm, solved by LSQR; the keywords, bandwidth, lambda_,
s, weights, maxIter, tol and withParameters, are those of interpolate, where they are
explained.

## Input

| | |
|---|---|
| `nodes` | vector3d, the directions |

## Output

| | |
|---|---|
| `sF` | S2FunHarmonic, or S2VectorFieldHarmonic for vector values |

## Keywords

| | default | |
|---|---|---|
| `values` | `None` | ndarray of one value per node, or vector3d for a vector field |

## See also

[interpolate](SO3VectorFieldHarmonic.interpolate_py.html), [S2FunHarmonic.adjoint](S2FunHarmonic.adjoint_py.html), [calcDensity](calcDensity_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funclass.py#L108">source</a></font>
{% endraw %}
