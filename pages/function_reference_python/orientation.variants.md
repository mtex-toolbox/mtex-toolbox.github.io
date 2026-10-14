---
title: 'orientation.variants'
sidebar: function_reference_sidebar
permalink: orientation.variants_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.variants.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the variants of a parent-to-child relationship, the distinct p2c * r over the parent group
modulo the child group, or the child orientations of parents; numbered as MTEX numbers them

## Syntax

```python
orientation.variants(self, second=None, ids=None, parent=False)
```

```python
p2c.variants()
p2c.variants(oriParent)              oriParent.shape + (numVariants,)
p2c.variants(oriParent, ids)         one per parent, the ids broadcast against them
p2c.variants(parent=True)            the parent variants
```

## Used on

[OrientationRelationshipFit](OrientationRelationshipFit_py.html)

MATLAB's [orientation.variants](orientation.variants.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L422">source</a></font>
{% endraw %}
