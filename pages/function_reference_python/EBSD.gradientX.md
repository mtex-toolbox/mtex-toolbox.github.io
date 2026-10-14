---
title: 'EBSD.gradientX'
sidebar: function_reference_sidebar
permalink: EBSD.gradientX_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.gradientX.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the derivative of the orientation along the specimen x axis per unit length, gradient(ebsd,
xvector); MATLAB's EBSD.gradientX

## Syntax

One sided differences:

```python
gX = gradientX(ebsd)
```

Least squares with the diagonals:

```python
gX = gradientX(ebsd, stencil='full')
```

The stencil is that of gradient.

## Input

| | |
|---|---|
| `ebsd` | EBSD of one phase |

## Output

| | |
|---|---|
| `gX` | vector3d, of the shape of the map |

## Keywords

| | default | |
|---|---|---|
| `stencil` | `'oneSided'` | 'oneSided', 'lattice' ('1hop') or 'full', the neighbours it is taken from |

## See also

[gradient](gradient_py.html), [curvature](curvature_py.html)

MATLAB's [EBSD.gradientX](EBSD.gradientX.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L278">source</a></font>
{% endraw %}
