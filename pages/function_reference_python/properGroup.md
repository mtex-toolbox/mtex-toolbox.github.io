---
title: 'properGroup'
sidebar: function_reference_sidebar
permalink: properGroup_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
form a proper rotation group from all rotational parts of a point group.

## Syntax

<div class="mx-form" markdown="1">

```python
proper = properGroup(cs)
```

</div>

## Description

For an MTEX object, properGroup(x, ...) calls x.properGroup(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
properGroup(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.properGroup_py.html) | replace each point-group operation by its proper rotational part |
| [symmetry](symmetry.properGroup_py.html) | form a proper group from the rotational parts of all symmetry operations |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
