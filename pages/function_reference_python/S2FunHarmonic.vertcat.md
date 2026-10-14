---
title: 'S2FunHarmonic.vertcat'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.vertcat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.vertcat.html
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

A single function counts as a list of one. The axis is that of the lists: the lists must
agree in every other axis, and to join along axis 1 they need two axes.

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

MATLAB's [S2FunHarmonic.vertcat](S2FunHarmonic.vertcat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L338">source</a></font>
{% endraw %}
