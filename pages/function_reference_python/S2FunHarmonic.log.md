---
title: 'S2FunHarmonic.log'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.log_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the logarithm of the function, expanded by quadrature, or at the bandwidth given

## Syntax

At twice the bandwidth, at least 32:

```python
sF = log(sF)
```

At the bandwidth given:

```python
sF = log(sF, bandwidth=64)
```

The function is evaluated on a quadrature grid and expanded again (mapFun); the logarithm
is no polynomial, so the expansion is cut at the bandwidth: by default twice that of the
function, at least 32.

## Input

| | |
|---|---|
| `sF` | S2FunHarmonic |

## Output

| | |
|---|---|
| `sF` | S2FunHarmonic |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the largest harmonic degree of the result |

## See also

[mapFun](mapFun_py.html), [S2FunHarmonic.quadrature](S2FunHarmonic.quadrature_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L555">source</a></font>
{% endraw %}
