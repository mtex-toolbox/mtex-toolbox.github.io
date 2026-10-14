---
title: 'EBSD.KAM'
sidebar: function_reference_sidebar
permalink: EBSD.KAM_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.KAM.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the kernel average misorientation: the mean misorientation angle of a pixel to its
neighbours, NaN where it has none to compare with. The neighbours are the ones within
order steps over the lattice stencil, or within a physical radius; threshold drops a pair
above an angle, max takes the largest angle instead of the mean, and weights is a
function of the distance

## Syntax

```python
EBSD.KAM(ebsd, order=1, radius=None, threshold=inf, max=False, weights=None)
```

MATLAB's [EBSD.KAM](EBSD.KAM.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L315">source</a></font>
{% endraw %}
