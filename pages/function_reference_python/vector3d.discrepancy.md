---
title: 'vector3d.discrepancy'
sidebar: function_reference_sidebar
permalink: vector3d.discrepancy_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.discrepancy.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the discrepancy between two densities and/or weighted point sets on the sphere (S2Fun,
vector3d) or on SO(3) (SO3Fun, rotation, orientation), in either order

## Syntax

```python
discrepancy(v, w, weights=c, weights2=e)             D_2, the root cap or ball L2 discrepancy
discrepancy(f, v, metric='D_cap', numCenters=4097)   the finite search for the largest cap
discrepancy(odf, ori, metric='D_ball', numRadii=513)
discrepancy(f, v, metric='L2', bandwidth=32, degreeWeights=w)   'E_L' the same
discrepancy(f, v, squared=True), discrepancy(f, v, info=True) -> (d, info)
discrepancy(f, v, metric='kernel')                   the squared objective of optimalSample
```

## Signature

```python
vector3d.discrepancy(a, b, metric='D_2', **kwargs)
```

MATLAB's [vector3d.discrepancy](vector3d.discrepancy.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/discrepancy.py#L683">source</a></font>
{% endraw %}
