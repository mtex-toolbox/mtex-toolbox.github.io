---
title: 'merge'
sidebar: function_reference_sidebar
permalink: merge_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
join grains that meet the specified boundary, label or orientation criteria.

## Syntax

<div class="mx-form" markdown="1">

```python
merged = merge(grains, pairs)
```

</div>

## Description

For an MTEX object, merge(x, ...) calls x.merge(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Example

Join one neighbouring pair of reconstructed Forsterite grains and inspect the parent
id mapping. The small sample is downloaded and cached on first use.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import mtexdata, calcGrains, degree, plot, hold

ebsd = mtexdata('small', verbose=False)['Forsterite']
grains = calcGrains(ebsd, angle=10*degree, minPixel=5)
pair = grains.neighbors()[:1]
parent = grains.merge(pair, testRun=True)
merged = grains.merge(pair)
print('Merged grain ids:', pair.tolist())
print('Grain count before and after:', grains.size, merged.size)
print('Preview agrees with parentId:', np.array_equal(parent, grains.parentId))
print('Total pixel count preserved:', int(grains.numPixel.sum()) == int(merged.numPixel.sum()))
plot(grains.boundary, lineColor='lightgray', lineWidth=3)
hold(True)
plot(merged.boundary, lineColor='black', lineWidth=1)
hold(False)
plt.show()
```

The pair is chosen only to demonstrate the operation; an analysis should select boundaries
using a physical criterion. Grey traces show the original network and black the merged outlines.
parentId is stored on the original grains. Update any pixel-to-parent mapping explicitly before
using the merged grains with EBSD measurements; merge does not rewrite ebsd.grainId.

```text
Merged grain ids: [[1, 2]]
Grain count before and after: 15 14
Preview agrees with parentId: True
Total pixel count preserved: True
```

![Example output for grain2d.merge](figures/python_reference/grain2d.merge-01.png)


## Signature

<div class="mx-form" markdown="1">

```python
merge(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.merge_py.html) | the grains joined into one along given boundaries, by pairs of ids, by a label per grain, below a misorientation angle, or every inclusion into the grain around it |

## Used on

[CSLBoundaries](CSLBoundaries_py.html), [GrainMerge](GrainMerge_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
