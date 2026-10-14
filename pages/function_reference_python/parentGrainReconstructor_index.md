---
title: 'The class parentGrainReconstructor'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor_index.html
status: Reference
---
{% raw %}
the state of a parent grain reconstruction: the map and the grains it starts from, the
orientation relationship and the grains after every step taken; MATLAB's
parentGrainReconstructor

## Syntax

<div class="mx-form" markdown="1">

```python
job = parentGrainReconstructor(ebsd, grains)
```

The parent and child phases guessed.

</div>

<div class="mx-form" markdown="1">

```python
job = parentGrainReconstructor(ebsd, grains, orientation.KurdjumovSachs(csParent, csChild))
```

With an initial orientation relationship.

</div>

<div class="mx-form" markdown="1">

```python
job = parentGrainReconstructor(ebsd, grains, p2c, useBoundaryOrientations=True)
```

Votes from the orientations along the boundaries.

</div>

<div class="mx-form" markdown="1">

```python
job = parentGrainReconstructor(ebsd)
```

The grains segmented at 3 degree.

</div>

## Description

The job keeps the map and the grains as given, ebsdPrior and grainsPrior, the grains at
the current stage, grains, with parentGrains and childGrains, and for every prior grain the
id of the current grain it went into, mergeId. The steps of a reconstruction are its
methods: calcParent2Child refines the orientation relationship p2c, calcGBVotes,
calcTPVotes or calcGraph with clusterVariantGraph collect votes, calcParentFromVote and
calcParentFromGraph turn child grains into parent grains, mergeSimilar and
mergeInclusions merge them, and calcParentEBSD gives the reconstructed map, with
variantId and packetId.

The phases are guessed from the map: the most frequent indexed phase is the child and
the rarest the parent, which job.csParent and job.csChild correct, or setting job.p2c,
whose frames then name both. The parent frame is added to the phase lists of the job's
copies when the map carries only the child. The map must carry the grain ids of grains,
which calcGrains writes into it.

## Input

| `ebsd` | EBSD, the map of the measured, mostly child, phase, with the grain ids of grains |
| `grains` | grain2d, the child grains of the map; when not given the map is segmented at 3 degree, on a copy |
| `p2c` | orientation, the initial guess of the parent to child orientation relationship (MATLAB's p2c0) |

## Keywords

| keyword | default | description |
|---|---|---|
| `useBoundaryOrientations` |  | a pair of grains votes with the mean orientations of their pixels along the boundary they share rather than with the grain means |
| `reportFit` |  | show the quantiles of the misfit of the boundaries to p2c when the job is displayed |

## Output

| `job` | parentGrainReconstructor |

## References

- R. Hielscher, T. Nyyssönen, F. Niessen, A. A. Gazder, The variant graph approach to improved parent grain reconstruction, Materialia 22 (2022) 101399
- F. Niessen, T. Nyyssönen, A. A. Gazder, R. Hielscher, Parent grain reconstruction from partially or fully transformed microstructures in MTEX, J. Appl. Cryst. 55 (2022) 180-194

## See also

[parentGrainReconstructor.calcParent2Child](parentGrainReconstructor.calcParent2Child_py.html), [parentGrainReconstructor.calcGBVotes](parentGrainReconstructor.calcGBVotes_py.html), [parentGrainReconstructor.calcParentFromVote](parentGrainReconstructor.calcParentFromVote_py.html), [calcParent2Child](calcParent2Child_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html)

## Members

| [bainId](parentGrainReconstructor.bainId_py.html) | the reconstructed Bain group id of every prior grain, NaN where none is computed |
| [c2c](parentGrainReconstructor.c2c_py.html) | the child to child misorientations of the relationship, the identity included |
| [calcGBFit](parentGrainReconstructor.calcGBFit_py.html) | the misfit of the boundaries between neighbouring grains to the orientation relationship job.p2c, and the ids of the grains on either side |
| [calcGBVotes](parentGrainReconstructor.calcGBVotes_py.html) | the votes the grain boundaries cast for the parent orientation of their child grains, written into job.votes |
| [calcGraph](parentGrainReconstructor.calcGraph_py.html) | the graph of the grains for a parent grain reconstruction, job.graph |
| [calcParent2Child](parentGrainReconstructor.calcParent2Child_py.html) | the parent to child orientation relationship job.p2c refined on the boundaries of the map |
| [calcParentEBSD](parentGrainReconstructor.calcParentEBSD_py.html) | the reconstructed parent map |
| [calcParentFromGraph](parentGrainReconstructor.calcParentFromGraph_py.html) | job.calcParentFromGraph(): every component of job.graph of more than one grain gives its child grains the parent orientation that fits them together, or fits the parent grains among them |
| [calcParentFromVote](parentGrainReconstructor.calcParentFromVote_py.html) | the child grains whose vote is clear turned into parent grains, the parent orientation of the variant they voted for |
| [calcTPVotes](parentGrainReconstructor.calcTPVotes_py.html) | the votes the triple points of three child grains cast for their parent orientation, written into job.votes |
| [calcVariantGraph](parentGrainReconstructor.calcVariantGraph_py.html) | the variant graph of a parent grain reconstruction, job.graph |
| [calcVariants](parentGrainReconstructor.calcVariants_py.html) | job.calcVariants(): the variant, packet and Bain id of every transformed prior grain against the parent it went into, as job.variantId, job.packetId, job.bainId |
| [childGrains](parentGrainReconstructor.childGrains_py.html) | the remaining child grains at the current stage of the reconstruction |
| [childPhaseId](parentGrainReconstructor.childPhaseId_py.html) | the phase id of the child phase |
| [clusterGraph](parentGrainReconstructor.clusterGraph_py.html) | the graph of a parent grain reconstruction broken into clusters, one per parent grain |
| [clusterVariantGraph](parentGrainReconstructor.clusterVariantGraph_py.html) | the variant graph clustered by the MCL algorithm generalised to the variants of a grain, the votes for the parent orientations |
| [csChild](parentGrainReconstructor.csChild_py.html) | the frame of the child phase, that of the orientation relationship once it is set |
| [csParent](parentGrainReconstructor.csParent_py.html) | the frame of the parent phase, that of the orientation relationship once it is set |
| [ebsd](parentGrainReconstructor.ebsd_py.html) | the map at the current stage of the reconstruction, calcParentEBSD |
| [hasGraph](parentGrainReconstructor.hasGraph_py.html) | whether the graph is a grain graph, one node per grain |
| [hasVariantGraph](parentGrainReconstructor.hasVariantGraph_py.html) | whether the graph is a variant graph, one node per grain and parent variant |
| [isChild](parentGrainReconstructor.isChild_py.html) | which grains of the current stage are child grains |
| [isMerged](parentGrainReconstructor.isMerged_py.html) | which prior grains have been merged with others into a parent grain |
| [isParent](parentGrainReconstructor.isParent_py.html) | which grains of the current stage are parent grains |
| [isTransformed](parentGrainReconstructor.isTransformed_py.html) | which prior child grains have been reconstructed into a parent grain |
| [mergeByGraph](parentGrainReconstructor.mergeByGraph_py.html) | the grains of every cluster of the graph merged into a parent grain |
| [mergeInclusions](parentGrainReconstructor.mergeInclusions_py.html) | the inclusions merged into the parent grains around them |
| [mergeSimilar](parentGrainReconstructor.mergeSimilar_py.html) | neighbouring grains of similar orientation merged |
| [numChildren](parentGrainReconstructor.numChildren_py.html) | the number of prior child grains merged into each grain of the current stage (MATLAB's parentGrainReconstructor.numChilds) |
| [p2c](parentGrainReconstructor.p2c_py.html) | the parent to child orientation relationship, refined along the reconstruction |
| [packetId](parentGrainReconstructor.packetId_py.html) | the reconstructed packet id of every prior grain, NaN where none is computed |
| [parent2ChildInfo](parentGrainReconstructor.parent2ChildInfo_py.html) | OR = job.parent2ChildInfo(): the relationship with its closest rational parallel planes and directions, their deviations, its axis in both crystals and the angles and axes of the variants, printed and returned |
| [parentEBSD](parentGrainReconstructor.parentEBSD_py.html) | the parent phase of the map at the current stage of the reconstruction |
| [parentGrainReconstructor](parentGrainReconstructor.parentGrainReconstructor_py.html) | the state of a parent grain reconstruction: the map and the grains it starts from, the orientation relationship and the grains after every step taken |
| [parentGrains](parentGrainReconstructor.parentGrains_py.html) | the parent grains at the current stage of the reconstruction |
| [parentId](parentGrainReconstructor.parentId_py.html) | the parent variant every transformed prior grain was reconstructed with |
| [parentPhaseId](parentGrainReconstructor.parentPhaseId_py.html) | the phase id of the parent phase |
| [plotGraph](parentGrainReconstructor.plotGraph_py.html) | job.plotGraph(lineWidth=2): the boundaries of the grain graph, the more transparent the more likely its two grains share a parent |
| [revert](parentGrainReconstructor.revert_py.html) | the reconstruction undone, for all grains or those named |
| [transformedGrains](parentGrainReconstructor.transformedGrains_py.html) | the prior child grains that have been reconstructed |
| [variantId](parentGrainReconstructor.variantId_py.html) | the reconstructed variant id of every prior grain, NaN where none is computed |
| [variantMap](parentGrainReconstructor.variantMap_py.html) | the order the variants are numbered in, kept across a refit of the relationship |

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [OrientationRelationshipFit](OrientationRelationshipFit_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor_index](parentGrainReconstructor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L281">source</a></font>
{% endraw %}
