---
title: 'orientation.parents'
sidebar: function_reference_sidebar
permalink: orientation.parents_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.parents.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

return the distinct parent variants of a parent-to-child relationship.

## Syntax

<div class="mx-form" markdown="1">

```python
relationships = p2c.parents()
```

</div>

## Description

Child symmetry operations generate the distinct relationship variants, with duplicates
removed under the parent symmetry. This is p2c.variants(parent=True); the result still
maps parent coordinates to child coordinates. Use variants with a child orientation
to calculate its possible parent orientations.

## See also

[orientation.variants](orientation.variants_py.html), [variants](variants_py.html), [ParentChildVariants](ParentChildVariants_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
orientation.parents(self)
```

</div>

## Used on

[ParentChildVariants](ParentChildVariants_py.html)

MATLAB's [orientation.parents](orientation.parents.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L937">source</a></font>
{% endraw %}
