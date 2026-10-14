---
title: 'S2FunHarmonic.cat'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.cat.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the functions joined into one list along an axis, padded to the largest bandwidth;
MATLAB's cat, horzcat and vertcat

## Syntax

<div class="mx-form" markdown="1">

```python
sF = cat(sF1, sF2)
```

A list of two functions.

</div>

<div class="mx-form" markdown="1">

```python
sF = S2FunHarmonic.cat(sFa, sFb, axis=1)
```

Lists of shape (n, 1) side by side, an (n, 2) list.

</div>

## Description

A single function counts as a list of one, and a list lacking the axis gets it as a trailing
axis of length one, as MATLAB's cat(2, sF1, sF2) gives a 1 x 2 list of two functions. The
lists must agree in every other axis.

## Input

| `fs` | S2FunHarmonic, the functions or lists to join |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `0` | the axis of the lists along which they are joined |

## Output

| `sF` | S2FunHarmonic, a list of functions |

## See also

[S2FunHarmonic.sum](S2FunHarmonic.sum_py.html), [S2FunHarmonic.mean](S2FunHarmonic.mean_py.html)

MATLAB's [S2FunHarmonic.cat](S2FunHarmonic.cat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L338">source</a></font>
{% endraw %}
