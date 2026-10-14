---
title: 'parentGrainReconstructor.calcVariants'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcVariants_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcVariants.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

job.calcVariants(): the variant, packet and Bain id of every transformed prior grain
against the parent it went into, as job.variantId, job.packetId, job.bainId; the parent
grains take the representative of the last of their children

## Syntax

```python
parentGrainReconstructor.calcVariants(self, **options)
```

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcVariants](parentGrainReconstructor.calcVariants.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L1085">source</a></font>
{% endraw %}
