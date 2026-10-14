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

<div class="mx-form" markdown="1">

```python
gBSub = gB.selectByGrainId([1, 2, 3])
```

The boundaries of these grains.

</div>

<div class="mx-form" markdown="1">

```python
gBSub, pairId = gB.selectByGrainId(pairs)
```

Pairs (n, 2): gBSub.grainId is pairs[pairId] up to the order.

</div>

## Signature

<div class="mx-form" markdown="1">

```python
grainBoundary.selectByGrainId(self, ids)
```

</div>

MATLAB's [grainBoundary.selectByGrainId](grainBoundary.selectByGrainId.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L419">source</a></font>
{% endraw %}
