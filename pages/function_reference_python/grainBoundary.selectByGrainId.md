---
title: 'grainBoundary.selectByGrainId'
sidebar: function_reference_sidebar
permalink: grainBoundary.selectByGrainId_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.selectByGrainId.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the segments with a grain of the list on either side, walked again: a junction of the
whole boundary may have lost its third segment, so the chains of the subset are longer;
for pairs of ids the segments between the two of a pair, with the row of its pair

## Syntax

```python
grainBoundary.selectByGrainId(self, ids)
```

```python
gBSub = gB.selectByGrainId([1, 2, 3])         # the boundaries of these grains
gBSub, pairId = gB.selectByGrainId(pairs)      # pairs (n, 2): gBSub.grainId is pairs[pairId] up to the order
```

MATLAB's [grainBoundary.selectByGrainId](grainBoundary.selectByGrainId.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L328">source</a></font>
{% endraw %}
