---
title: 'EBSD3.weightedBurgersVec'
sidebar: function_reference_sidebar
permalink: EBSD3.weightedBurgersVec_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.weightedBurgersVec.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

weightedBurgersVec(ebsd), weightedBurgersVec(ebsd, windowSize=2), weightedBurgersVec(ebsd,
'gradient', stencil='full'): the net Burgers vector crossing the map per unit area, after
Wheeler et al. (2009), a vector per pixel in the specimen frame per scan unit. The integral
method sums the crystal coordinates of the specimen x and y axes around a square loop of
2 windowSize + 1 pixels, on the gridded map, NaN where the loop leaves the grain or the
map; the gradient method is the column of Nye's tensor along the normal of the map

## Syntax

```python
EBSD3.weightedBurgersVec(ebsd, *args, windowSize=1, stencil='oneSided', gradient=False)
```

MATLAB's [EBSD3.weightedBurgersVec](EBSD3.weightedBurgersVec.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L274">source</a></font>
{% endraw %}
