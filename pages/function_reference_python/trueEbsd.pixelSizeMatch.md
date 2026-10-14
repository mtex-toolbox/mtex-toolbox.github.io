---
title: 'trueEbsd.pixelSizeMatch'
sidebar: function_reference_sidebar
permalink: trueEbsd.pixelSizeMatch_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: trueEbsd.pixelSizeMatch.html
status: Reference
---
{% raw %}
A method of [trueEbsd](trueEbsd_index_py.html).

every image and map of the job resampled onto one grid; MATLAB's pixelSizeMatch of trueEbsd

## Syntax

The smallest pixel size present:

```python
job.pixelSizeMatch()
```

Another pixel size:

```python
job.pixelSizeMatch(0.05)
```

Corners aligned, cropped:

```python
job.pixelSizeMatch(0.05, offsetMatch='topLeft', extentMatch='smallest')
```

The images are interpolated linearly, NaN outside them, the EBSD map takes its nearest
measurement. The result is job.resizedList, which calcDistortion works on; the job is
changed in place.

## Input

| | |
|---|---|
| `job` | trueEbsd |
| `pixelsize` | the pixel size of the common grid; 0 for the smallest of job.imgList |

## Keywords

| | default | |
|---|---|---|
| `offsetMatch` | `'centre'` | how fields of view of different size are laid over one another: 'centre' aligns their centres, 'topLeft' their first corners; choose the one that leaves the smaller rigid shift between the images |
| `extentMatch` | `'largest'` | 'largest' extends every image to the largest field of view, repeating its edge pixels; 'smallest' crops all to the smallest |

## See also

[trueEbsd.calcDistortion](trueEbsd.calcDistortion_py.html), [trueEbsd.undistort](trueEbsd.undistort_py.html), [mapImage](mapImage_index_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

## Used on

[EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [trueEbsd.pixelSizeMatch](trueEbsd.pixelSizeMatch.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/trueebsd.py#L180">source</a></font>
{% endraw %}
