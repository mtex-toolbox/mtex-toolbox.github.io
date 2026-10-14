---
title: 'S1FunHarmonic.isclose'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.isclose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

whether the coefficients of g agree within atol + rtol times their norm

## Syntax

Equal up to a relative 1e-8:

```python
tf = isclose(sF1, sF2)
```

With an absolute tolerance:

```python
tf = isclose(sF1, sF2, atol=1e-3)
```

The functions are compared at the larger of their bandwidths: the Euclidean norm of the
difference of the coefficients, the L2 distance for the normalised measure, must not exceed
atol + rtol |g|.

## Input

| | |
|---|---|
| `sF1` | S1FunHarmonic |
| `g` | S1FunHarmonic, the function to compare with |

## Output

| | |
|---|---|
| `tf` | bool |

## Keywords

| | default | |
|---|---|---|
| `rtol` | `1e-08` | the tolerance relative to the norm of g |
| `atol` | `0.0` | the absolute tolerance |

## See also

[S1FunHarmonic.norm](S1FunHarmonic.norm_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L404">source</a></font>
{% endraw %}
