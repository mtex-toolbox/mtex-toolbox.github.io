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

the grains joined into one along given boundaries, by pairs of ids, by a label per grain,
below a misorientation angle, or every inclusion into the grain around it; MATLAB's merge

## Syntax

<div class="mx-form" markdown="1">

```python
merged = grains.merge(grains.boundary['Forsterite', 'Forsterite'])
```

Every pair of grains sharing a segment of the boundary.

</div>

<div class="mx-form" markdown="1">

```python
merged = grains.merge(np.array([[1, 2], [5, 9]]))
```

The pairs of these grain ids.

</div>

<div class="mx-form" markdown="1">

```python
merged = grains.merge(grains.neighbors(matrix=True))
```

The pairs a sparse matrix over the ids marks.

</div>

<div class="mx-form" markdown="1">

```python
merged = grains.merge(threshold=5*degree)
```

Neighbours of a misorientation below 5 degree.

</div>

<div class="mx-form" markdown="1">

```python
merged = grains.merge(inclusions=True, maxSize=5)
```

Every inclusion of fewer than 5 pixels into its host.

</div>

<div class="mx-form" markdown="1">

```python
merged = grains.merge(inclusions=True, host=grains.numPixel > 100)
```

Inclusions only into large grains.

</div>

<div class="mx-form" markdown="1">

```python
parentId = grains.merge(threshold=5*degree, testRun=True)
```

The parent ids, nothing merged.

</div>

## Description

Two grains go into one when a criterion joins them, directly or through a chain of other
grains. Every criterion given applies at once: pairs or labels, a threshold and inclusions
together join what any of them joins.

Grains of two phases are merged only by an inclusion, which then takes the phase and the
orientation of its host. A pair of two phases is passed over, and a label spanning phases
joins the grains of each phase apart, where MATLAB joins them and gives the merged grain
the largest phase id.

The pixel counts of the parts add up, the mean orientation is their mean weighted by the
pixels (MATLAB's calcMeanOrientation, always done here) and GOS their weighted mean. The
boundary between the parts becomes inner boundary. The merged grains carry the ids of their
parts as childId, and the grains passed get parentId, the id of the merged grain each went
into, which MATLAB returns as a second output. MATLAB's merge at a triple point list,
grains.merge(tP), is not provided.

## Input

| `grains` | grain2d |
| `pairs` | what is merged: a grainBoundary, whose segments join the grains on both sides; an (n, 2) array of grain ids; a square matrix or sparse matrix M over the ids, M[i, j] nonzero joining the grains of ids i + 1 and j + 1; or a label per grain, the grains of one label joined |

## Keywords

| keyword | default | description |
|---|---|---|
| `threshold` | `None` | join the neighbours whose mean orientations differ by less than this angle |
| `inclusions` | `None` | True to join every inclusion, a grain surrounded by one other grain, to that host; a mask over the grains to join only the inclusions it marks |
| `host` | `None` | mask over the grains of those that may take an inclusion |
| `maxSize` | `inf` | the inclusions joined are those of fewer pixels |
| `testRun` | `False` | return the parent id of every grain instead of the merged grains, the grains passed left unchanged |

## Output

| `merged` | grain2d, the merged grains, numbered from 1 |
| `parentId` | array, with testRun: the id in the merged list of every grain |

## See also

[grain2d.isInclusion](grain2d.isInclusion_py.html), [grain2d.neighbors](grain2d.neighbors_py.html), [calcGrains](EBSD.calcGrains_py.html), [GrainMerge](GrainMerge_py.html), [parentGrainReconstructor](parentGrainReconstructor_index_py.html)

## Used on

[LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html)

MATLAB's [grain2d.merge](grain2d.merge.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/grains.py#L511">source</a></font>
{% endraw %}
