---
title: 'S1Fun.sqrt'
sidebar: function_reference_sidebar
permalink: S1Fun.sqrt_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Fun.sqrt.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

the pointwise square root, a Fourier series of a smoothing bandwidth, or at the bandwidth given

## Syntax

<div class="mx-form" markdown="1">

```python
sF = sqrt(sF)
```

At twice the bandwidth, at least 32.

</div>

<div class="mx-form" markdown="1">

```python
sF = sqrt(sF, bandwidth=64)
```

At the bandwidth given.

</div>

## Description

The function is evaluated on an equispaced grid and expanded again by quadrature (mapFun).
The square root is no trigonometric polynomial, so the expansion is cut at the bandwidth: by
default twice that of the function, at least 32, where MATLAB takes the default bandwidth of
S1FunHarmonic.quadrature.

## Input

| `sF` | S1FunHarmonic |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the largest frequency of the result |

## Output

| `sF` | S1FunHarmonic |

## See also

[mapFun](mapFun_py.html), [S1FunHarmonic.quadrature](S1FunHarmonic.quadrature_py.html)

MATLAB's [S1Fun.sqrt](S1Fun.sqrt.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L367">source</a></font>
{% endraw %}
