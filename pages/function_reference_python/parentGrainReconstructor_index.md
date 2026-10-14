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
job = parentGrainReconstructor(ebsd, grains, p2c)

The state of a parent grain reconstruction: the map and the grains it starts from
(ebsdPrior, grainsPrior), the orientation relationship p2c, the grains after every step
taken so far (grains) and which of them every prior grain went into (mergeId, the id of
the current grain per prior grain). Without grains the map is segmented at 3 degrees;
without p2c the phases are guessed, the most frequent indexed one the child and the
rarest the parent, and job.p2c is set afterwards. The parent frame is added to the phase
lists of the job's copies when the map carries only the child. With
useBoundaryOrientations a pair of grains votes with the means of their pixels along the
boundary they share rather than with the grain means.

## Members

| | |
|---|---|
| [bainId](parentGrainReconstructor.bainId_py.html) | the reconstructed Bain group id of every prior grain, NaN where none is computed |
| [c2c](parentGrainReconstructor.c2c_py.html) | the child to child misorientations of the relationship, the identity included |
| [calcGBFit](parentGrainReconstructor.calcGBFit_py.html) | fit, pairs = job.calcGBFit(): the misfit of every parent to child and child to child boundary to the relationship, and the ids of the grains on either side |
| [calcGBVotes](parentGrainReconstructor.calcGBVotes_py.html) | job.calcGBVotes(): the votes the grain boundaries cast into job.votes |
| [calcGraph](parentGrainReconstructor.calcGraph_py.html) | job.calcGraph(threshold=2.5*degree, tol=2.5*degree): job.graph, a node per grain and between neighbours the probability that the misfit of their boundary to the relationship still means one parent |
| [calcParent2Child](parentGrainReconstructor.calcParent2Child_py.html) | job.calcParent2Child(): the relationship refined on the boundaries of the map |
| [calcParentEBSD](parentGrainReconstructor.calcParentEBSD_py.html) | parentEBSD = job.calcParentEBSD(): the map with the grain ids of the current grains and every child pixel of a grain that is a parent now given the parent orientation of its grain, its variant and packet id, and fit, its misfit to the variant |
| [calcParentFromGraph](parentGrainReconstructor.calcParentFromGraph_py.html) | job.calcParentFromGraph(): every component of job.graph of more than one grain gives its child grains the parent orientation that fits them together, or fits the parent grains among them |
| [calcParentFromVote](parentGrainReconstructor.calcParentFromVote_py.html) | job.calcParentFromVote(minProb=0.5): every grain whose leading vote is strong enough takes the parent orientation of that variant and the parent phase: for probabilities above minProb and ahead of the second by minDelta, for fits below minFit and behind the second by minDelta, for counts at least minCount with the second below maxCount |
| [calcTPVotes](parentGrainReconstructor.calcTPVotes_py.html) | job.calcTPVotes(minFit=2.5*degree, maxFit=5*degree): the votes the triple points of three child grains cast, each corner for the variant of the parent that fits all three |
| [calcVariantGraph](parentGrainReconstructor.calcVariantGraph_py.html) | job.calcVariantGraph(threshold=3.5*degree, tol=1.5*degree): job.graph, the variant graph: a node per child grain and parent variant and one per parent grain, and an edge where two neighbours agree - child to child over every pair of variants, parent to child over the variants that fit the parent, parent to parent over their orientations - with the probability of the agreement |
| [calcVariants](parentGrainReconstructor.calcVariants_py.html) | job.calcVariants(): the variant, packet and Bain id of every transformed prior grain against the parent it went into, as job.variantId, job.packetId, job.bainId |
| [childGrains](parentGrainReconstructor.childGrains_py.html) | the remaining child grains at the current stage of the reconstruction |
| [childPhaseId](parentGrainReconstructor.childPhaseId_py.html) | the phase id of the child phase |
| [clusterGraph](parentGrainReconstructor.clusterGraph_py.html) | job.clusterGraph(inflationPower=1.6): job.graph clustered by MCL, so that its components are the parent grains |
| [clusterVariantGraph](parentGrainReconstructor.clusterVariantGraph_py.html) | job.clusterVariantGraph(includeSimilar=True): the variant graph (calcVariantGraph first when there is none) clustered by MCL - expansion, inflation by inflationPower, pruning below cutOff, the rows of every grain normalised together - over numIter steps |
| [csChild](parentGrainReconstructor.csChild_py.html) | the frame of the child phase, that of the orientation relationship once it is set |
| [csParent](parentGrainReconstructor.csParent_py.html) | the frame of the parent phase, that of the orientation relationship once it is set |
| [ebsd](parentGrainReconstructor.ebsd_py.html) | the map at the current stage of the reconstruction, calcParentEBSD |
| [hasGraph](parentGrainReconstructor.hasGraph_py.html) | whether the graph is a grain graph, one node per grain |
| [hasVariantGraph](parentGrainReconstructor.hasVariantGraph_py.html) | whether the graph is a variant graph, one node per grain and parent variant |
| [isChild](parentGrainReconstructor.isChild_py.html) | which grains of the current stage are child grains |
| [isMerged](parentGrainReconstructor.isMerged_py.html) | which prior grains have been merged with others into a parent grain |
| [isParent](parentGrainReconstructor.isParent_py.html) | which grains of the current stage are parent grains |
| [isTransformed](parentGrainReconstructor.isTransformed_py.html) | which prior child grains have been reconstructed into a parent grain |
| [mergeByGraph](parentGrainReconstructor.mergeByGraph_py.html) | job.mergeByGraph(threshold=5*degree): every component of job.graph whose grains fit a common parent within the threshold becomes one parent grain of that orientation |
| [mergeInclusions](parentGrainReconstructor.mergeInclusions_py.html) | job.mergeInclusions(maxSize=50): the child and parent grains lying inside a parent grain, below maxSize pixels, become part of it, with its orientation |
| [mergeSimilar](parentGrainReconstructor.mergeSimilar_py.html) | job.mergeSimilar(threshold=7.5*degree): neighbouring grains of one phase whose mean orientations are within the threshold become one |
| [numChildren](parentGrainReconstructor.numChildren_py.html) | the number of prior child grains merged into each grain of the current stage (MATLAB's parentGrainReconstructor.numChilds) |
| [p2c](parentGrainReconstructor.p2c_py.html) | the parent to child orientation relationship, refined along the reconstruction |
| [packetId](parentGrainReconstructor.packetId_py.html) | the reconstructed packet id of every prior grain, NaN where none is computed |
| [parent2ChildInfo](parentGrainReconstructor.parent2ChildInfo_py.html) | OR = job.parent2ChildInfo(): the relationship with its closest rational parallel planes and directions, their deviations, its axis in both crystals and the angles and axes of the variants, printed and returned |
| [parentEBSD](parentGrainReconstructor.parentEBSD_py.html) | the parent phase of the map at the current stage of the reconstruction |
| [parentGrainReconstructor](parentGrainReconstructor.parentGrainReconstructor_py.html) | job = parentGrainReconstructor(ebsd, grains, p2c) |
| [parentGrains](parentGrainReconstructor.parentGrains_py.html) | the parent grains at the current stage of the reconstruction |
| [parentId](parentGrainReconstructor.parentId_py.html) | the parent variant every transformed prior grain was reconstructed with |
| [parentPhaseId](parentGrainReconstructor.parentPhaseId_py.html) | the phase id of the parent phase |
| [plotGraph](parentGrainReconstructor.plotGraph_py.html) | job.plotGraph(lineWidth=2): the boundaries of the grain graph, the more transparent the more likely its two grains share a parent |
| [revert](parentGrainReconstructor.revert_py.html) | job.revert(), job.revert(ind): the grains named (a mask or positions into job.grains, or grains) given back the phase and the orientation of their prior grains |
| [transformedGrains](parentGrainReconstructor.transformedGrains_py.html) | the prior child grains that have been reconstructed |
| [variantId](parentGrainReconstructor.variantId_py.html) | the reconstructed variant id of every prior grain, NaN where none is computed |
| [variantMap](parentGrainReconstructor.variantMap_py.html) | the order the variants are numbered in, kept across a refit of the relationship |

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [OrientationRelationshipFit](OrientationRelationshipFit_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor_index](parentGrainReconstructor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L245">source</a></font>
{% endraw %}
