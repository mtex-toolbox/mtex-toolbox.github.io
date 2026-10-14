---
title: 'slipSystem.twinC1'
sidebar: function_reference_sidebar
permalink: slipSystem.twinC1_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the compressive twin C1 <-110-2>{-1101} of a hexagonal crystal

## Syntax

With the critical resolved shear stress 1:

```python
sS = slipSystem.twinC1(cs)
```

With another:

```python
sS = slipSystem.twinC1(cs, CRSS=2)
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

## Used on

[Lankford](Lankford_py.html), [SlipSystems](SlipSystems_py.html), [TaylorHex](TaylorHex_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L547">source</a></font>
{% endraw %}
