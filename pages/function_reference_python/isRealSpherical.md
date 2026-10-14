---
title: 'isRealSpherical'
sidebar: function_reference_sidebar
permalink: isRealSpherical_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
whether spherical coefficients are those of a real function, fhat_l^{-m} = (-1)^m conj(fhat_l^m)

## Syntax

Whether f is real valued:

```python
isRealSpherical(f._fhat)
```

With a looser tolerance:

```python
isRealSpherical(f._fhat, tol=1e-6)
```

The coefficients are the internal ones of an S2FunHarmonic, f._fhat, with the Condon-Shortley
phase the relation above assumes.

## Input

| | |
|---|---|
| `fhat` | the spherical coefficients |

## Output

| | |
|---|---|
| `isReal` | bool |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-10` | the tolerance, relative to the size of a coefficient where it exceeds one |

## See also

[isRealWigner](isRealWigner_py.html), [isRealFourier](isRealFourier_py.html), [sphericalSeries](sphericalSeries_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L408">source</a></font>
{% endraw %}
