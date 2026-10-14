---
title: 'EBSD.gradientZ'
sidebar: function_reference_sidebar
permalink: EBSD.gradientZ_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.gradientZ.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the derivative of the orientation along the specimen z axis per unit length, gradient(ebsd,
zvector); MATLAB's EBSD.gradientZ

## Syntax

<div class="mx-form" markdown="1">

```python
gZ = gradientZ(ebsd)
```

One sided differences.

</div>

<div class="mx-form" markdown="1">

```python
gZ = gradientZ(ebsd, stencil='full')
```

Least squares with the diagonals.

</div>

## Description

The stencil is that of gradient. A planar map has the derivative only where z lies in its
plane, and is NaN elsewhere.

## Input

| `ebsd` | EBSD of one phase |

## Keywords

| keyword | default | description |
|---|---|---|
| `stencil` | `'oneSided'` | 'oneSided', 'lattice' ('1hop') or 'full', the neighbours it is taken from |

## Output

| `gZ` | vector3d, of the shape of the map |

## See also

[gradient](gradient_py.html), [curvature](curvature_py.html)

MATLAB's [EBSD.gradientZ](EBSD.gradientZ.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L323">source</a></font>
{% endraw %}
