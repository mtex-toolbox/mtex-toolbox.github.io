---
title: 'EBSD3.weightedBurgersVec'
sidebar: function_reference_sidebar
permalink: EBSD3.weightedBurgersVec_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.weightedBurgersVec.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

the weighted Burgers vector: the net Burgers vector of the dislocations crossing the map
per unit area, by the integral or the gradient method; MATLAB's weightedBurgersVec

## Syntax

In specimen coordinates, a 3 x 3 loop:

```python
W = weightedBurgersVec(ebsd)
```

Around a loop of 5 x 5 pixels:

```python
W = weightedBurgersVec(ebsd, windowSize=2)
```

```python
W = ebsd.orientations.inv() * weightedBurgersVec(ebsd) # in crystal coordinates
```

From the orientation gradient:

```python
W = weightedBurgersVec(ebsd, gradient=True)
```

The integral method, the default, sums the crystal coordinates of the specimen x and y axes
around a square loop of 2 windowSize + 1 pixels about every pixel; it needs a gridded map of
one indexed phase, and a loop that leaves the grain (after calcGrains) or the map gives NaN.
The gradient method takes the column of Nye's tensor along the normal of the map, from the
curvature of the nearest neighbours, and runs on a list as well. The vectors are in the
specimen frame, per scan unit, after Wheeler et al.

## Input

| | |
|---|---|
| `ebsd` | EBSD of one indexed phase, gridified for the integral method |

## Output

| | |
|---|---|
| `W` | vector3d of the shape of the map, in the specimen frame |

## Keywords

| | default | |
|---|---|---|
| `windowSize` | `1` | the half width of the loop of the integral method, in pixels |
| `stencil` | `'oneSided'` | the stencil of the derivatives of the gradient method, 'oneSided' or 'full' |
| `gradient` | `False` | use the gradient method instead of the integral one |

## References

- J. Wheeler, E. Mariani, S. Piazolo, D.J. Prior, P. Trimby, M.R. Drury, The weighted Burgers vector: a new quantity for constraining dislocation densities and types using electron backscatter diffraction on 2D sections through crystalline materials, J. Microscopy 233 (2009) 482-494

## See also

[curvature](curvature_py.html), [calcGND](calcGND_py.html), [curvatureTensor.dislocationDensity](curvatureTensor.dislocationDensity_py.html), [WBV](WBV_py.html)

MATLAB's [EBSD3.weightedBurgersVec](EBSD3.weightedBurgersVec.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L378">source</a></font>
{% endraw %}
