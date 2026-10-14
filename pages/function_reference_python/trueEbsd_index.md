---
title: 'The class trueEbsd'
sidebar: function_reference_sidebar
permalink: trueEbsd_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the alignment of a sequence of images and EBSD maps of one area, most distorted first and the
ground truth last, one unfitted spatial transform per hop; the methods alter the job

## Syntax

<div class="mx-form" markdown="1">

```python
job = trueEbsd(imgList, T)
job.pixelSizeMatch()
job.calcDistortion('fitErr')
job.undistort()
```

</div>

## Input

| `imgList` | ordered mapImage sequence, from most distorted to the final reference image |
| `T` | spatialTransform stages for the hops between consecutive images; None leaves the hop list unconfigured |

## Members

| [calcDistortion](trueEbsd.calcDistortion_py.html) | the distortion between every consecutive pair of maps of the job fitted |
| [pixelSizeMatch](trueEbsd.pixelSizeMatch_py.html) | every image and map of the job resampled onto one grid |
| [setOptions](trueEbsd.setOptions_py.html) | the registration settings of every map of the job, or of one |
| [T](trueEbsd.T_py.html) | one unfitted transform per hop |
| [trueEbsd](trueEbsd.trueEbsd_py.html) | the alignment of a sequence of images and EBSD maps of one area, most distorted first and the ground truth last, one unfitted spatial transform per hop |
| [undistort](trueEbsd.undistort_py.html) | job.undistort(): every map resampled onto the reference grid through the hops between it and the reference, its own first, by the nearest pixel |

## Used on

[EBSDTrueEbsd](EBSDTrueEbsd_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/trueebsd.py#L80">source</a></font>
{% endraw %}
