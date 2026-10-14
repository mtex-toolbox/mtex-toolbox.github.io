---
title: 'parentGrainReconstructor.calcGBVotes'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcGBVotes_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcGBVotes.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

the votes the grain boundaries cast for the parent orientation of their child grains,
written into job.votes; MATLAB's calcGBVotes

## Syntax

<div class="mx-form" markdown="1">

```python
job.calcGBVotes()
```

From the child to child and the parent to child boundaries.

</div>

<div class="mx-form" markdown="1">

```python
job.calcGBVotes(p2c=True, threshold=2.5*degree, tol=1.5*degree)
```

From the parent to child boundaries alone.

</div>

<div class="mx-form" markdown="1">

```python
job.calcGBVotes(p2c=True, reconsiderAll=True, threshold=4*degree, tol=1.5*degree)
```

Every measured child grain anew, the growth step.

</div>

<div class="mx-form" markdown="1">

```python
job.calcGBVotes(numFit=1, bestFit=True)
```

The best fit per variant instead of a probability.

</div>

<div class="mx-form" markdown="1">

```python
job.calcGBVotes(count=True)
```

The number of fits below the threshold.

</div>

## Description

A pair of neighbouring child grains votes for the numFit pairs of variants that let both
come from one parent, a child grain next to a parent grain for the numFit variants of
that parent that fit it. A fit becomes a probability that it still means one parent: 1
below threshold - tol/2, 0 above threshold + tol/2, a cumulative Gaussian between. The
probabilities are summed per grain and variant into job.votes, a table whose rows are
job.grains, the best variant first, which calcParentFromVote reads.

With reconsiderAll every measured child grain votes afresh, from its own orientation,
for the variant that fits its parent neighbours: the growth step of a reconstruction,
which takes back an earlier wrong decision. It needs the grains as measured, before
mergeSimilar or after revert.

## Input

| `job` | parentGrainReconstructor, with job.p2c set |
| `ind` | with reconsiderAll: the positions of the prior grains to vote for; the table of their votes is returned and job.votes left as it was |

## Keywords

| keyword | default | description |
|---|---|---|
| `p2c` | `False` | only the parent to child boundaries vote |
| `c2c` | `False` | only the child to child boundaries vote |
| `reconsiderAll` | `False` | every measured child grain votes for the variant that fits its parent neighbours, the decided ones too |
| `numFit` | `2` | the number of best fitting variants every boundary votes for |
| `threshold` | `None` | the misfit angle at which the probability is one half, by default 2 degree or minFit when smaller |
| `tol` | `None` | the width of the angles over which the probability falls from 1 to 0, by default the threshold (MATLAB's tolerance) |
| `minFit` | `inf` | a boundary votes only when its best fit is below this angle |
| `maxFit` | `-inf` | a boundary votes only when its second best fit is above this angle |
| `bestFit` | `False` | the vote of a grain is the best fit per variant, an angle, instead of a probability |
| `count` | `False` | the vote of a grain is the number of fits per variant below the threshold |
| `curvatureFactor` | `None` | with reconsiderAll: weigh a boundary by 1 plus this factor times its normalised curvature, so that curved boundaries count more |

## Output

| `votes` | with ind: voteTable of the votes of those grains |

## See also

[parentGrainReconstructor.calcParentFromVote](parentGrainReconstructor.calcParentFromVote_py.html), [parentGrainReconstructor.calcTPVotes](parentGrainReconstructor.calcTPVotes_py.html), [parentGrainReconstructor.calcGBFit](parentGrainReconstructor.calcGBFit_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcGBVotes](parentGrainReconstructor.calcGBVotes.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L756">source</a></font>
{% endraw %}
