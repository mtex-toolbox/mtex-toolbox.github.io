---
title: 'SO3FunHarmonic.exp'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.exp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the exponential of the function, by quadrature at twice the bandwidth, or at the bandwidth given

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = exp(SO3F)
```

At twice the bandwidth.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3F.exp(bandwidth=8)
```

At a bandwidth of its own.

</div>

## Input

| `SO3F` | SO3FunHarmonic |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the bandwidth of the result; twice that of the function by default |

## Output

| `SO3F` | SO3FunHarmonic |

## See also

[SO3FunHarmonic.log](SO3FunHarmonic.log_py.html), [SO3FunHarmonic.sqrt](SO3FunHarmonic.sqrt_py.html), [mapFun](mapFun_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L501">source</a></font>
{% endraw %}
