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

job.pixelSizeMatch(), job.pixelSizeMatch(0.05, offsetMatch='topLeft', extentMatch='smallest')

## Syntax

```python
trueEbsd.pixelSizeMatch(self, pixelsize=0, offsetMatch='centre', extentMatch='largest')
```

Every map resampled onto one grid of pixelsize, by default the smallest present: the images
linearly, NaN outside, the EBSD map by its nearest measurement. offsetMatch aligns the
centres ('centre') or the first corners ('topLeft') of the fields of view, extentMatch
keeps the largest or the smallest of them.

## Used on

[EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [trueEbsd.pixelSizeMatch](trueEbsd.pixelSizeMatch.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/trueebsd.py#L157">source</a></font>
{% endraw %}
