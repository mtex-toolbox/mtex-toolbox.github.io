---
title: 'symmetry.properSubGroup'
sidebar: function_reference_sidebar
permalink: symmetry.properSubGroup_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.properSubGroup.html
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

retain the symmetry operations whose determinant is +1.

## Syntax

<div class="mx-form" markdown="1">

```python
subgroup = group.properSubGroup()
```

</div>

## Description

The result is a symmetry object. Improper operations are removed rather than
converted to their rotational parts.

## See also

[symmetry.properGroup](symmetry.properGroup_py.html), [symmetry.rotations](symmetry.rotations_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
symmetry.properSubGroup(self)
```

</div>

MATLAB's [symmetry.properSubGroup](symmetry.properSubGroup.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L454">source</a></font>
{% endraw %}
