---
title: 'EBSD.weightedBurgersVec'
sidebar: function_reference_sidebar
permalink: EBSD.weightedBurgersVec_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.weightedBurgersVec.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the weighted Burgers vector: the net Burgers vector of the dislocations crossing the map
per unit area, by the integral or the gradient method; MATLAB's weightedBurgersVec

## Syntax

<div class="mx-form" markdown="1">

```python
W = weightedBurgersVec(ebsd)
```

In specimen coordinates, a 3 x 3 loop.

</div>

<div class="mx-form" markdown="1">

```python
W = weightedBurgersVec(ebsd, windowSize=2)
```

Around a loop of 5 x 5 pixels.

</div>

<div class="mx-form" markdown="1">

```python
W = ebsd.orientations.inv() * weightedBurgersVec(ebsd) # in crystal coordinates
```

</div>

<div class="mx-form" markdown="1">

```python
W = weightedBurgersVec(ebsd, gradient=True)
```

From the orientation gradient.

</div>

## Description

The weighted Burgers vector of Wheeler et al. is computed by one of two methods:

- the integral method, the default: the crystal coordinates of the specimen x and y axes
summed around a square loop of 2 windowSize + 1 pixels about every pixel. It needs a gridded
map of one indexed phase. A loop that leaves the map, meets a non indexed pixel or, after
calcGrains, leaves the grain gives NaN, so a larger window leaves more pixels NaN.
- the gradient method, gradient=True: the column of Nye's tensor along the normal of the map,
from the curvature of the nearest neighbours. It runs on a list and on a map of several
phases as well.

The vectors are in the specimen frame, per scan unit. windowSize must be at least 1; 0 gives
infinite values.

## Input

| `ebsd` | EBSD, of one indexed phase and gridified for the integral method |

## Keywords

| keyword | default | description |
|---|---|---|
| `windowSize` | `1` | the half width of the loop of the integral method, in pixels |
| `stencil` | `'oneSided'` | the stencil of the derivatives of the gradient method, 'oneSided', 'lattice' or 'full' |
| `gradient` | `False` | use the gradient method instead of the integral one |

## Output

| `W` | vector3d of the shape of the map, in the specimen frame |

## References

- J. Wheeler, E. Mariani, S. Piazolo, D.J. Prior, P. Trimby, M.R. Drury, The weighted Burgers vector: a new quantity for constraining dislocation densities and types using electron backscatter diffraction on 2D sections through crystalline materials, J. Microscopy 233 (2009) 482-494

## See also

[curvature](curvature_py.html), [calcGND](calcGND_py.html), [curvatureTensor.dislocationDensity](curvatureTensor.dislocationDensity_py.html), [WBV](WBV_py.html)

MATLAB's [EBSD.weightedBurgersVec](EBSD.weightedBurgersVec.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L383">source</a></font>
{% endraw %}
