---
title: 'S2FunHarmonic.sum'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.sum_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.sum.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the integral over the sphere, int f dS, MATLAB's sum; with an axis the sum of the
functions along that axis of a list

## Syntax

<div class="mx-form" markdown="1">

```python
value = sum(sF)
```

The integral, one per function of a list.

</div>

<div class="mx-form" markdown="1">

```python
sF = sum(sF, axis=0)
```

The pointwise sum along the first axis.

</div>

## Input

| `sF` | S2FunHarmonic |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `None` | the axis of the list along which the functions are summed |

## Output

| `value` | float, or an array of the shape of the list; with an axis S2FunHarmonic |

## See also

[S2FunHarmonic.mean](S2FunHarmonic.mean_py.html), [S2FunHarmonic.cat](S2FunHarmonic.cat_py.html)

MATLAB's [S2FunHarmonic.sum](S2FunHarmonic.sum.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L599">source</a></font>
{% endraw %}
