---
title: 'slipSystem.pyramidalCA'
sidebar: function_reference_sidebar
permalink: slipSystem.pyramidalCA_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the pyramidal c+a slip system <2-1-13>{-1101} of a hexagonal crystal

## Syntax

<div class="mx-form" markdown="1">

```python
sS = slipSystem.pyramidalCA(cs)
```

With the critical resolved shear stress 1.

</div>

<div class="mx-form" markdown="1">

```python
sS = slipSystem.pyramidalCA(cs, CRSS=2)
```

With another.

</div>

## Description

One system of the family; symmetrise gives every equivalent one.

## Input

| `CS` | crystalFrame of a hexagonal crystal |

## Keywords

| keyword | default | description |
|---|---|---|
| `CRSS` | `1` | the critical resolved shear stress |

## Output

| `sS` | slipSystem |

## See also

[slipSystem](slipSystem_index_py.html), [slipSystem.symmetrise](slipSystem.symmetrise_py.html), [dislocationSystem](dislocationSystem_index_py.html)

## Used on

[Lankford](Lankford_py.html), [SlipSystems](SlipSystems_py.html), [TaylorHex](TaylorHex_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L484">source</a></font>
{% endraw %}
