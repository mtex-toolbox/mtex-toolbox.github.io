---
title: 'parentGrainReconstructor.calcGBFit'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcGBFit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcGBFit.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

the misfit of the boundaries between neighbouring grains to the orientation relationship
job.p2c, and the ids of the grains on either side; MATLAB's
parentGrainReconstructor.calcGBFit

## Syntax

<div class="mx-form" markdown="1">

```python
fit, pairs = job.calcGBFit()
```

Every parent to child and child to child boundary.

</div>

<div class="mx-form" markdown="1">

```python
fit, p2cPairs = job.calcGBFit(p2c=True)
```

The parent to child boundaries alone.

</div>

<div class="mx-form" markdown="1">

```python
fit, c2cPairs = job.calcGBFit(c2c=True)
```

The child to child boundaries alone.

</div>

## Description

For a pair of child grains the misfit is the angle between their misorientation and the
nearest child to child misorientation job.p2c admits; for a parent and a child grain the
angle between their misorientation and job.p2c. With neither keyword both kinds are
returned, the parent to child pairs first.

## Input

| `job` | parentGrainReconstructor |

## Keywords

| keyword | default | description |
|---|---|---|
| `p2c` | `False` | only the boundaries between a parent and a child grain |
| `c2c` | `False` | only the boundaries between two child grains |

## Output

| `fit` | array of the misfit angles, in radians |
| `pairs` | (n, 2) int array, the ids of the two grains of every boundary |

## See also

[parentGrainReconstructor.calcParent2Child](parentGrainReconstructor.calcParent2Child_py.html), [parentGrainReconstructor.calcGBVotes](parentGrainReconstructor.calcGBVotes_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcGBFit](parentGrainReconstructor.calcGBFit.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L632">source</a></font>
{% endraw %}
