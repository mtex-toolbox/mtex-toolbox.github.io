---
title: 'slipSystem.horzcat'
sidebar: function_reference_sidebar
permalink: slipSystem.horzcat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: slipSystem.horzcat.html
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the list of several systems of one crystal, MATLAB's [sS1, sS2]

## Syntax

One list of both:

```python
sS = cat(sS1, sS2)
```

The systems must be written in one frame; None operands are skipped. The result is
always one flat list.

## Input

| | |
|---|---|
| `systems` | slipSystem |

## Output

| | |
|---|---|
| `sS` | slipSystem |

## Keywords

| | default | |
|---|---|---|
| `axis` | `0` | NumPy's axis, not used: the systems are always joined into one list |

## See also

[slipSystem](slipSystem_index_py.html), [slipSystem.symmetrise](slipSystem.symmetrise_py.html)

MATLAB's [slipSystem.horzcat](slipSystem.horzcat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L116">source</a></font>
{% endraw %}
