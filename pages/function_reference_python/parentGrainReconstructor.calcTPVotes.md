---
title: 'parentGrainReconstructor.calcTPVotes'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcTPVotes_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcTPVotes.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

the votes the triple points of three child grains cast for their parent orientation,
written into job.votes; MATLAB's calcTPVotes

## Syntax

<div class="mx-form" markdown="1">

```python
job.calcTPVotes()
```

Every triple point of three child grains votes.

</div>

<div class="mx-form" markdown="1">

```python
job.calcTPVotes(minFit=2.5*degree, maxFit=5*degree)
```

Only the triple points of one clear parent.

</div>

<div class="mx-form" markdown="1">

```python
job.calcTPVotes(numFit=1, bestFit=True)
```

The best fit per variant instead of a probability.

</div>

## Description

At a triple point where three child grains meet, the parent orientation that fits all
three, the mean of one variant of each, is computed for the numFit best fitting
combinations, and each of the three grains votes for its variant, weighted by the fit
as calcGBVotes weighs it. A triple point fits one parent clearly when its best fit is
small and its second best large, which minFit and maxFit ask for.

## Input

| `job` | parentGrainReconstructor, with job.p2c set |

## Keywords

| keyword | default | description |
|---|---|---|
| `numFit` | `2` | the number of best fitting parents every triple point votes for |
| `threshold` | `None` | the misfit angle at which the probability is one half, by default 2 degree or minFit when smaller; also the largest misfit a parent is computed for, 5 degree when not given |
| `tol` | `None` | the width of the angles over which the probability falls from 1 to 0, by default the threshold (MATLAB's tolerance) |
| `minFit` | `inf` | a triple point votes only when its best fit is below this angle |
| `maxFit` | `-inf` | a triple point votes only when its second best fit is above this angle |
| `bestFit` | `False` | the vote of a grain is the best fit per variant, an angle, instead of a probability |
| `count` | `False` | the vote of a grain is the number of fits per variant below the threshold |

## See also

[parentGrainReconstructor.calcParentFromVote](parentGrainReconstructor.calcParentFromVote_py.html), [parentGrainReconstructor.calcGBVotes](parentGrainReconstructor.calcGBVotes_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

## Used on

[TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcTPVotes](parentGrainReconstructor.calcTPVotes.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L892">source</a></font>
{% endraw %}
