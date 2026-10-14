---
title: 'LaueName'
sidebar: function_reference_sidebar
permalink: LaueName_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return the Hermann-Mauguin symbol of the corresponding Laue group.

## Syntax

<div class="mx-form" markdown="1">

```python
name = LaueName(cs)
```

</div>

## Description

For an MTEX object, LaueName(x, ...) calls x.LaueName(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
LaueName(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.LaueName_py.html) | the international symbol of the Laue class of the group |
| [symmetry](symmetry.LaueName_py.html) | the Hermann-Mauguin symbol of the Laue group, the smallest one containing this group |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
