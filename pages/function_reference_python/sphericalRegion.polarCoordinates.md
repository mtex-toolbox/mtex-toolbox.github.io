---
title: 'sphericalRegion.polarCoordinates'
sidebar: function_reference_sidebar
permalink: sphericalRegion.polarCoordinates_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion.polarCoordinates.html
status: Reference
---
{% raw %}
polar coordinates of a region (MATLAB @sphericalRegion/polarCoordinates), which is what a
colour key is built on: the radius is one at the centre and zero on the boundary, taken
along the great circle through the centre, and the azimuth is measured about the centre
from a reference direction and then equalised, so that a wide part of the sector takes as
much of the turn as a narrow one and the vertices sit at equal angles

## Syntax

<div class="mx-form" markdown="1">

```python
r, rho = polarCoordinates(sR, h, regionCenter(sR))
```

The radius and the equalised azimuth.

</div>

<div class="mx-form" markdown="1">

```python
r, rho = polarCoordinates(sR, h, regionCenter(sR), equalise=False)
```

The plain azimuth about the centre.

</div>

<div class="mx-form" markdown="1">

```python
r, rho = polarCoordinates(sR, h, regionCenter(sR), ref=xvector)
```

The reference direction for rho = 0.

</div>

## Description

The azimuth starts at the pole of the plotting convention seen from the centre; only where
the centre is that pole does the reference direction take over. A centre at a vertex or
on the boundary of the region spreads the part of the turn the region covers over the
whole turn.

## Input

| `sR` | sphericalRegion |
| `v` | vector3d, the directions |
| `center` | vector3d or (3,) array, the centre of the coordinates |

## Keywords

| keyword | default | description |
|---|---|---|
| `ref` | `None` | the direction rho = 0 points to where the centre is the pole; x by default |
| `equalise` | `True` | reparametrise the azimuth by the distance to the boundary |

## Output

| `r` | array, one at the centre and zero on the boundary |
| `rho` | array, the azimuth about the centre in [0, 2 pi) |

## See also

[regionCenter](regionCenter_py.html), [HSVDirectionKey](HSVDirectionKey_index_py.html), [sectorFolds](sectorFolds_py.html)

MATLAB's [sphericalRegion.polarCoordinates](sphericalRegion.polarCoordinates.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectorfold.py#L220">source</a></font>
{% endraw %}
