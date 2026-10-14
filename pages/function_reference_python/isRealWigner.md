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

<div class="mx-form" markdown="1">

```python
isRealWigner(F._fhat)
```

Whether the SO(3) coefficients are those of a real function.

</div>

<div class="mx-form" markdown="1">

```python
isRealWigner(F._fhat, tol=1e-6)
```

With a looser tolerance.

</div>

## Description

Whether internal Wigner coefficients, F._fhat of an SO3FunHarmonic, belong to a real valued
function, every pair compared up to the relative tolerance.

## Input

| `fhat` | the Wigner coefficients |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `1e-10` | the tolerance, relative to the size of a coefficient where it exceeds one |

## Output

| `isReal` | bool |

## See also

[isRealSpherical](isRealSpherical_py.html), [isRealFourier](isRealFourier_py.html), [wignerSeries](wignerSeries_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L387">source</a></font>
{% endraw %}
