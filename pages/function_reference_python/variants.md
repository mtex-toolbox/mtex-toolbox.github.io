---
title: 'variants'
sidebar: function_reference_sidebar
permalink: variants_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the variants of a parent to child orientation relationship, and the child or parent
orientations they give

## Syntax

<div class="mx-form" markdown="1">

```python
p2cVariants = variants(p2c)
```

The child variants.

</div>

<div class="mx-form" markdown="1">

```python
p2pVariants = variants(p2c, parent=True)
```

The parent variants.

</div>

<div class="mx-form" markdown="1">

```python
oriChild = variants(p2c, oriParent)
```

Every child variant of every parent.

</div>

<div class="mx-form" markdown="1">

```python
oriChild = variants(p2c, oriParent, variantId)
```

One per parent, chosen by its id.

</div>

<div class="mx-form" markdown="1">

```python
oriParent = variants(p2c, oriChild)
```

Every parent of every child.

</div>

<div class="mx-form" markdown="1">

```python
oriParent = variants(p2c, oriChild, variantId)
```

One per child, chosen by its id.

</div>

<div class="mx-form" markdown="1">

```python
odfChild = variants(p2c, odfParent)
```

The child texture.

</div>

## Description

The child variants are the distinct p2c * r over the rotations r of the parent group modulo
the child group, the parent variants the distinct r * p2c over the child group modulo the
parent group. They are numbered as MTEX numbers them, Morito's numbering for
Kurdjumov-Sachs, which is what a variant id means; the ids count from 1. The child
orientations of a parent orientation are those of its representative in the fundamental
region times the inverse child variants, along a new last axis; an orientation in the child
frame gives its parent orientations instead, in the parent frame.

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
| `oriParent` | orientation, oriChild.shape + (numVariants,), or oriChild.shape with ids |
| `odfChild` | SO3Fun, the child texture |

## See also

[orientation.variants](orientation.variants_py.html), [orientation.parents](orientation.parents_py.html), [calcParent2Child](calcParent2Child_py.html), [ParentChildVariants](ParentChildVariants_py.html), [MartensiteVariants](MartensiteVariants_py.html)

## Used on

[MisorientationTheory](MisorientationTheory_py.html), [LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html), [MartensiteVariants](MartensiteVariants_py.html), [ParentChildVariants](ParentChildVariants_py.html), [PhaseTransitions](PhaseTransitions_py.html), [TransformationTexture](TransformationTexture_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/standardorientations.py#L148">source</a></font>
{% endraw %}
