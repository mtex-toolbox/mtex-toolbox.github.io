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

One sided differences:

```python
gX, gY = gradient(ebsd)
```

```python
gX, gY = gradient(ebsd, stencil='lattice') # least squares over the stencil of the lattice
```

Least squares with the diagonals:

```python
gX, gY = gradient(ebsd, stencil='full')
```

The derivative along a direction of the specimen:

```python
gD = gradient(ebsd, xvector)
```

The derivative is a vector of the left tangent space, the rotation vector of the step to
the neighbour divided by its length, taken from the neighbours that are comparable: inside
the map, indexed, of the same phase and, where the map carries grain ids, of the same
grain. A pixel whose neighbours do not span two directions has none, and is NaN.

The stencil 'oneSided' takes the neighbours along the two lattice directions, stepping
backwards only where the map ends and NaN where the neighbour it asks for is missing inside
the map. 'lattice' (MATLAB's '1hop', which is taken too) fits over the stencil of the
lattice, four axial neighbours of a square grid and six of a hexagonal one, the central
difference in the interior; 'full' fits over all eight offsets in {-1, 0, 1}^2, leaving far
fewer pixels NaN. MATLAB returns the derivatives along the lattice directions with the basis
as second output; the port returns them along the axes of the plane of the map. A direction
off the plane of the map gives NaN.

## Input

| | |
|---|---|
| `ebsd` | EBSD of one phase |
| `direction` | vector3d of the specimen, or three coordinates; without it both axes |

## Output

| | |
|---|---|
| `gX, gY` | vector3d, the derivatives along the two axes of the plane of the map, of the shape of the map |
| `gD` | vector3d, the derivative along direction |

## Keywords

| | default | |
|---|---|---|
| `stencil` | `'oneSided'` | 'oneSided', 'lattice' ('1hop') or 'full', the neighbours it is taken from |

## See also

[gradientX](gradientX_py.html), [gradientY](gradientY_py.html), [curvature](curvature_py.html), [calcGND](calcGND_py.html), [weightedBurgersVec](weightedBurgersVec_py.html)

MATLAB's [EBSD.gradient](EBSD.gradient.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L171">source</a></font>
{% endraw %}
