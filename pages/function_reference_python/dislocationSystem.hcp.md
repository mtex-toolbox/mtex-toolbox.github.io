---
title: 'dislocationSystem.hcp'
sidebar: function_reference_sidebar
permalink: dislocationSystem.hcp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [dislocationSystem](dislocationSystem_index_py.html).

there is no hcp default: raises an error naming the hexagonal families to choose from

## Syntax

What to write instead:

```python
dS = dislocationSystem(slipSystem.basal(cs).symmetrise(antipodal=True))
```

## Input

| | |
|---|---|
| `CS` | crystalFrame, not used |

## See also

[dislocationSystem.fcc](dislocationSystem.fcc_py.html), [dislocationSystem.bcc](dislocationSystem.bcc_py.html), [slipSystem.hcp](slipSystem.hcp_py.html)

## Signature

```python
dislocationSystem.hcp(CS=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L728">source</a></font>
{% endraw %}
