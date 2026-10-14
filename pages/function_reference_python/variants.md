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
the child variants of a parent-to-child relationship: the distinct p2c * r over the parent
group modulo the child group; the parent variants with the sides swapped; the child
orientations of parents, all of them or one chosen per parent by its id; the parent
orientations of children, whose frame is the child's. The variants are numbered as MTEX
numbers them, which is what a variant id means

## Syntax

```python
variants(p2c, second=None, ids=None, parent=False)
```

```python
p2cVariants = variants(p2c)                      # the child variants
p2pVariants = variants(p2c, parent=True)         # the parent variants
oriChild = variants(p2c, oriParent)              # every child variant of every parent, oriParent.shape + (numVariants,)
oriChild = variants(p2c, oriParent, variantId)   # one per parent, chosen by its id, broadcast
oriParent = variants(p2c, oriChild)              # the parents of children, oriChild.shape + (numVariants,)
odfChild = variants(p2c, odfParent)              # the child texture
```

## Used on

[MisorientationTheory](MisorientationTheory_py.html), [LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html), [MartensiteVariants](MartensiteVariants_py.html), [ParentChildVariants](ParentChildVariants_py.html), [PhaseTransitions](PhaseTransitions_py.html), [TransformationTexture](TransformationTexture_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/standardorientations.py#L148">source</a></font>
{% endraw %}
