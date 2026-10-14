---
title: 'symmetry.rotations'
sidebar: function_reference_sidebar
permalink: symmetry.rotations_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

return the proper rotations already contained in the point group.

## Syntax

<div class="mx-form" markdown="1">

```python
rotations = cs.sym.rotations()
```

</div>

## Description

The result is a rotation container. Operations with determinant -1 are omitted;
this method returns no axis or multiplicity arrays. For those use elements.

## See also

[symmetry.elements](symmetry.elements_py.html), [symmetry.properSubGroup](symmetry.properSubGroup_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
symmetry.rotations(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L319">source</a></font>
{% endraw %}
