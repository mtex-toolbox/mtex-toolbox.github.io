---
title: 'calcVariantId'
sidebar: function_reference_sidebar
permalink: calcVariantId_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: calcVariantId.html
status: Reference
---
{% raw %}
variantId, packetId, bainId, fit = calcVariantId(parentOri, childOri, p2c)

## Syntax

```python
calcVariantId(parentOri, childOri, p2c, packet=None, bain=None)
```

For every child the variant of its parent it belongs to, one based, with the misfit, and
the packet and Bain group of that variant: the packet by the parent {111} plane the
variant maps onto the child (011), the Bain group by the parent {001} plane mapped onto
the child (100), unless packet=(hklParent, hklChild) or bain=(hklParent, hklChild) name
other families.

## Used on

[MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html), [MartensiteVariants](MartensiteVariants_py.html)

MATLAB's [calcVariantId](calcVariantId.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/parent2child.py#L303">source</a></font>
{% endraw %}
