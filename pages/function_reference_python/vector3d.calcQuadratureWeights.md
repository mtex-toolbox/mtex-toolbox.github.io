---
title: 'vector3d.calcQuadratureWeights'
sidebar: function_reference_sidebar
permalink: vector3d.calcQuadratureWeights_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.calcQuadratureWeights.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

weights that integrate a function from samples at the directions, summing to one

## Syntax

```python
calcQuadratureWeights(r)                     a regular grid exactly, scattered points by Voronoi areas
calcQuadratureWeights(r, method='harmonic')  the least norm correction that integrates every harmonic the count allows
```

## Signature

```python
vector3d.calcQuadratureWeights(v, method='voronoi')
```

MATLAB's [vector3d.calcQuadratureWeights](vector3d.calcQuadratureWeights.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L789">source</a></font>
{% endraw %}
