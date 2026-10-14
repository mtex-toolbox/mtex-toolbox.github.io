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

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHarmonic.quadrature(odf, bandwidth=48)
```

Another function to a bandwidth.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHarmonic.quadrature(lambda o: o.angle(), cs, bandwidth=16)
```

A callable and its frames.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHarmonic.quadrature(g, odf(g.nodes()))
```

Values on a quadratureSO3Grid.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHarmonic.quadrature(ori, values, bandwidth=8)
```

Values at orientations, weighted equally.

</div>

## Description

A callable or another SO(3) function is expanded as SO3FunHarmonic(f, cs, ss, bandwidth=)
does, exact up to the bandwidth; an SO3FunRBF reaches at most its kernel's bandwidth.

Values at nodes are summed with the weights against the Wigner functions and made
invariant under the frames. What that gives depends on the nodes:

- a quadratureSO3Grid: the grid's weights make the result exact up to its bandwidth, the
default then. Values at its distinct nodes are spread onto all of them.
- other nodes with the weights of a quadrature rule: the quadrature of that rule.
- other nodes, equally weighted by 1/n: the series of the density of the nodes times the
values, not a fit; for a fit see SO3FunHarmonic.interpolate.

SO3FunHarmonic.approximate is the same function.

## Input

| `nodes` | a callable or SO3Fun, a quadratureSO3Grid, orientation or rotation |
| `values` | array, the values at the nodes; none for a callable, whose crystal frame may stand here |
| `cs, ss` | the frames of a callable or of rotations |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the largest degree of the series, by default the preference defaultSO3Bandwidth or the grid's |
| `weights` | `None` | the quadrature weights of the nodes |
| `real` | `None` | whether the function takes real values only; by default whether the values are real |
| `antipodal` | `False` | f(g) = f(g^-1), for a misorientation function; taken from antipodal orientations as well |

## Output

| `SO3F` | SO3FunHarmonic |

## See also

[SO3FunHarmonic](SO3FunHarmonic_index_py.html), [SO3FunHarmonic.interpolate](SO3FunHarmonic.interpolate_py.html), [quadratureSO3Grid](quadratureSO3Grid_index_py.html), [calcDensity](calcDensity_py.html)

MATLAB's [SO3FunHarmonic.approximate](SO3FunHarmonic.approximate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L248">source</a></font>
{% endraw %}
