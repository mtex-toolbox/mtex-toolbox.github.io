---
title: 'sphericalTransformAdjoint'
sidebar: function_reference_sidebar
permalink: sphericalTransformAdjoint_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the adjoint: fhat_l^m = sqrt((2l+1)/4pi) i^m sum_j d_l^{jm} d_l^{j0} h[m, -j] for
h[m, j] = sum_q w_q v_q e^{-i(m rho_q - j theta_q)}

## Syntax

H of shape (2L+1) x (2L+1):

```python
fhat = sphericalTransformAdjoint(H, 8)
```

H of the rows m >= 0 of a real function:

```python
fhat = sphericalTransformAdjoint(H, 8, real=True)
```

The adjoint of sphericalTransform: the internal spherical coefficients (with the
Condon-Shortley phase, not MATLAB's fhat) from the Fourier array of weighted values. For a
real function only the rows m >= 0 are read and the coefficients of negative order follow by
symmetry.

## Input

| | |
|---|---|
| `H` | the complex array h[m, j] |
| `L` | the bandwidth |

## Output

| | |
|---|---|
| `fhat` | the (L+1)^2 spherical coefficients |

## Keywords

| | default | |
|---|---|---|
| `real` | `False` | H holds the rows m >= 0 of a real function |
| `degrees` | `None` | the pairs (n, d_n(pi/2)) as halfPiDegrees yields them; by default those of the cache, which also selects the compiled loop |

## See also

[sphericalTransform](sphericalTransform_py.html), [sphericalSeriesAdjoint](sphericalSeriesAdjoint_py.html), [halfPiDegrees](halfPiDegrees_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L343">source</a></font>
{% endraw %}
