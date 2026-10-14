---
title: 'S2FunHarmonic.norm'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.norm_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.norm.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the L2 norm for the normalised surface measure, or the Sobolev norm, one per function;
MATLAB's norm

## Syntax

The L2 norm:

```python
t = norm(sF)
```

The Sobolev norm of index s:

```python
t = norm(sF, s=1)
```

The L2 norm is (int |f|^2 dS / 4 pi)^(1/2); the Sobolev norm weights the coefficients of
degree l by (2l+1)^(2s). MATLAB's norm has no Sobolev index.

## Input

| | |
|---|---|
| `sF` | S2FunHarmonic |

## Output

| | |
|---|---|
| `t` | float, or an array of the shape of the list |

## Keywords

| | default | |
|---|---|---|
| `s` | `None` | the Sobolev index; None for the L2 norm |

## See also

[S2FunHarmonic.dot](S2FunHarmonic.dot_py.html), [S2FunHarmonic.mean](S2FunHarmonic.mean_py.html)

MATLAB's [S2FunHarmonic.norm](S2FunHarmonic.norm.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L618">source</a></font>
{% endraw %}
