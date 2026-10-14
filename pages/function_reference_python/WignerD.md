---
title: 'WignerD'
sidebar: function_reference_sidebar
permalink: WignerD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: WignerD.html
status: Reference
---
{% raw %}
MATLAB's WignerD(R, n): the matrix of MTEX's Wigner functions, the internal one transposed
with the signs s_k s_l, s_m = -1 for odd m > 0, the basis the public coefficients fhat are
taken in; normalize=True scales by sqrt(2n + 1), so that f(R) = sum fhat_n^{kl} D_n^{kl}(R);
WignerD(beta, n) the real Wigner-d matrix at the second Euler angle

## Syntax

```python
WignerD(g, degree=None, *, bandwidth=None, normalize=False, dtype=None)
```

## Used on

[WignerFunctions](WignerFunctions_py.html)

MATLAB's [WignerD](WignerD.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/harmonics.py#L230">source</a></font>
{% endraw %}
