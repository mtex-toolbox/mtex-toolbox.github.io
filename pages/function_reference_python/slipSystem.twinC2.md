---
title: 'slipSystem.twinC2'
sidebar: function_reference_sidebar
permalink: slipSystem.twinC2_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the compressive twin C2 <2-1-1-3>{2-1-12} of a hexagonal crystal

## Syntax

With the critical resolved shear stress 1:

```python
sS = slipSystem.twinC2(cs)
```

With another:

```python
sS = slipSystem.twinC2(cs, CRSS=2)
```

One system of the family; symmetrise gives every equivalent one.

## Input

| | |
|---|---|
| `CS` | crystalFrame of a hexagonal crystal |

## Output

| | |
|---|---|
| `sS` | slipSystem |

## Keywords

| | default | |
|---|---|---|
| `CRSS` | `1` | the critical resolved shear stress |

## See also

[slipSystem](slipSystem_index_py.html), [slipSystem.symmetrise](slipSystem.symmetrise_py.html), [dislocationSystem](dislocationSystem_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L566">source</a></font>
{% endraw %}
