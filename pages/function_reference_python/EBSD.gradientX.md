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

<div class="mx-form" markdown="1">

```python
gX = gradientX(ebsd)
```

One sided differences.

</div>

<div class="mx-form" markdown="1">

```python
gX = gradientX(ebsd, stencil='full')
```

Least squares with the diagonals.

</div>

## Description

The stencil is that of gradient.

## Input

| `ebsd` | EBSD of one phase |

## Keywords

| keyword | default | description |
|---|---|---|
| `stencil` | `'oneSided'` | 'oneSided', 'lattice' ('1hop') or 'full', the neighbours it is taken from |

## Output

| `gX` | vector3d, of the shape of the map |

## See also

[gradient](gradient_py.html), [curvature](curvature_py.html)

MATLAB's [EBSD.gradientX](EBSD.gradientX.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L283">source</a></font>
{% endraw %}
