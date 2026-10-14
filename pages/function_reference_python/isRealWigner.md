---
title: 'isRealWigner'
sidebar: function_reference_sidebar
permalink: isRealWigner_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a coefficient vector is real valued when fhat_n^{-k,-l} = (-1)^{k-l} conj(fhat_n^{kl}) on
SO(3), fhat_l^{-m} = (-1)^m conj(fhat_l^m) on S2, c_{-k} = conj(c_k) on S1

## Syntax

Whether the SO(3) coefficients are those of a real function:

```python
isRealWigner(F._fhat)
```

With a looser tolerance:

```python
isRealWigner(F._fhat, tol=1e-6)
```

Whether internal Wigner coefficients, F._fhat of an SO3FunHarmonic, belong to a real valued
function, every pair compared up to the relative tolerance.

## Input

| | |
|---|---|
| `fhat` | the Wigner coefficients |

## Output

| | |
|---|---|
| `isReal` | bool |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-10` | the tolerance, relative to the size of a coefficient where it exceeds one |

## See also

[isRealSpherical](isRealSpherical_py.html), [isRealFourier](isRealFourier_py.html), [wignerSeries](wignerSeries_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L387">source</a></font>
{% endraw %}
