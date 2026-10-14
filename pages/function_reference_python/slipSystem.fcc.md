---
title: 'slipSystem.fcc'
sidebar: function_reference_sidebar
permalink: slipSystem.fcc_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the slip system <01-1>{111} of a face-centred cubic crystal

## Syntax

<div class="mx-form" markdown="1">

```python
sS = slipSystem.fcc(cs)
```

With the critical resolved shear stress 1.

</div>

<div class="mx-form" markdown="1">

```python
sS = slipSystem.fcc(cs, CRSS=2)
```

With another.

</div>

## Description

One system of the family; symmetrise gives every equivalent one.

## Input

| `CS` | crystalFrame of a cubic crystal |

## Keywords

| keyword | default | description |
|---|---|---|
| `CRSS` | `1` | the critical resolved shear stress |

## Output

| `sS` | slipSystem |

## See also

[slipSystem](slipSystem_index_py.html), [slipSystem.symmetrise](slipSystem.symmetrise_py.html), [dislocationSystem](dislocationSystem_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L352">source</a></font>
{% endraw %}
