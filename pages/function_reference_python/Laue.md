---
title: 'Laue'
sidebar: function_reference_sidebar
permalink: Laue_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
add inversion symmetry to a point group or reference frame.

## Syntax

<div class="mx-form" markdown="1">

```python
laue = Laue(cs)
```

</div>

## Description

For an MTEX object, Laue(x, ...) calls x.Laue(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
Laue(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.Laue_py.html) | the sibling frame carrying the Laue group, the group with the inversion added |
| [symmetry](symmetry.Laue_py.html) | the smallest Laue group containing this one: every element once proper and once improper |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
