---
title: 'wignerTransform'
sidebar: function_reference_sidebar
permalink: wignerTransform_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the Wigner coefficient transform: the coefficients of a Wigner series as the Fourier array
of the same function in the Euler angles

## Syntax

<div class="mx-form" markdown="1">

```python
G = wignerTransform(fhat, L)
```

The full Fourier array, axes (l, k, j).

</div>

<div class="mx-form" markdown="1">

```python
G = wignerTransform(fhat, L, real=True)
```

A real function, only l >= 0.

</div>

<div class="mx-form" markdown="1">

```python
G = wignerTransform(fhat, L, folds=(4, 2))
```

A 4 fold about z in the crystal, 2 fold in the specimen.

</div>

## Description

A Wigner series of bandwidth L is a trigonometric series in the Euler angles,
f(alpha, beta, gamma) = sum G[l, k, j] e^{-i(k alpha + j beta + l gamma)}, with
G[l, k, j] = sum_n sqrt(2n+1) i^{k-l} fhat_n^{kl} d_n^{jk}(pi/2) d_n^{jl}(pi/2). The array
is what a NUFFT or, on a Clenshaw-Curtis grid, an FFT evaluates; SO3FunHarmonic.eval goes
this way. Every index runs from -L to L and sits at its value plus L.

The coefficients are the internal ones, SO3FunHarmonic._fhat (docs/design/harmonics.md), not
the fhat a user reads. For a real function only l >= 0 is kept, the plane l = 0 halved, and
f is twice the real part of the sum. A function with an rA fold symmetry about z in the
crystal and an rB fold in the specimen has coefficients only at l = 0 mod rA and
k = 0 mod rB: those axes are indexed by l / rA and k / rB.

## Input

| `fhat` | the internal Wigner coefficients, a complex array of at least the degrees 0 to L |
| `L` | the bandwidth |

## Keywords

| keyword | default | description |
|---|---|---|
| `real` | `False` | the function is real, the array kept for l >= 0 |
| `folds` | `(1, 1)` | (rA, rB), the folds about z in the crystal and the specimen |
| `degrees` | `None` | pairs (n, d_n(pi/2)) to sum over instead of the cached matrices, which selects the NumPy form |

## Output

| `G` | complex array of the shape foldedDims(L, real, folds) |

## See also

[wignerTransformAdjoint](wignerTransformAdjoint_py.html), [sphericalTransform](sphericalTransform_py.html), [SO3FunHarmonic](SO3FunHarmonic_index_py.html), [SO3FourierPlan](SO3FourierPlan_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L185">source</a></font>
{% endraw %}
