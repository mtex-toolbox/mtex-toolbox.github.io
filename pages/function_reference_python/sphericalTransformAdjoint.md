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

```python
sphericalTransformAdjoint(H, L, real=False, degrees=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L252">source</a></font>
{% endraw %}
