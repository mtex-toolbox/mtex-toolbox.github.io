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
the adjoint: fhat_n^{kl} = sqrt(2n+1) i^{k-l} sum_j d_n^{jk} d_n^{jl} h[l, k, -j] for
h = sum_m w_m v_m e^{i(k alpha + j beta + l gamma)}; for real values only l >= 0 is given and
the rest follows from fhat_n^{-k,-l} = (-1)^{k-l} conj(fhat_n^{kl}). The folds step l by rA
and k by rB, since the projection of H5 zeroes the rest anyway. The order j = 0 sits at the
index centre of the last axis, L unless given, 0 for the output of an FFT, whose negative
orders wrap around

## Syntax

```python
wignerTransformAdjoint(H, L, real=False, folds=(1, 1), degrees=None, centre=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L194">source</a></font>
{% endraw %}
