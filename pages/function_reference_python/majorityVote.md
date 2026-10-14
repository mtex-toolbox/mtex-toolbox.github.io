---
title: 'majorityVote'
sidebar: function_reference_sidebar
permalink: majorityVote_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: majorityVote.html
status: Reference
---
{% raw %}
vote, numVotes = majorityVote(id, votes, maxId): the vote of every id from the votes cast
for it, a row per id up to maxId (position id - 1), NaN where it got none: the most frequent
one, the smallest of a tie; with strict only where all its votes agree; with weights the one
of the largest summed weight and numVotes its lead over the second

## Syntax

```python
majorityVote(id, votes, maxId=None, strict=False, weights=None)
```

## Used on

[LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html)

MATLAB's [majorityVote](majorityVote.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L156">source</a></font>
{% endraw %}
