---
title: 'disjoint'
sidebar: function_reference_sidebar
permalink: disjoint_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
find the symmetry elements shared by two point groups or frames.

## Syntax

<div class="mx-form" markdown="1">

```python
common = disjoint(cs1, cs2)
```

</div>

## Description

For an MTEX object, disjoint(x, ...) calls x.disjoint(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
disjoint(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.disjoint_py.html) | the sibling frame carrying the intersection of the two groups |
| [symmetry](symmetry.disjoint_py.html) | return the intersection of two point groups in their current coordinate axes |

## Used on

[CrystalSymmetries](CrystalSymmetries_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
