---
title: 'SO3FunHarmonic.sum'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.sum_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.sum.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the integral over SO(3), 8 pi^2 times the mean; with an axis the sum along it of the list

## Syntax

<div class="mx-form" markdown="1">

```python
value = sum(SO3F)
```

The integral of every function.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = sum(SO3F, axis=0)
```

The pointwise sum along the first axis.

</div>

## Input

| `SO3F` | SO3FunHarmonic, a single function or a list |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `None` | the axis of the list to sum the functions along; MATLAB's d, counted from 0 |

## Output

| `value` | float, or an array of the shape of the list |
| `SO3F` | SO3FunHarmonic, with axis given |

## See also

[SO3FunHarmonic.mean](SO3FunHarmonic.mean_py.html), [SO3FunHarmonic.norm](SO3FunHarmonic.norm_py.html)

MATLAB's [SO3FunHarmonic.sum](SO3FunHarmonic.sum.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L561">source</a></font>
{% endraw %}
