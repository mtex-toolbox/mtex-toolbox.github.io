---
title: 'trueEbsd.trueEbsd'
sidebar: function_reference_sidebar
permalink: trueEbsd.trueEbsd_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: trueEbsd.trueEbsd.html
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

## Signature

<div class="mx-form" markdown="1">

```python
trueEbsd(imgList=None, T=None)
```

</div>

## Used on

[EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [trueEbsd.trueEbsd](trueEbsd.trueEbsd.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/trueebsd.py#L80">source</a></font>
{% endraw %}
