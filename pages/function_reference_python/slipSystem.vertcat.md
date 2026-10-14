---
title: 'slipSystem.vertcat'
sidebar: function_reference_sidebar
permalink: slipSystem.vertcat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: slipSystem.vertcat.html
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the list of several systems of one crystal, MATLAB's [sS1, sS2]

## Syntax

<div class="mx-form" markdown="1">

```python
sS = cat(sS1, sS2)
```

One list of both.

</div>

<div class="mx-form" markdown="1">

```python
sS = cat(sS1, sS2, axis=1)
```

Arrays of systems side by side.

</div>

## Description

The systems must be written in one frame; None operands are skipped.

## Input

| `systems` | slipSystem |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `0` | the axis along which they are joined, as NumPy's concatenate |

## Output

| `sS` | slipSystem |

## See also

[slipSystem](slipSystem_index_py.html), [slipSystem.symmetrise](slipSystem.symmetrise_py.html)

MATLAB's [slipSystem.vertcat](slipSystem.vertcat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L129">source</a></font>
{% endraw %}
