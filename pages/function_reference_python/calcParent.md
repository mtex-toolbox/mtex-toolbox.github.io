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
the parent orientations of child orientations under a parent to child orientation
relationship, with their fit

## Syntax

<div class="mx-form" markdown="1">

```python
parentOri, fit = calcParent(childOri, p2c)
```

The parent of the children of one grain.

</div>

<div class="mx-form" markdown="1">

```python
parentOri, fit = calcParent(childOri, p2c, weights=w)
```

The children weighted.

</div>

<div class="mx-form" markdown="1">

```python
parentOri, fit = calcParent(childOri, parentOri, p2c)
```

The parent variant of every child.

</div>

<div class="mx-form" markdown="1">

```python
parentId, fit = calcParent(childOri, parentOri, p2c, id=True)
```

Its id instead.

</div>

<div class="mx-form" markdown="1">

```python
parentId, fit = calcParent(childOri, parentOri, p2c, numFit=2, id=True)
```

The two best.

</div>

<div class="mx-form" markdown="1">

```python
parentOri, fit = calcParent(childPairs, p2c)
```

The variant pair of every boundary.

</div>

<div class="mx-form" markdown="1">

```python
parentOri, fit = calcParent(childTriples, p2c)
```

The variant triple of every triple point.

</div>

## Description

The form of the input decides what is reconstructed:

- many children of one grain: every child proposes its parent variants, and the proposal
the others agree with best is refined as their weighted mean.
- children with a parent orientation, one or one per child: every child takes the parent
variant nearest that parent.
- pairs or triples of children, an (n, 2) or (n, 3) array as a boundary or a triple point
gives them: the parent variants that agree best on one parent, the fit their disorientation.

numFit returns the best few fits instead of one, along a last axis. With id=True the one
based ids of the parent variants come back, childOri * p2c.variants(parent=True)[id - 1]
being the parent.

## Input

| `childOri` | orientation of the child phase; (n, 2) pairs or (n, 3) triples of them |
| `parentOri` | orientation of the parent phase, one or one per child |
| `p2c` | orientation, the parent to child orientation relationship, or its inverse |

## Keywords

| keyword | default | description |
|---|---|---|
| `numFit` | `1` | the number of best fits to return |
| `id` | `False` | return the parent variant ids instead of the orientations |
| `weights` | `None` | the weights of the children of one grain in the mean |
| `threshold` | `10*degree` | the largest disagreement of the first pair of a triple that is considered |

## Output

| `parentOri` | orientation of the parent phase |
| `parentId` | the one based parent variant ids |
| `fit` | the disorientation angle to the relationship, in radians |

## See also

[calcParent2Child](calcParent2Child_py.html), [orientation.variants](orientation.variants_py.html), [parentGrainReconstructor](parentGrainReconstructor_index_py.html), [calcVariantId](calcVariantId_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

## Used on

[LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html)

MATLAB's [calcParent](calcParent.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/parent2child.py#L353">source</a></font>
{% endraw %}
