---
title: 'SO3FunHarmonic.sqrt'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.sqrt_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the square root of the function, by quadrature at twice the bandwidth, or at the bandwidth given

## Syntax

At twice the bandwidth:

```python
SO3F = sqrt(SO3F)
```

At a bandwidth of its own:

```python
SO3F = SO3F.sqrt(bandwidth=32)
```

The values are taken on a quadrature grid and transformed back; negative values, which the
truncation of a density may leave, give NaN there.

## Input

| | |
|---|---|
| `SO3F` | SO3FunHarmonic |

## Output

| | |
|---|---|
| `SO3F` | SO3FunHarmonic |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the bandwidth of the result; twice that of the function by default |

## See also

[SO3FunHarmonic.exp](SO3FunHarmonic.exp_py.html), [SO3FunHarmonic.log](SO3FunHarmonic.log_py.html), [mapFun](mapFun_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L481">source</a></font>
{% endraw %}
