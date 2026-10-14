---
title: 'symmetry.union'
sidebar: function_reference_sidebar
permalink: symmetry.union_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.union.html
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

generate the smallest point group containing the operations of both inputs.

## Syntax

<div class="mx-form" markdown="1">

```python
combined = group1.union(group2)
```

</div>

## Description

The operation list is closed under multiplication. This is a group union, rather
than a concatenation of two lists; additional products can therefore appear.

## See also

[symmetry.disjoint](symmetry.disjoint_py.html), [symmetry](symmetry_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
symmetry.union(self, other)
```

</div>

MATLAB's [symmetry.union](symmetry.union.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L489">source</a></font>
{% endraw %}
