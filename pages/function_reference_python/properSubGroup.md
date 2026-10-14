---
title: 'properSubGroup'
sidebar: function_reference_sidebar
permalink: properSubGroup_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
retain only the proper rotations already present in a point group.

## Syntax

<div class="mx-form" markdown="1">

```python
proper = properSubGroup(cs)
```

</div>

## Description

For an MTEX object, properSubGroup(x, ...) calls x.properSubGroup(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
properSubGroup(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.properSubGroup_py.html) | return a sibling frame containing only the group's proper rotations |
| [symmetry](symmetry.properSubGroup_py.html) | retain the symmetry operations whose determinant is +1 |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
