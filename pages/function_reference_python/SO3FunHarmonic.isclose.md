---
title: 'SO3FunHarmonic.isclose'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.isclose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the same coefficients up to a tolerance

## Syntax

Equal up to the relative tolerance 1e-8:

```python
SO3F.isclose(SO3F2)
```

Or up to an absolute one:

```python
SO3F.isclose(SO3F2, atol=1e-12)
```

The coefficients of both functions, padded to the larger bandwidth, agree when the norm of
their difference is at most atol + rtol times the norm of those of g.

## Input

| | |
|---|---|
| `SO3F, g` | SO3FunHarmonic |

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

[SO3FunHarmonic.norm](SO3FunHarmonic.norm_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L612">source</a></font>
{% endraw %}
