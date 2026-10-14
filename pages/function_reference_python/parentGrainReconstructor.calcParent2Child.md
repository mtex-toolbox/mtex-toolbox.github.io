---
title: 'parentGrainReconstructor.calcParent2Child'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcParent2Child_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcParent2Child.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

job.calcParent2Child(): the relationship refined on the boundaries of the map.

## Syntax

```python
parentGrainReconstructor.calcParent2Child(self, p2c0=None, p2c=False, c2c=False, threshold=None, quantile=None, useP2C=True, **fitOptions)
```

Where the parent phase covers more than one percent of the map, the misorientations of
the parent to child boundaries within threshold (5 degrees) and the quantile (0.5) of
the current guess are averaged, three times; where the guess is more than 5 degrees
from the identity, the child to child misorientations above 5 degrees are fitted by
calcParent2Child of the geometry, and both are combined weighted by their counts.
p2c or c2c takes one kind alone; the variants keep their numbers through job.variantMap.

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcParent2Child](parentGrainReconstructor.calcParent2Child.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L582">source</a></font>
{% endraw %}
