---
title: 'trueEbsd.setOptions'
sidebar: function_reference_sidebar
permalink: trueEbsd.setOptions_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: trueEbsd.setOptions.html
status: Reference
---
{% raw %}
A method of [trueEbsd](trueEbsd_index_py.html).

job.setOptions(roiSize=5, numROI=24), job.setOptions(3, registerOn='raw')

## Syntax

```python
trueEbsd.setOptions(self, n=None, **kwargs)
```

The registration settings of every map, or of map n (or a list of them) alone: roiSize, the
tile width as a length in the scan unit, one or one per fit stage, 0 for a map correlated
against nothing; numROI, the tiles across; registerOn, 'edge' or 'raw'; edgeWidth, the
neighbour distance of the edge transform, a length; highContrast, True, False or 'auto';
pixelTime, carried. What is left at 'auto' is measured when calcDistortion needs it.

## Used on

[EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [trueEbsd.setOptions](trueEbsd.setOptions.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/trueebsd.py#L134">source</a></font>
{% endraw %}
