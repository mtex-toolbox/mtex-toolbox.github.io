---
title: 'parentGrainReconstructor.parentGrainReconstructor'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.parentGrainReconstructor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.parentGrainReconstructor.html
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
| `useBoundaryOrientations` | `False` | a pair of grains votes with the mean orientations of their pixels along the boundary they share rather than with the grain means |
| `reportFit` | `True` | show the quantiles of the misfit of the boundaries to p2c when the job is displayed |

## Output

| `job` | parentGrainReconstructor |

## References

- R. Hielscher, T. Nyyssönen, F. Niessen, A. A. Gazder, The variant graph approach to improved parent grain reconstruction, Materialia 22 (2022) 101399
- F. Niessen, T. Nyyssönen, A. A. Gazder, R. Hielscher, Parent grain reconstruction from partially or fully transformed microstructures in MTEX, J. Appl. Cryst. 55 (2022) 180-194

## See also

[parentGrainReconstructor.calcParent2Child](parentGrainReconstructor.calcParent2Child_py.html), [parentGrainReconstructor.calcGBVotes](parentGrainReconstructor.calcGBVotes_py.html), [parentGrainReconstructor.calcParentFromVote](parentGrainReconstructor.calcParentFromVote_py.html), [calcParent2Child](calcParent2Child_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [OrientationRelationshipFit](OrientationRelationshipFit_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.parentGrainReconstructor](parentGrainReconstructor.parentGrainReconstructor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L281">source</a></font>
{% endraw %}
