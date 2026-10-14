---
title: 'SO3FunHarmonic.approximate'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.approximate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.approximate.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the harmonic series of a function on SO(3) by quadrature; MATLAB's approximate and
quadrature

## Syntax

Another function to a bandwidth:

```python
SO3F = SO3FunHarmonic.quadrature(odf, bandwidth=48)
```

A callable and its frames:

```python
SO3F = SO3FunHarmonic.quadrature(lambda o: o.angle(), cs, bandwidth=16)
```

Values on a quadratureSO3Grid:

```python
SO3F = SO3FunHarmonic.quadrature(g, odf(g.nodes()))
```

Values at orientations, weighted equally:

```python
SO3F = SO3FunHarmonic.quadrature(ori, values, bandwidth=8)
```

A callable or another SO(3) function is expanded as SO3FunHarmonic(f, cs, ss, bandwidth=)
does, exact up to the bandwidth. Values at nodes are summed with the weights against the
Wigner functions and projected onto the functions invariant under the frames; on a
quadratureSO3Grid the grid's weights make the result exact up to its bandwidth, which is
the default bandwidth then, the values at its distinct nodes spread onto all of them. At
other nodes the sum is the quadrature only when the weights are those of a quadrature
rule; equal weights 1/n give the series of the density of the nodes times the values, for
a fit see SO3FunHarmonic.interpolate. SO3FunHarmonic.approximate is the same function.

## Input

| | |
|---|---|
| `nodes` | a callable or SO3Fun, a quadratureSO3Grid, orientation or rotation |
| `values` | array, the values at the nodes; none for a callable, whose crystal frame may stand here |
| `cs, ss` | the frames of a callable or of rotations |

## Output

| | |
|---|---|
| `SO3F` | SO3FunHarmonic |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the largest degree of the series, by default the preference defaultSO3Bandwidth or the grid's |
| `weights` | `None` | the quadrature weights of the nodes |
| `real` | `None` | whether the function takes real values only; by default whether the values are real |
| `antipodal` | `False` | f(g) = f(g^-1), for a misorientation function; taken from antipodal orientations as well |

## See also

[SO3FunHarmonic](SO3FunHarmonic_index_py.html), [SO3FunHarmonic.interpolate](SO3FunHarmonic.interpolate_py.html), [quadratureSO3Grid](quadratureSO3Grid_index_py.html), [calcDensity](calcDensity_py.html)

MATLAB's [SO3FunHarmonic.approximate](SO3FunHarmonic.approximate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L224">source</a></font>
{% endraw %}
