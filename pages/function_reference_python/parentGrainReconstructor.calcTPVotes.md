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

job.calcTPVotes(minFit=2.5*degree, maxFit=5*degree): the votes the triple points of
three child grains cast, each corner for the variant of the parent that fits all three;
minFit asks the best fit of a triple point to be below it, maxFit the second best above

## Syntax

```python
parentGrainReconstructor.calcTPVotes(self, numFit=2, threshold=None, tol=None, minFit=inf, maxFit=-inf, bestFit=False, count=False)
```

## Used on

[TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcTPVotes](parentGrainReconstructor.calcTPVotes.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L731">source</a></font>
{% endraw %}
