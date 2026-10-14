---
title: 'invariantProjection'
sidebar: function_reference_sidebar
permalink: invariantProjection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the projection of the harmonic coefficients onto the functions invariant under a group,
one matrix P_n per degree up to L

## Syntax

<div class="mx-form" markdown="1">

```python
P = invariantProjection(cs, 16)
```

Under the rotation parts of all elements.

</div>

<div class="mx-form" markdown="1">

```python
P = invariantProjection(cs, 16, proper=True)
```

Under the proper elements alone.

</div>

<div class="mx-form" markdown="1">

```python
P = invariantProjection(cs, 16, dtype=np.float32)
```

In single precision.

</div>

## Description

P_n is the mean of the Wigner matrices of the group's rotations; it is nonzero only where
both indices are multiples of the order of the group's axis along z (P.fold), and only that
part is held. A group whose elements all have the identity as rotation part projects with
the identity, no matrices at all. The projections are cached per group, precision and
properness, and grow with the bandwidth asked; the symmetrisation of SO3FunHarmonic and
S2FunHarmonic uses them.

## Input

| `g` | pointGroup or a frame carrying one |
| `L` | the bandwidth, the largest degree |

## Keywords

| keyword | default | description |
|---|---|---|
| `dtype` | `<class 'numpy.float64'>` | the real precision of the matrices, which are complex of that precision |
| `proper` | `False` | project onto the functions invariant under the proper elements alone, which the sphere needs beside the rotation parts of all elements |

## Output

| `P` | InvariantProjection, its blocks the matrices of the degrees 0 to L |

## See also

[WignerD](WignerD_py.html), [SO3FunHarmonic.symmetrise](SO3FunHarmonic.symmetrise_py.html), [S2FunHarmonic.symmetrise](S2FunHarmonic.symmetrise_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/harmonics.py#L384">source</a></font>
{% endraw %}
