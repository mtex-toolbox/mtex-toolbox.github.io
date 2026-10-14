---
title: 'factor'
sidebar: function_reference_sidebar
permalink: factor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
factor two point groups relative to their common symmetry elements.

## Syntax

<div class="mx-form" markdown="1">

```python
left, common, right = factor(cs1, cs2)
```

</div>

## Description

For an MTEX object, factor(x, ...) calls x.factor(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
factor(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.factor_py.html) | the factorisation of the two groups: self = rot1 * d and other = d * rot2 with d the common elements |
| [symmetry](symmetry.factor_py.html) | factor two groups using their common symmetry operations |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
