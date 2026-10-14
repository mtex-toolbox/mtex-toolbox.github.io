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

<div class="mx-form" markdown="1">

```python
isRealSpherical(f._fhat)
```

Whether f is real valued.

</div>

<div class="mx-form" markdown="1">

```python
isRealSpherical(f._fhat, tol=1e-6)
```

With a looser tolerance.

</div>

## Description

The coefficients are the internal ones of an S2FunHarmonic, f._fhat, with the Condon-Shortley
phase the relation above assumes.

## Input

| `fhat` | the spherical coefficients |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `1e-10` | the tolerance, relative to the size of a coefficient where it exceeds one |

## Output

| `isReal` | bool |

## See also

[isRealWigner](isRealWigner_py.html), [isRealFourier](isRealFourier_py.html), [sphericalSeries](sphericalSeries_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L408">source</a></font>
{% endraw %}
