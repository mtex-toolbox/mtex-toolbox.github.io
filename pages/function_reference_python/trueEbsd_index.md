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

```python
job = trueEbsd(imgList, T)
job.pixelSizeMatch()
job.calcDistortion('fitErr')
job.undistort()
```

## Members

| | |
|---|---|
| [calcDistortion](trueEbsd.calcDistortion_py.html) | job.calcDistortion('fitErr'), job.calcDistortion(fitErr=True, verbose=False, retryMax=3) |
| [pixelSizeMatch](trueEbsd.pixelSizeMatch_py.html) | job.pixelSizeMatch(), job.pixelSizeMatch(0.05, offsetMatch='topLeft', extentMatch='smallest') |
| [setOptions](trueEbsd.setOptions_py.html) | job.setOptions(roiSize=5, numROI=24), job.setOptions(3, registerOn='raw') |
| [T](trueEbsd.T_py.html) | one unfitted transform per hop |
| [trueEbsd](trueEbsd.trueEbsd_py.html) | the alignment of a sequence of images and EBSD maps of one area, most distorted first and the ground truth last, one unfitted spatial transform per hop |
| [undistort](trueEbsd.undistort_py.html) | job.undistort(): every map resampled onto the reference grid through the hops between it and the reference, its own first, by the nearest pixel |

## Used on

[EBSDTrueEbsd](EBSDTrueEbsd_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/trueebsd.py#L80">source</a></font>
{% endraw %}
