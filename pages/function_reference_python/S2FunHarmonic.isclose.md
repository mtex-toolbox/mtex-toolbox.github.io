---
title: 'S2FunHarmonic.isclose'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.isclose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

whether the coefficients agree with those of g within the tolerances, relative to the norm of g

## Syntax

<div class="mx-form" markdown="1">

```python
tf = isclose(sF1, sF2)
```

Equal up to a relative 1e-8.

</div>

<div class="mx-form" markdown="1">

```python
tf = isclose(sF1, sF2, rtol=1e-2)
```

Up to a relative 1e-2.

</div>

## Description

The functions are compared at the larger of their bandwidths: the norm of the difference of
the coefficients must not exceed atol + rtol times the norm of those of g; a list counts as
one array.

## Input

| `sF1` | S2FunHarmonic |
| `g` | S2FunHarmonic, the function to compare with |

## Keywords

| keyword | default | description |
|---|---|---|
| `rtol` | `1e-08` | the tolerance relative to the norm of g |
| `atol` | `0.0` | the absolute tolerance |

## Output

| `tf` | bool |

## See also

[S2FunHarmonic.norm](S2FunHarmonic.norm_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L669">source</a></font>
{% endraw %}
