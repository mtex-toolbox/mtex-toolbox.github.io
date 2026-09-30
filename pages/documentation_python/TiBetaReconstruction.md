---
title: 'Parent Beta Phase Reconstruction in Titanium Alloys'
sidebar: documentation_sidebar
permalink: TiBetaReconstruction_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: TiBetaReconstruction.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/TiBetaReconstruction.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/PhaseTransitions/TiBetaReconstruction.py">edit page</a></font>

<!--introduction-->

This page reconstructs the former beta-grain map of a titanium alloy from a nearly complete
alpha-phase EBSD map. It continues the Burgers-variant example in
[Parent and Child Variants](ParentChildVariants_py.html) and uses the reconstruction ideas
prepared by [Martensite Variants](MartensiteVariants_py.html).

```python
import numpy as np

from mtex import *

ebsd = mtexdata('alphaBetaTitanium', silent=True)

# plot the measured alpha phase with inverse pole figure colours
plot(ebsd['Ti (alpha)'], ebsd['Ti (alpha)'].orientations, figSize='large')
```

<center class="mtex-figure"><img class="inline" src="figures/python/TiBetaReconstruction-1.png"></center>

The map contains 99.8% alpha titanium and 0.2% beta titanium among its indexed
measurements. The goal is to recover the original beta phase.

```python
phaseFraction = 100 * np.array([len(ebsd['Ti (alpha)']), len(ebsd['Ti (beta)'])]) / len(ebsd['indexed'])
phaseFraction
```

```text
array([99.7653,  0.2347])
```

The former beta-grain structure is almost visible by eye. Groups of alpha regions with
related colours form larger blocks, but colour alone does not decide which regions came
from the same beta grain.

## Set the parent-to-child relationship

We use the Burgers OR introduced on the first page. It aligns a beta $$(110)$$ plane with an
alpha $$(0001)$$ plane and a beta $$[1\bar{1}1]$$ direction with an alpha $$[\bar{2}110]$$
direction.

```python
beta2alpha = orientation.Burgers(ebsd['Ti (beta)'].CS, ebsd['Ti (alpha)'].CS)
beta2alpha
```

```text
misorientation (Ti (BETA) → Ti (alpha))
  (110) || (0001)   [1̅11̅] || [21̅1̅0]
```

Every parent grain reconstruction method expects the OR in the parent-to-child direction.
Passing its inverse would make all candidate parent orientations wrong even though their
number still looked plausible.

## Segment the child grains

A grain is a phase-homogeneous, spatially connected region of EBSD pixels produced by
segmentation. A small angular threshold keeps alpha regions from different beta grains
separate at this stage.

```python
grains = calcGrains(ebsd, threshold=1.5 * degree, removeQuadruplePoints=True)
```

The 1.5-degree threshold is deliberately small. If two alpha orientations from different
beta grains were merged now, reconstruction could not separate them later.

## Set up the reconstruction job

A [`parentGrainReconstructor`](parentGrainReconstructor.parentGrainReconstructor.html)
stores the input, the current reconstruction, and the relation between them. Assigning
`p2c` tells it which phase is the parent and which phase is the child.

```python
job = parentGrainReconstructor(ebsd, grains)
job.p2c = beta2alpha
job
```

```text
parentGrainReconstructor

  phase   mineral     symmetry  grains  area   reconstructed
  parent  Ti (BETA)   432       428     0.23%  0%           
  child   Ti (alpha)  622       45804   100%                

 OR: (110) || (0001)   [1̅11̅] || [21̅1̅0]
   p2c fit: 0.82°, 1.2°, 1.6°, 3.1° (quintiles)
   c2c fit: 0.71°, 1°, 1.3°, 1.8° (quintiles)
```

The displayed `job` summary reports the current parent and child grain counts, areas, and
reconstructed fraction. The most useful properties are grouped below.

* `job.grainsPrior` and `job.ebsdPrior` preserve the input grains and EBSD data.
* `job.grains` and `job.ebsd` expose the current grains and reconstructed EBSD data.
* `job.mergeId` maps each input grain `job.grainsPrior[ind]` to the current grain with the
  id `job.mergeId[ind]`.
* `job.numChilds` counts the input grains represented by each current grain.
* `job.parentGrains` and `job.childGrains` select the current parent and child grains.
* `job.isTransformed` marks input child grains assigned a parent orientation.
* `job.isMerged` marks input grains that have been combined into a current grain.
* `job.transformedGrains` selects the input child grains with a computed parent orientation.

The class also provides several reconstruction routes and cleanup operations.

* [`calcVariantGraph`](parentGrainReconstructor.calcVariantGraph.html) constructs a variant
  graph.
* [`clusterVariantGraph`](parentGrainReconstructor.clusterVariantGraph.html) converts graph
  clusters into parent votes.
* [`calcGBVotes`](parentGrainReconstructor.calcGBVotes.html) obtains votes from child-child
  and parent-child grain boundaries.
* [`calcTPVotes`](parentGrainReconstructor.calcTPVotes.html) obtains votes from
  child-child-child triple points.
* [`calcParentFromVote`](parentGrainReconstructor.calcParentFromVote.html) transforms grains
  selected by votes.
* [`calcParentFromGraph`](parentGrainReconstructor.calcParentFromGraph.html) transforms and
  merges graph clusters.
* [`mergeSimilar`](parentGrainReconstructor.mergeSimilar.html) merges neighbouring parent
  grains with similar orientations.
* [`mergeInclusions`](parentGrainReconstructor.mergeInclusions.html) merges small enclosed
  grains into parent hosts.

These operations can be repeated while refining a reconstruction. They are not arbitrary in
order: graph clustering needs a graph, and vote-based transformation needs votes.

## Build the variant graph

A *variant graph* has one node for every combination of child grain and candidate parent
variant. Its edges connect compatible candidate variants of neighbouring grains.

[`calcVariantGraph`](parentGrainReconstructor.calcVariantGraph.html) converts angular fit
into edge probability. Here 1.5 degrees is the misfit at which the default probability
model gives an edge weight of one half.

```python
job.calcVariantGraph(threshold=1.5 * degree)
job
```

```text
parentGrainReconstructor

  phase   mineral     symmetry  grains  area   reconstructed
  parent  Ti (BETA)   432       428     0.23%  0%           
  child   Ti (alpha)  622       45804   100%                

 OR: (110) || (0001)   [1̅11̅] || [21̅1̅0]
   p2c fit: 0.82°, 1.2°, 1.6°, 3.1° (quintiles)
   c2c fit: 0.71°, 1°, 1.3°, 1.8° (quintiles)

 variant graph: 546482 entries
```

## Cluster candidate variants

[`clusterVariantGraph`](parentGrainReconstructor.clusterVariantGraph.html) propagates
compatibility through the graph. Three iterations produce probabilities for the candidate
parents of each child grain.

```python
job.clusterVariantGraph(numIter=3)
job
```

```text
parentGrainReconstructor

  phase   mineral     symmetry  grains  area   reconstructed
  parent  Ti (BETA)   432       428     0.23%  0%           
  child   Ti (alpha)  622       45804   100%                

 OR: (110) || (0001)   [1̅11̅] || [21̅1̅0]
   p2c fit: 0.82°, 1.2°, 1.6°, 3.1° (quintiles)
   c2c fit: 0.71°, 1°, 1.3°, 1.8° (quintiles)

 votes: 45804 × 1
   probabilities: 100%, 99%, 98%, 93% (quintiles)
```

The rows of `job.votes.prob` contain the candidate probabilities. The matching columns of
`job.votes.parentId` contain their parent-variant IDs. The first column is the
highest-ranked candidate for each grain.

## Transform child grains to candidate parents

*Transform* is the first reconstruction step. Each selected child grain is assigned one
candidate parent orientation and changes from the child phase to the parent phase.

[`calcParentFromVote`](parentGrainReconstructor.calcParentFromVote.html) accepts the
highest-probability candidate here.

```python
job.calcParentFromVote()
print(job)

reconstructedFraction = 100 * np.count_nonzero(job.isTransformed) / np.count_nonzero(job.grainsPrior.phaseId == job.childPhaseId)
reconstructedFraction
```

```text
parentGrainReconstructor

  phase   mineral     symmetry  grains  area  reconstructed
  parent  Ti (BETA)   432       44447   99%   96%          
  child   Ti (alpha)  622       1785    1.1%               

 OR: (110) || (0001)   [1̅11̅] || [21̅1̅0]
   p2c fit: 3.1°, 20°, 35°, 42° (quintiles)
   c2c fit: 2.1°, 4.6°, 9.8°, 19° (quintiles)

 votes: 1785 × 1
   probabilities: 0%, 0%, 0%, 0% (quintiles)
96.1030
```

At this stage, 96.10% of the input child grains have parent orientations.

The displayed fraction reaches 99% after the inclusion cleanup below. Neighbouring
candidates have not yet all been merged into their shared beta-grain footprints.

```python
# define a beta-phase IPF colour key
ipfKey = ipfColorKey(ebsd['Ti (Beta)'])
ipfKey.ipfDirection = vector3d.Y

# plot the transformed beta grains
parentColor = ipfKey.orientation2color(job.parentGrains.meanOrientation)
plot(job.parentGrains, parentColor, figSize='large')
```

<center class="mtex-figure"><img class="inline" src="figures/python/TiBetaReconstruction-9.png"></center>

The map now contains many small regions with almost identical colours. Those regions are
compatible parent candidates that still need the merge step.

## Merge similar parent grains

*Merge* is the second reconstruction step. Neighbouring transformed grains with compatible
parent orientations are combined into one grain footprint.

[`mergeSimilar`](parentGrainReconstructor.mergeSimilar.html) uses an angular threshold.
Here neighbours within 5 degrees are treated as one parent grain.

```python
job.mergeSimilar(threshold=5 * degree)
print(job)

parentColor = ipfKey.orientation2color(job.parentGrains.meanOrientation)
plot(job.parentGrains, parentColor, figSize='large')
```

```text
parentGrainReconstructor

  phase   mineral     symmetry  grains  area  reconstructed
  parent  Ti (BETA)   432       122     99%   96%          
  child   Ti (alpha)  622       1742    1.1%               

 OR: (110) || (0001)   [1̅11̅] || [21̅1̅0]
   p2c fit: 3.2°, 19°, 35°, 41° (quintiles)
   c2c fit: 4°, 9.2°, 17°, 22° (quintiles)
```

<center class="mtex-figure"><img class="inline" src="figures/python/TiBetaReconstruction-10.png"></center>

The many similarly coloured fragments have coalesced into a small number of large beta
grains. Their remaining enclosed specks require a separate topological cleanup.

## Merge small inclusions

An inclusion is a grain entirely enclosed by another grain. Some small child grains remain
as inclusions because no parent orientation was assigned to them confidently.

[`mergeInclusions`](parentGrainReconstructor.mergeInclusions.html) merges inclusions of at
most 10 pixels into their surrounding parent grains.

```python
job.mergeInclusions(maxSize=10)
print(job)

parentColor = ipfKey.orientation2color(job.parentGrains.meanOrientation)
plot(job.parentGrains, parentColor, figSize='large')
```

```text
parentGrainReconstructor

  phase   mineral     symmetry  grains  area  reconstructed
  parent  Ti (BETA)   432       41      100%  99%          
  child   Ti (alpha)  622       223     0.2%               

 OR: (110) || (0001)   [1̅11̅] || [21̅1̅0]
   p2c fit: 3.3°, 5.6°, 16°, 31° (quintiles)
   c2c fit: 4.7°, 8.9°, 15°, 20° (quintiles)
```

<center class="mtex-figure"><img class="inline" src="figures/python/TiBetaReconstruction-11.png"></center>

The large parent-grain shapes remain, while the small enclosed fragments no longer interrupt
them. This operation changes topology rather than choosing another orientation variant.

## Reconstruct a parent orientation at every pixel

So far, parent orientations have been stored as grain means.
[`calcParentEBSD`](parentGrainReconstructor.calcParentEBSD.html) transfers the
reconstruction to an EBSD variable and assigns a parent orientation to every transformed
child pixel.

```python
parentEBSD = job.calcParentEBSD()

parentColor = ipfKey.orientation2color(parentEBSD['Ti (Beta)'].orientations)
plot(parentEBSD['Ti (Beta)'], parentColor, figSize='large')
```

<center class="mtex-figure"><img class="inline" src="figures/python/TiBetaReconstruction-12.png"></center>

The pixel map is piecewise consistent with the reconstructed grain map. It can now be
analysed with ordinary EBSD tools while retaining the reconstructed beta phase and parent
grain IDs.

## Check the per-pixel reconstruction fit

`parentEBSD.fit` is a per-pixel property. It is the angular mismatch between the measured
alpha orientation and the child variant predicted from its reconstructed beta-grain
orientation.

```python
fitDegree = parentEBSD['Ti (Beta)'].fit / degree
fitQuantiles = np.nanquantile(fitDegree[~np.isnan(fitDegree)], [0.5, 0.9, 0.99])
print(fitQuantiles)

plot(parentEBSD, parentEBSD.fit / degree, figSize='large')
mtexColorbar()
setColorRange([0, 5])
mtexColorMap('LaboTeX')

hold(True)
plot(job.grains.boundary, lineWidth=2)
hold(False)
```

```text
[1.1865 2.1077 3.6095]
```

<center class="mtex-figure"><img class="inline" src="figures/python/TiBetaReconstruction-13.png"></center>

Low values indicate pixels consistent with the assigned Burgers variant. The median is 1.19
degrees, 90% are below 2.10 degrees, and 99% are below 3.58 degrees.

The black outlines show whether larger mismatches collect at reconstructed parent
boundaries rather than filling a grain interior.

## Compare reconstructed boundaries with the child map

The final plot returns to the measured alpha orientations. White lines show the smoothed
reconstructed beta-grain boundaries.

```python
plot(ebsd['Ti (Alpha)'], ebsd['Ti (Alpha)'].orientations, figSize='large')

hold(True)
parentGrains = smoothBoundary(job.parentGrains, 5)
plot(parentGrains.boundary, lineWidth=3, lineColor='White')
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/TiBetaReconstruction-14.png"></center>

The white boundaries enclose the large alpha-variant groups that were only hinted at by
colour in the first map. The overlay is the final visual check that graph compatibility
recovered the structure visible by eye.

## References

* F. Niessen, T. Nyyssönen, A. A. Gazder, and R. Hielscher,
  [Parent grain reconstruction from partially or fully transformed microstructures in MTEX](https://doi.org/10.1107/S1600576721011560),
  *Journal of Applied Crystallography* 55 (2022), 180-194, defines the generic MTEX
  reconstruction framework and the `parentGrainReconstructor` class.
* R. Hielscher, T. Nyyssönen, F. Niessen, and A. A. Gazder,
  [The variant graph approach to improved parent grain reconstruction](https://doi.org/10.1016/j.mtla.2022.101399),
  *Materialia* 22 (2022), 101399, gives the graph construction and clustering algorithm
  used here.

## Next

Continue with [Parent Austenite Reconstruction](MaParentGrainReconstruction_py.html) for a
steel workflow that first fits the OR and then combines variant-graph reconstruction with
further cleanup strategies.
{% endraw %}
