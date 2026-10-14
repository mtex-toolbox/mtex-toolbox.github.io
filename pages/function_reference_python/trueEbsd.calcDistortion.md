---
title: 'trueEbsd.calcDistortion'
sidebar: function_reference_sidebar
permalink: trueEbsd.calcDistortion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: trueEbsd.calcDistortion.html
status: Reference
---
{% raw %}
A method of [trueEbsd](trueEbsd_index_py.html).

the distortion between every consecutive pair of maps of the job fitted; MATLAB's
calcDistortion of trueEbsd

## Syntax

<div class="mx-form" markdown="1">

```python
job.calcDistortion()
```

Every hop fitted.

</div>

<div class="mx-form" markdown="1">

```python
job.calcDistortion(fitErr=True)
```

And what each hop leaves over measured.

</div>

<div class="mx-form" markdown="1">

```python
job.calcDistortion(fitErr=True, verbose=False, retryMax=1)
```

Silent, one pass per hop.

</div>

## Description

job.T[n] is the unfitted spatialTransform between map n and map n + 1. For every pair the
images are cut into tiles, the tiles cross correlated for a local shift each, and the stages
of the transform fitted one after another to those shifts, each to what the one before left
over. The shifts land in job.shifts[n], and job.T[n] is replaced by the fitted transform,
still of its declared class. The job is changed in place; run pixelSizeMatch first.

The pairs are visited from the first map of high contrast forward to the reference, then
backward from it to map 0, so that one map of every pair has usable contrast; where the
other has none, its partner's image carried into its frame is what the next hop correlates.

fitErr measures the displacement left after each hop, job.fitError[n], the number that says
whether the registration worked; it costs one more correlation per hop. With it a hop that
leaves more than 2 pixels is redone with the tiles doubled, until it converges, the tiles no
longer fit the image or retryMax attempts are made.

## Input

| `job` | trueEbsd after pixelSizeMatch |

## Keywords

| keyword | default | description |
|---|---|---|
| `fitErr` | `False` | measure what is left after each hop and retry the hops that leave too much |
| `verbose` | `True` | print the table of the hops, MATLAB's silent the opposite |
| `retryMax` | `100` | the most correlation attempts per hop, the first included |

## See also

[trueEbsd.pixelSizeMatch](trueEbsd.pixelSizeMatch_py.html), [trueEbsd.undistort](trueEbsd.undistort_py.html), [spatialTransform](spatialTransform_index_py.html), [xcfShift](xcfShift_py.html), [pairShifts](pairShifts_index_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

## Used on

[EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [trueEbsd.calcDistortion](trueEbsd.calcDistortion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/trueebsd.py#L252">source</a></font>
{% endraw %}
