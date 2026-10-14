---
title: 'EBSD.calcGROD'
sidebar: function_reference_sidebar
permalink: EBSD.calcGROD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.calcGROD.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the grain reference orientation deviation, mis2mean: the misorientation of every pixel
from the mean orientation of its grain, or from a given reference. The reference is
taken over the symmetric equivalent closest to the pixel, so the deviation is the small
rotation it is meant to be

## Syntax

```python
EBSD.calcGROD(ebsd, grains=None, rotRef=None)
```

## Used on

[EBSDGROD](EBSDGROD_py.html)

MATLAB's [EBSD.calcGROD](EBSD.calcGROD.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L409">source</a></font>
{% endraw %}
