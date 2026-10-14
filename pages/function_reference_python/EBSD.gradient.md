---
title: 'EBSD.gradient'
sidebar: function_reference_sidebar
permalink: EBSD.gradient_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.gradient.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the derivative of the orientation along the two axes of the plane of the map, per unit
length, as a pair of framed vectors; or along a direction of the specimen; MATLAB's
EBSD.gradient

## Syntax

<div class="mx-form" markdown="1">

```python
gX, gY = gradient(ebsd)
```

One sided differences.

</div>

<div class="mx-form" markdown="1">

```python
gX, gY = gradient(ebsd, stencil='lattice') # least squares over the stencil of the lattice
```

</div>

<div class="mx-form" markdown="1">

```python
gX, gY = gradient(ebsd, stencil='full')
```

Least squares with the diagonals.

</div>

<div class="mx-form" markdown="1">

```python
gD = gradient(ebsd, xvector)
```

The derivative along a direction of the specimen.

</div>

## Description

The derivative at a pixel is the rotation vector of the step to its neighbour divided by
the step length, a vector of the left tangent space, fitted over several neighbours. Only
comparable neighbours count: inside the map, indexed, of the same phase and, where the map
carries grain ids, of the same grain. A pixel whose neighbours do not span two directions
gets NaN, as does every pixel of a map of a single row.

The stencil chooses the neighbours:

- 'oneSided', the default: the next pixel along each of the two lattice directions, the
previous one only where the map ends; NaN where a neighbour inside the map is missing or not
comparable.
- 'lattice' (MATLAB's '1hop'): a least squares fit over the axial neighbours, four on a
square grid and six on a hexagonal one, the central difference in the interior.
- 'full': a least squares fit over all eight neighbours, which leaves the fewest pixels NaN.

MATLAB returns the derivatives along the lattice directions with the basis as second output;
the port returns them along the axes of the plane of the map. A direction off the plane of
the map gives NaN.

## Input

| `ebsd` | EBSD on a lattice, of one phase or several |
| `direction` | vector3d of the specimen, or three coordinates; without it both axes |

## Keywords

| keyword | default | description |
|---|---|---|
| `stencil` | `'oneSided'` | 'oneSided', 'lattice' ('1hop') or 'full', the neighbours it is taken from |

## Output

| `gX, gY` | vector3d, the derivatives along the two axes of the plane of the map, of the shape of the map |
| `gD` | vector3d, the derivative along direction |

## See also

[gradientX](gradientX_py.html), [gradientY](gradientY_py.html), [curvature](curvature_py.html), [calcGND](calcGND_py.html), [weightedBurgersVec](weightedBurgersVec_py.html)

MATLAB's [EBSD.gradient](EBSD.gradient.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L171">source</a></font>
{% endraw %}
