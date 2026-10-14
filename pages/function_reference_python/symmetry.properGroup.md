---
title: 'symmetry.properGroup'
sidebar: function_reference_sidebar
permalink: symmetry.properGroup_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.properGroup.html
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

form a proper group from the rotational parts of all symmetry operations.

## Syntax

<div class="mx-form" markdown="1">

```python
rotations = group.properGroup()
```

</div>

## Description

Parity is discarded and duplicate rotations are removed. The result is a symmetry
object. This is the proper rotation group of the associated Laue class, which can
be larger than the proper subgroup of the original group.

## See also

[symmetry.properSubGroup](symmetry.properSubGroup_py.html), [symmetry.Laue](symmetry.Laue_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
symmetry.properGroup(self)
```

</div>

MATLAB's [symmetry.properGroup](symmetry.properGroup.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L437">source</a></font>
{% endraw %}
