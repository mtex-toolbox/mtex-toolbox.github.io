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
the most frequent vote cast for every id; MATLAB's majorityVote

## Syntax

<div class="mx-form" markdown="1">

```python
vote, numVotes = majorityVote([1, 1, 1, 1, 1, 2, 3, 2, 3, 2, 3], [5, 9, 5, 9, 9, 4, 1, 4, 2, 4, 1])
```

The most frequent vote per id.

</div>

<div class="mx-form" markdown="1">

```python
vote, numVotes = majorityVote([1, 1, 2, 2, 3], [5, 5, 4, 7, 1], strict=True)
```

A vote only where all agree.

</div>

<div class="mx-form" markdown="1">

```python
vote, numVotes = majorityVote([1, 1, 2], [5, 9, 4], maxId=5)
```

A row for every id up to 5.

</div>

<div class="mx-form" markdown="1">

```python
vote, numVotes = majorityVote([1, 1, 1], [5, 9, 9], weights=[3, 1, 1])
```

The vote of the largest summed weight.

</div>

## Description

The votes are grouped by their id, and every id from 1 to maxId gets one row, at position
id - 1: the vote cast most often for it, the smallest of a tie, and NaN for an id without
votes. Votes that are NaN and ids below 1 are left out.

## Input

| `id` | integer array, the id every vote is cast for, from 1 |
| `votes` | array of the same length, the votes, positive integers |

## Keywords

| keyword | default | description |
|---|---|---|
| `maxId` | `None` | the number of rows, by default the largest id |
| `strict` | `False` | give a vote only to an id whose votes all agree, NaN to the others |
| `weights` | `None` | array of the length of votes, a weight for every vote; the vote of the largest summed weight wins |

## Output

| `vote` | array of maxId entries, the winning vote of every id, NaN where there is none |
| `numVotes` | array of maxId entries, how often the winning vote was cast; with weights the lead of the winning vote, its weight over the sum of its weight and the second's |

## See also

[parentGrainReconstructor.calcParentFromVote](parentGrainReconstructor.calcParentFromVote_py.html), [parentGrainReconstructor.calcGBVotes](parentGrainReconstructor.calcGBVotes_py.html)

## Used on

[LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html)

MATLAB's [majorityVote](majorityVote.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L171">source</a></font>
{% endraw %}
