---
title: 'EBSD.gradientY'
sidebar: function_reference_sidebar
permalink: EBSD.gradientY_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.gradientY.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the derivative of the orientation along the specimen y axis per unit length, gradient(ebsd,
yvector); MATLAB's EBSD.gradientY

## Syntax

One sided differences:

```python
gY = gradientY(ebsd)
```

Least squares with the diagonals:

```python
gY = gradientY(ebsd, stencil='full')
```

The stencil is that of gradient.

## Input

| | |
|---|---|
| `ebsd` | EBSD of one phase |

## Output

| | |
|---|---|
| `gY` | vector3d, of the shape of the map |

## Keywords

| | default | |
|---|---|---|
| `stencil` | `'oneSided'` | 'oneSided', 'lattice' ('1hop') or 'full', the neighbours it is taken from |

## See also

[gradient](gradient_py.html), [curvature](curvature_py.html)

MATLAB's [EBSD.gradientY](EBSD.gradientY.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L298">source</a></font>
{% endraw %}
