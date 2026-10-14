---
title: 'S2FunHarmonic.sqrt'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.sqrt_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.sqrt.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the square root of the function, expanded by quadrature, or at the bandwidth given

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

The function is evaluated on a quadrature grid and expanded again (mapFun); the square root
is no polynomial, so the expansion is cut at the bandwidth: by default twice that of the
function, at least 32. A negative value gives NaN.

## Input

| `sF` | S2FunHarmonic |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the largest harmonic degree of the result |

## Output

| `sF` | S2FunHarmonic |

## See also

[mapFun](mapFun_py.html), [S2FunHarmonic.quadrature](S2FunHarmonic.quadrature_py.html)

MATLAB's [S2FunHarmonic.sqrt](S2FunHarmonic.sqrt.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L521">source</a></font>
{% endraw %}
