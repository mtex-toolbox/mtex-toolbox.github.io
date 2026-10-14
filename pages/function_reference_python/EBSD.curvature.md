---
title: 'EBSD.curvature'
sidebar: function_reference_sidebar
permalink: EBSD.curvature_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.curvature.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the curvature tensor of every pixel, kappa = d omega / d x, in the specimen frame per scan
unit, its rows the components of the rotation vector and its columns the directions of the
specimen. A two dimensional map says nothing about how the orientation changes along its
normal, so every column the normal reaches is unknown and NaN

## Syntax

```python
EBSD.curvature(ebsd, stencil='oneSided')
```

MATLAB's [EBSD.curvature](EBSD.curvature.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L252">source</a></font>
{% endraw %}
