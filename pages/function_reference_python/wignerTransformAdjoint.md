---
title: 'wignerTransformAdjoint'
sidebar: function_reference_sidebar
permalink: wignerTransformAdjoint_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the adjoint of the Wigner coefficient transform: the Fourier array of weighted values back
to Wigner coefficients

## Syntax

The coefficients of the array, j = 0 at index L:

```python
fhat = wignerTransformAdjoint(H, L)
```

A real function, only l >= 0 given:

```python
fhat = wignerTransformAdjoint(H, L, real=True)
```

The output of an FFT, negative orders wrapped:

```python
fhat = wignerTransformAdjoint(H, L, centre=0)
```

fhat_n^{kl} = sqrt(2n+1) i^{k-l} sum_j d_n^{jk}(pi/2) d_n^{jl}(pi/2) H[l, k, -j], the adjoint
of wignerTransform. With H = sum_m w_m e^{i(k alpha_m + j beta_m + l gamma_m)}, the adjoint
NUFFT of weighted values at the orientations, it gives the coefficients a quadrature takes,
which is how the harmonic expansion of a function and calcDensity reach their coefficients.

For a real function only l >= 0 is given and the rest of every block follows from
fhat_n^{-k,-l} = (-1)^{k-l} conj(fhat_n^{kl}). The folds step l by rA and k by rB, as in
the forward transform.

## Input

| | |
|---|---|
| `H` | complex array (l, k, j), the Fourier array of the values |
| `L` | the bandwidth |

## Output

| | |
|---|---|
| `fhat` | the internal Wigner coefficients, SO3FunHarmonic._fhat, of the degrees 0 to L |

## Keywords

| | default | |
|---|---|---|
| `real` | `False` | the function is real, H given for l >= 0 |
| `folds` | `(1, 1)` | (rA, rB), the folds about z in the crystal and the specimen |
| `degrees` | `None` | pairs (n, d_n(pi/2)) to sum over instead of the cached matrices, which selects the NumPy form |
| `centre` | `None` | the index of the order j = 0 on the last axis of H; L by default, 0 for the output of an FFT |

## See also

[wignerTransform](wignerTransform_py.html), [sphericalTransformAdjoint](sphericalTransformAdjoint_py.html), [SO3FourierPlan](SO3FourierPlan_index_py.html), [wignerSeriesAdjoint](wignerSeriesAdjoint_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L239">source</a></font>
{% endraw %}
