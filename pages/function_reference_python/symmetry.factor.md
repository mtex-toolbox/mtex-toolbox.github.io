---
title: 'symmetry.factor'
sidebar: function_reference_sidebar
permalink: symmetry.factor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.factor.html
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

factor two groups using their common symmetry operations.

## Syntax

<div class="mx-form" markdown="1">

```python
left, common, right = group1.factor(group2)
```

</div>

## Description

The outputs are orthogonalTransform containers satisfying `group1 = left*common`
and `group2 = common*right` as sets of products. The outer factors contain coset
representatives; common contains the operations shared by both groups.

## See also

[symmetry.disjoint](symmetry.disjoint_py.html), [symmetry.union](symmetry.union_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
symmetry.factor(self, other)
```

</div>

MATLAB's [symmetry.factor](symmetry.factor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L505">source</a></font>
{% endraw %}
