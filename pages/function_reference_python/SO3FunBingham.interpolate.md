---
title: 'SO3FunBingham.interpolate'
sidebar: function_reference_sidebar
permalink: SO3FunBingham.interpolate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunBingham.interpolate.html
status: Reference
---
{% raw %}
A method of [SO3FunBingham](SO3FunBingham_index_py.html).

the function on SO(3) through the values at the orientations, interpolate(nodes, values)

## Syntax

An SO3FunHarmonic through the values:

```python
SO3F = SO3Fun.interpolate(ori, values)
```

Of a given degree:

```python
SO3F = SO3Fun.interpolate(ori, values, bandwidth=4)
```

The keywords of interpolate, bandwidth, lambda_, s, weights, maxIter, tol and withParameters,
are passed on: the coefficients fit the values by least squares with a Sobolev
regularisation.

## Input

| | |
|---|---|
| `nodes` | orientation, or SO3TangentVector for a vector field |
| `values` | ndarray of one value per node |

## Output

| | |
|---|---|
| `SO3F` | SO3FunHarmonic, or SO3VectorFieldHarmonic for tangent vectors |

## See also

[interpolate](SO3VectorFieldHarmonic.interpolate_py.html), [SO3FunHarmonic.interpolate](SO3FunHarmonic.interpolate_py.html), [calcDensity](calcDensity_py.html)

## Signature

```python
SO3FunBingham.interpolate(nodes, values=None, **kwargs)
```

MATLAB's [SO3FunBingham.interpolate](SO3FunBingham.interpolate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3funclass.py#L41">source</a></font>
{% endraw %}
