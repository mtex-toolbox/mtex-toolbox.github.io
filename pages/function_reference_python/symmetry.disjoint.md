---
title: 'symmetry.disjoint'
sidebar: function_reference_sidebar
permalink: symmetry.disjoint_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.disjoint.html
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

return the intersection of two point groups in their current coordinate axes.

## Syntax

<div class="mx-form" markdown="1">

```python
common = group1.disjoint(group2)
```

</div>

## Description

Only operations present in both groups are retained. The inputs are not changed.
To generate a group containing both inputs, use union.

## See also

[symmetry.union](symmetry.union_py.html), [symmetry.factor](symmetry.factor_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
symmetry.disjoint(self, other)
```

</div>

MATLAB's [symmetry.disjoint](symmetry.disjoint.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L470">source</a></font>
{% endraw %}
