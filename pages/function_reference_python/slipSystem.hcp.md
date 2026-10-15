---
title: 'slipSystem.hcp'
sidebar: function_reference_sidebar
permalink: slipSystem.hcp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

there is no hcp default: raises an error naming the hexagonal families to choose from
(basal, prismaticA, pyramidalCA, twinT1, ...) with their CRSS

## Syntax

<div class="mx-form" markdown="1">

```python
sS = cat(slipSystem.basal(cs, CRSS=1), slipSystem.prismaticA(cs, CRSS=2))
```

What to write instead.

</div>

## Description

The critical resolved shear stresses of the hexagonal families differ from material to
material, so they are chosen one by one, as MATLAB's error message says too.

## Input

| `CS` | crystalFrame, not used |

## Keywords

| keyword | default | description |
|---|---|---|
| `CRSS` | `1` | not used |

## See also

[slipSystem.basal](slipSystem.basal_py.html), [slipSystem.prismaticA](slipSystem.prismaticA_py.html), [slipSystem.pyramidalCA](slipSystem.pyramidalCA_py.html), [slipSystem.twinT1](slipSystem.twinT1_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L430">source</a></font>
{% endraw %}
