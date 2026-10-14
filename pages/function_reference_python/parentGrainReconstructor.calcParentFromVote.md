---
title: 'parentGrainReconstructor.calcParentFromVote'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcParentFromVote_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcParentFromVote.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

the child grains whose vote is clear turned into parent grains, the parent orientation
of the variant they voted for; MATLAB's calcParentFromVote

## Syntax

<div class="mx-form" markdown="1">

```python
job.calcParentFromVote()
```

Every grain with a vote.

</div>

<div class="mx-form" markdown="1">

```python
job.calcParentFromVote(minProb=0.7)
```

A probability of at least 0.7.

</div>

<div class="mx-form" markdown="1">

```python
job.calcParentFromVote(minProb=0.5, minDelta=0.2)
```

And ahead of the second by 0.2.

</div>

<div class="mx-form" markdown="1">

```python
job.calcParentFromVote(minFit=2*degree, minDelta=1*degree)
```

After votes of the best fit.

</div>

<div class="mx-form" markdown="1">

```python
job.calcParentFromVote(minCount=3, maxCount=1)
```

After counted votes.

</div>

## Description

The votes are those of the last calcGBVotes, calcTPVotes or clusterVariantGraph, and the
criteria read them as they are: probabilities with minProb, minDelta and minAlpha, fits
of bestFit with minFit, minDelta and minAlpha, counts with minCount and maxCount. A grain
that meets them takes the parent phase and the parent orientation of the variant it
voted for; a grain that is a parent already is reconstructed again from its measured
orientation, a merged parent grain is not. The votes of the grains turned are cleared.

MATLAB documents minVotes, which neither MATLAB nor this port reads; minAlpha compares
fits, as MATLAB's code does, not probabilities, as its help says.

## Input

| `job` | parentGrainReconstructor, with job.votes |

## Keywords

| keyword | default | description |
|---|---|---|
| `minProb` | `0` | with probabilities: the best must exceed this |
| `minDelta` | `None` | the best must lead the second by more than this: in probability, or in angle with fits |
| `minFit` | `5*degree` | with fits: the best must be below this angle |
| `minAlpha` | `None` | with fits: the best must exceed this factor times the second |
| `minCount` | `0` | with counts: the best must reach this count |
| `maxCount` | `None` | with counts: the second must stay below this count |

## References

- F. Niessen, T. Nyyssönen, A. A. Gazder, R. Hielscher, Parent grain reconstruction from partially or fully transformed microstructures in MTEX, J. Appl. Cryst. 55 (2022) 180-194

## See also

[parentGrainReconstructor.calcGBVotes](parentGrainReconstructor.calcGBVotes_py.html), [parentGrainReconstructor.calcTPVotes](parentGrainReconstructor.calcTPVotes_py.html), [parentGrainReconstructor.calcParentFromGraph](parentGrainReconstructor.calcParentFromGraph_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcParentFromVote](parentGrainReconstructor.calcParentFromVote.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L938">source</a></font>
{% endraw %}
