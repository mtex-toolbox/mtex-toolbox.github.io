---
title: 'SO3FunHarmonic.horzcat'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.horzcat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.horzcat.html
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

Two single functions give a list of two, and two columns of n functions, F.T of a list F,
joined along axis 1 give n x 2 functions. A list lacking the axis gets it as a trailing axis
of length one, as MATLAB's cat(2, F1, F2) gives a 1 x 2 list of two functions. The real flag
is kept when every function is real.

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

MATLAB's [SO3FunHarmonic.horzcat](SO3FunHarmonic.horzcat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L219">source</a></font>
{% endraw %}
