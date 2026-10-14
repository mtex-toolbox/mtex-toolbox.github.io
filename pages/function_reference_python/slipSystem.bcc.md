---
title: 'slipSystem.bcc'
sidebar: function_reference_sidebar
permalink: slipSystem.bcc_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the slip systems <1-11>{011}, <-111>{211} and <-111>{321} of a body-centred cubic crystal

## Syntax

<div class="mx-form" markdown="1">

```python
sS = slipSystem.bcc(cs)
```

With the critical resolved shear stress 1.

</div>

<div class="mx-form" markdown="1">

```python
sS = slipSystem.bcc(cs, CRSS=2)
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
| `CRSS` | `1` | the critical resolved shear stress, one or one per family |

## Output

| `sS` | slipSystem |

## See also

[slipSystem](slipSystem_index_py.html), [slipSystem.symmetrise](slipSystem.symmetrise_py.html), [dislocationSystem](dislocationSystem_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L371">source</a></font>
{% endraw %}
