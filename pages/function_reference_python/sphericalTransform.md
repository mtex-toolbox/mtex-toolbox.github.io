---
title: 'sphericalTransform'
sidebar: function_reference_sidebar
permalink: sphericalTransform_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the Fourier array G[m, j] of spherical coefficients of bandwidth L, so that f(theta, rho) is
the sum of G e^{i(m rho - j theta)}; for a real function only m >= 0, the column m = 0 halved

## Syntax

<div class="mx-form" markdown="1">

```python
f = S2FunHarmonic(lambda v: v.z**2, bandwidth=8)
```

</div>

<div class="mx-form" markdown="1">

```python
G = sphericalTransform(f._fhat, 8)
```

The (2L+1) x (2L+1) array.

</div>

<div class="mx-form" markdown="1">

```python
G = sphericalTransform(f._fhat, 8, real=True)
```

The rows m >= 0 of a real function.

</div>

<div class="mx-form" markdown="1">

```python
G = sphericalTransform(f._fhat, 8, degrees=halfPiDegrees(8))
```

The Wigner-d matrices given.

</div>

## Description

The coefficients are the internal ones, f._fhat, with the Condon-Shortley phase
(docs/design/harmonics.md), not MATLAB's f.fhat. The transform is the first step of the
evaluation on a grid or by the NUFFT; with numba and no degrees given it is a compiled loop.

## Input

| `fhat` | the spherical coefficients, (L+1)^2 of them or more, those above L ignored |
| `L` | the bandwidth |

## Keywords

| keyword | default | description |
|---|---|---|
| `real` | `False` | the coefficients are those of a real function: only the rows m >= 0 are formed, and f is twice the real part of their sum |
| `degrees` | `None` | the pairs (n, d_n(pi/2)) as halfPiDegrees yields them; by default those of the cache, which also selects the compiled loop |

## Output

| `G` | the complex array, (L+1) x (2L+1) for a real function, (2L+1) x (2L+1) otherwise |

## See also

[sphericalTransformAdjoint](sphericalTransformAdjoint_py.html), [sphericalSeries](sphericalSeries_py.html), [halfPiDegrees](halfPiDegrees_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L298">source</a></font>
{% endraw %}
