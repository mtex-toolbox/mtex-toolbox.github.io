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

job.calcGBVotes(): the votes the grain boundaries cast into job.votes.

## Syntax

```python
parentGrainReconstructor.calcGBVotes(self, ind=None, p2c=False, c2c=False, reconsiderAll=False, numFit=2, threshold=None, tol=None, minFit=inf, maxFit=-inf, bestFit=False, count=False, curvatureFactor=None)
```

Every pair of neighbouring child grains votes for the numFit variant pairs that let both
come from one parent, every child next to a parent for the numFit variants that fit it;
a vote is the probability that its misfit still means one parent, 1 below threshold -
tolerance/2, 0 above threshold + tolerance/2 (threshold 2 degrees, tolerance the
threshold). p2c or c2c takes one kind alone. With reconsiderAll every prior child grain
votes afresh from its measured orientation for the variant that fits its parent
neighbours, which is the growth step of a reconstruction; a grain with a child
neighbour stays undecided then, and curvatureFactor weighs a boundary by its curvature.
ind restricts reconsiderAll to prior grains of those positions and returns the table.

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcGBVotes](parentGrainReconstructor.calcGBVotes.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L635">source</a></font>
{% endraw %}
