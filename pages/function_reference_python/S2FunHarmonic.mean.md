---
title: 'S2FunHarmonic.mean'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.mean.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the mean over the sphere, int f dS / 4 pi, one per function; with an axis the mean
function along that axis of a list; MATLAB's mean

## Syntax

<div class="mx-form" markdown="1">

```python
value = mean(sF)
```

The mean value, one per function of a list.

</div>

<div class="mx-form" markdown="1">

```python
sF = mean(sF, axis=0)
```

The pointwise mean of a list along its first axis.

</div>

## Input

| `sF` | S2FunHarmonic |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `None` | the axis of the list along which the functions are averaged |

## Output

| `value` | float, or an array of the shape of the list; with an axis S2FunHarmonic |

## See also

[S2FunHarmonic.sum](S2FunHarmonic.sum_py.html), [S2FunHarmonic.norm](S2FunHarmonic.norm_py.html)

MATLAB's [S2FunHarmonic.mean](S2FunHarmonic.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L578">source</a></font>
{% endraw %}
