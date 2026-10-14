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

the variants of a parent to child orientation relationship, and the child or parent
orientations they give

## Syntax

<div class="mx-form" markdown="1">

```python
p2cVariants = p2c.variants()
```

The child variants.

</div>

<div class="mx-form" markdown="1">

```python
p2pVariants = p2c.variants(parent=True)
```

The parent variants.

</div>

<div class="mx-form" markdown="1">

```python
oriChild = p2c.variants(oriParent)
```

Every child variant of every parent.

</div>

<div class="mx-form" markdown="1">

```python
oriChild = p2c.variants(oriParent, variantId)
```

One per parent, chosen by its id.

</div>

<div class="mx-form" markdown="1">

```python
oriParent = p2c.variants(oriChild)
```

Every parent of every child.

</div>

<div class="mx-form" markdown="1">

```python
oriParent = p2c.variants(oriChild, variantId)
```

One per child, chosen by its id.

</div>

<div class="mx-form" markdown="1">

```python
odfChild = p2c.variants(odfParent)
```

The child texture.

</div>

## Description

The child variants are the distinct p2c * r over the rotations r of the parent group modulo
the child group, the parent variants the distinct r * p2c over the child group modulo the
parent group. They are numbered as MTEX numbers them, which is what a variant id means; the
ids count from 1. The child orientations of a parent orientation are those of its
representative in the fundamental region times the inverse child variants, along a new
last axis; an orientation in the child frame gives its parent orientations instead, in the
parent frame.

## Input

| `p2c` | orientation, the parent to child misorientation, from the parent frame to the child frame |
| `second` | orientation, the parent orientations, or the child orientations; SO3Fun, a parent texture; or 'parent', 'child' |
| `ids` | the variant ids, one per orientation, broadcast against them; for a texture an SO3Fun of the parent orientations weighting the parents |

## Keywords

| keyword | default | description |
|---|---|---|
| `parent` | `False` | the parent variants instead of the child variants |

## Output

| `p2cVariants` | orientation, the variants, a list |
| `oriChild` | orientation, oriParent.shape + (numVariants,), or oriParent.shape with ids |
| `oriParent` | orientation, oriChild.shape + (numVariants,) |
| `odfChild` | SO3Fun, the child texture |

## See also

[variants](variants_py.html), [orientation.parents](orientation.parents_py.html), [calcParent2Child](calcParent2Child_py.html), [ParentChildVariants](ParentChildVariants_py.html), [MartensiteVariants](MartensiteVariants_py.html)

## Used on

[OrientationRelationshipFit](OrientationRelationshipFit_py.html)

MATLAB's [orientation.variants](orientation.variants.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L801">source</a></font>
{% endraw %}
