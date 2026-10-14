---
title: 'SO3FunHarmonic.cat'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.cat.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the functions joined into one list along an axis, the coefficients padded to the largest
bandwidth; MATLAB's cat and [SO3F1; SO3F2]

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = cat(SO3F1, SO3F2)
```

One list after the other.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHarmonic.cat(F1.T, F2.T, axis=1)
```

Two lists of n functions as the columns of n x 2.

</div>

## Description

The lists are joined along an axis they have: two single functions give a list of two, and
two columns of n functions, F.T of a list F, joined along axis 1 give n x 2 functions. An axis
the lists do not have is not refused but joins the coefficient vectors. The real flag is
kept when every function is real.

## Input

| `SO3F1, SO3F2, ...` | SO3FunHarmonic, single functions or lists of the same frames |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `0` | the axis of the lists along which they are joined |

## Output

| `SO3F` | SO3FunHarmonic, the list of functions |

## See also

[SO3FunHarmonic.truncate](SO3FunHarmonic.truncate_py.html), [SO3FunHarmonic.sum](SO3FunHarmonic.sum_py.html), [SO3FunHarmonic.mean](SO3FunHarmonic.mean_py.html)

MATLAB's [SO3FunHarmonic.cat](SO3FunHarmonic.cat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L209">source</a></font>
{% endraw %}
