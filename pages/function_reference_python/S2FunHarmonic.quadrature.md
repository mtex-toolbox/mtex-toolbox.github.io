---
title: 'S2FunHarmonic.quadrature'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.quadrature_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.quadrature.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the harmonic series of a function on the sphere by quadrature, from a callable or from
values at nodes; MATLAB's approximate is the same

## Syntax

A callable on a grid of the default bandwidth:

```python
sF = S2FunHarmonic.quadrature(lambda v: v.z**2)
```

In the crystal frame cs:

```python
sF = S2FunHarmonic.quadrature(lambda v: v.z**2, cs, bandwidth=16)
```

Values at the nodes v:

```python
sF = S2FunHarmonic.quadrature(v, values, bandwidth=8, weights=w)
```

Values on a quadratureS2Grid g:

```python
sF = S2FunHarmonic.quadrature(g, values)
```

The coefficients are the integrals of f against the conjugate spherical harmonics,
computed as the quadrature sum sum_m w_m f(v_m) conj(Y(v_m)) by the adjoint transform. A
callable is sampled on a quadrature grid exact up to the bandwidth; values at scattered
nodes take the weights given, which integrate to 4 pi, equal ones by default, and give a
good approximation only on nodes dense enough for the bandwidth (S2FunHarmonic.interpolate
fits values by least squares instead). A quadratureS2Grid brings its own weights and
bandwidth. Values for a list of functions have the nodes first.

## Input

| | |
|---|---|
| `nodes` | a callable of vector3d, vector3d, or a quadratureS2Grid |
| `values` | the values at the nodes, the nodes along the first axis; for a callable the frame instead |
| `frame` | the crystalFrame or specimenFrame of the result; by default that of the nodes |

## Output

| | |
|---|---|
| `sF` | S2FunHarmonic |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the largest degree; by default the grid's for a quadrature grid, else the preference defaultS2Bandwidth |
| `weights` | `None` | the quadrature weights of the nodes, summing to 4 pi |
| `real` | `None` | whether the function is real; by default read off the values |
| `antipodal` | `None` | f(v) = f(-v); by default that of the nodes |

## See also

[S2FunHarmonic](S2FunHarmonic_index_py.html), [S2FunHarmonic.interpolate](S2FunHarmonic.interpolate_py.html), [quadratureS2Grid](quadratureS2Grid_index_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html)

MATLAB's [S2FunHarmonic.quadrature](S2FunHarmonic.quadrature.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L156">source</a></font>
{% endraw %}
