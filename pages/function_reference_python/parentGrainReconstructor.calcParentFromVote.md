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

job.calcParentFromVote(minProb=0.5): every grain whose leading vote is strong enough
takes the parent orientation of that variant and the parent phase: for probabilities
above minProb and ahead of the second by minDelta, for fits below minFit and behind the
second by minDelta, for counts at least minCount with the second below maxCount

## Syntax

```python
parentGrainReconstructor.calcParentFromVote(self, minProb=0, minDelta=None, minFit=5*degree, minAlpha=None, minCount=0, maxCount=None)
```

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcParentFromVote](parentGrainReconstructor.calcParentFromVote.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L754">source</a></font>
{% endraw %}
