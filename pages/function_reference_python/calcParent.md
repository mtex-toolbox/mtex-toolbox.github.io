---
title: 'calcParent'
sidebar: function_reference_sidebar
permalink: calcParent_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: calcParent.html
status: Reference
---
{% raw %}
parentOri, fit = calcParent(childOri, p2c)               the parent of the children of one grain
parentOri, fit = calcParent(childOri, parentOri, p2c)       the parent variant of every child
parentOri, fit = calcParent(childPairs, p2c)                the variant pair of every boundary
parentOri, fit = calcParent(childTriples, p2c)              the variant triple of every triple point

## Syntax

```python
calcParent(childOri, *args, numFit=1, id=False, weights=None, threshold=10*degree)
```

The parent of many children of one grain: every child proposes its parent variants, the
proposal the others agree with best is refined as their weighted mean. For a child with a
parent orientation, one or one for all, the candidate of the child nearest it; for pairs and
triples of children the candidates that agree best on a parent, and their disorientation;
numFit gives the best few instead of one. With id=True the one based ids of the parent
variants instead of the orientations, child * PV[id] being the parent. The fit is the
disorientation to the relationship.

## Used on

[LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html)

MATLAB's [calcParent](calcParent.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/parent2child.py#L296">source</a></font>
{% endraw %}
