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

<div class="mx-form" markdown="1">

```python
sF = S2Fun.interpolate(v, y)
```

A function through values at directions.

</div>

<div class="mx-form" markdown="1">

```python
sF = S2Fun.interpolate(v, y, bandwidth=16, lambda_=1e-4)
```

Of a given degree, regularised.

</div>

<div class="mx-form" markdown="1">

```python
sVF = S2Fun.interpolate(v, w)
```

A vector field through vectors w.

</div>

## Description

The harmonic coefficients up to the bandwidth minimise the weighted squared misfit at the
nodes plus lambda_ times the Sobolev norm, solved by LSQR; the keywords, bandwidth, lambda_,
s, weights, maxIter, tol and withParameters, are those of interpolate, where they are
explained.

## Input

| `nodes` | vector3d, the directions |

## Keywords

| keyword | default | description |
|---|---|---|
| `values` | `None` | ndarray of one value per node, or vector3d for a vector field |

## Output

| `sF` | S2FunHarmonic, or S2VectorFieldHarmonic for vector values |

## See also

[interpolate](SO3VectorFieldHarmonic.interpolate_py.html), [S2FunHarmonic.adjoint](S2FunHarmonic.adjoint_py.html), [calcDensity](calcDensity_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funclass.py#L122">source</a></font>
{% endraw %}
