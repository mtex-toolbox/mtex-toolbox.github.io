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
the variant, packet and Bain group of every child orientation with respect to its parent,
MATLAB's calcVariantId

## Syntax

<div class="mx-form" markdown="1">

```python
variantId, packetId, bainId, fit = calcVariantId(parentOri, childOri, p2c)
```

The {111} packets and {001} Bain groups.

</div>

<div class="mx-form" markdown="1">

```python
hklParent = Miller([[1, 1, 1], [1, -1, 1], [-1, 1, 1], [1, 1, -1]], p2c.CS)
```

</div>

<div class="mx-form" markdown="1">

```python
variantId, packetId, bainId, fit = calcVariantId(parentOri, childOri, p2c, packet=(hklParent, Miller(1, 0, 1, p2c.SS)))
```

Packets by planes of one's own.

</div>

## Description

For every child the variant of its parent it belongs to, one based, with the misfit, and
the packet and Bain group of that variant: the packet by the parent {111} plane the
variant maps onto the child (011), the Bain group by the parent {001} plane mapped onto
the child (100), unless packet=(hklParent, hklChild) or bain=(hklParent, hklChild) name
other families. MATLAB computes the packet and Bain ids only when the planes are given; the
port always does, with these defaults.

## Input

| `parentOri` | orientation of the parent phase, one or one per child |
| `childOri` | orientation of the child phase |
| `p2c` | orientation, the parent to child orientation relationship |

## Keywords

| keyword | default | description |
|---|---|---|
| `packet` | `None` | (hklParent, hklChild), the parent planes (one Miller per packet) and the child plane they map onto |
| `bain` | `None` | (hklParent, hklChild), the parent directions (one Miller per Bain group) and the child direction they map onto |

## Output

| `variantId` | the one based variant ids, in the order of p2c.variants() |
| `packetId` | the one based packet ids |
| `bainId` | the one based Bain group ids |
| `fit` | the misorientation angle between the child and its variant, in radians |

## See also

[orientation.variants](orientation.variants_py.html), [calcParent](calcParent_py.html), [packetPlanes](packetPlanes_py.html), [bainPlanes](bainPlanes_py.html), [MartensiteVariants](MartensiteVariants_py.html)

## Used on

[MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html), [MartensiteVariants](MartensiteVariants_py.html)

MATLAB's [calcVariantId](calcVariantId.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/parent2child.py#L306">source</a></font>
{% endraw %}
