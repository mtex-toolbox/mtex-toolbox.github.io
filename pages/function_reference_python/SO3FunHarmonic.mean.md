---
title: 'SO3FunHarmonic.mean'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.mean.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the mean of every function; with an axis, MATLAB's mean(SO3F, d), the function that is the
mean along that axis of the list

## Syntax

<div class="mx-form" markdown="1">

```python
value = mean(SO3F)
```

The mean value of every function.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = mean(SO3F, axis=0)
```

The pointwise mean along the first axis of a list.

</div>

## Description

The mean value is the first Wigner coefficient, 1/(8 pi^2) times the integral over SO(3).

## Input

| `SO3F` | SO3FunHarmonic, a single function or a list |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `None` | the axis of the list to average the functions along; MATLAB's d, counted from 0 |

## Output

| `value` | float, or an array of the shape of the list |
| `SO3F` | SO3FunHarmonic, with axis given |

## See also

[SO3FunHarmonic.sum](SO3FunHarmonic.sum_py.html), [SO3FunHarmonic.norm](SO3FunHarmonic.norm_py.html)

MATLAB's [SO3FunHarmonic.mean](SO3FunHarmonic.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L537">source</a></font>
{% endraw %}
