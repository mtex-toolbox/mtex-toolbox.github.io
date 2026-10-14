---
title: 'parentGrainReconstructor.calcParentEBSD'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcParentEBSD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcParentEBSD.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

the reconstructed parent map; MATLAB's parentGrainReconstructor.calcParentEBSD

## Syntax

<div class="mx-form" markdown="1">

```python
parentEBSD = job.calcParentEBSD()
```

The parent orientation of every grain.

</div>

<div class="mx-form" markdown="1">

```python
parentEBSD = job.calcParentEBSD(exactOR=True)
```

The parent each pixel's own orientation gives.

</div>

## Description

A copy of the prior map with the grain ids of the current grains, every child pixel of a
grain that is a parent now given the parent orientation of its grain and the parent phase.
The pixels carry variantId, packetId and fit, the misfit of the pixel to its variant; the
other pixels are NaN there. With exactOR every pixel carries the parent orientation its own
orientation gives through the relationship, the variant nearest the grain's parent, so the
fit is zero.

## Input

| `job` | parentGrainReconstructor |

## Keywords

| keyword | default | description |
|---|---|---|
| `exactOR` | `False` | enforce the exact orientation relationship pixel by pixel |

## Output

| `parentEBSD` | EBSD, with parentEBSD.grainId, variantId, packetId and fit |

## See also

[parentGrainReconstructor.calcVariants](parentGrainReconstructor.calcVariants_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcParentEBSD](parentGrainReconstructor.calcParentEBSD.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L1120">source</a></font>
{% endraw %}
