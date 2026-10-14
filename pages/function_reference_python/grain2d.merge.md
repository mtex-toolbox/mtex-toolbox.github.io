---
title: 'grain2d.merge'
sidebar: function_reference_sidebar
permalink: grain2d.merge_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.merge.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

join grains into one: by pairs of ids, by the segments of a boundary, by a graph of
grains indexed by id, by a label per grain, or by a misorientation threshold across the
shared boundaries; inclusions=True (or a mask) joins every inclusion below maxSize
pixels to the grain around it, host a mask of the grains that may take one. The merge
is a relabelling and nothing else: the boundary between two grains that became one
moves to the inner boundary, the loops are traced again, the mean is the pixel-weighted
mean of the parts. A phase boundary is merged only by an inclusion, and the merged
grain is then the host's phase and orientation. The id of the parent of every grain is
written into grains.parentId, the merged grains carry the ids of their parts as
childId; testRun returns the parent ids alone

## Syntax

```python
grain2d.merge(self, pairs=None, threshold=None, inclusions=None, host=None, maxSize=inf, testRun=False)
```

## Used on

[LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html)

MATLAB's [grain2d.merge](grain2d.merge.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/grains.py#L388">source</a></font>
{% endraw %}
