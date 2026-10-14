---
title: 'S1FunHarmonic.grad'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

the derivative as a function, or its values at the angles x

## Syntax

The derivative, an S1FunHarmonic:

```python
dF = grad(sF)
```

The derivative at the angles:

```python
d = grad(sF, [0.5, 1])
```

The coefficient c_k of the derivative is -ik c_k, the function diff gives.

## Input

| | |
|---|---|
| `sF` | S1FunHarmonic |

## Output

| | |
|---|---|
| `dF` | S1FunHarmonic, or the values at x |

## Keywords

| | default | |
|---|---|---|
| `x` | `None` | angles at which to evaluate the derivative |

## See also

[S1FunHarmonic.diff](S1FunHarmonic.diff_py.html), [S2FunHarmonic.grad](S2FunHarmonic.grad_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L226">source</a></font>
{% endraw %}
