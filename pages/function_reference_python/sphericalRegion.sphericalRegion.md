---
title: 'sphericalRegion.sphericalRegion'
sidebar: function_reference_sidebar
permalink: sphericalRegion.sphericalRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion.sphericalRegion.html
status: Reference
---
{% raw %}
a region on the sphere bounded by small circles: all directions v with dot(v, N_i) >= alpha_i
for every normal N_i

## Syntax

The whole sphere:

```python
sR = sphericalRegion()
```

The intersection of the hemispheres about N:

```python
sR = sphericalRegion(N)
```

The intersection of the caps dot(v, N_i) >= alpha_i:

```python
sR = sphericalRegion(N, alpha)
```

A region of axes, v or -v inside:

```python
sR = sphericalRegion(N, antipodal=True)
```

The hemisphere about z, 'lower' about -z:

```python
sR = sphericalRegion('upper')
```

A region given in a reference frame:

```python
sR = sphericalRegion(N, frame=cs)
```

The polygon through the vertices:

```python
sR = sphericalRegion.byVertices(V)
```

An alpha of 0 makes the boundary a great circle, a positive alpha a cap smaller than a
hemisphere. The fundamental sectors of the point groups are spherical regions:
fundamentalSector, dirichletSector. sR.checkInside(v) tests directions, sR.volume() gives the
fraction of the sphere the region covers.

## Input

| | |
|---|---|
| `N` | vector3d, the normals of the bounding circles, or 'upper' or 'lower' |
| `alpha` | array, the cosines of the bounding circles, one for all or one per normal; by default 0 |

## Output

| | |
|---|---|
| `sR` | sphericalRegion |

## Keywords

| | default | |
|---|---|---|
| `frame` | `None` | the referenceFrame the region is given in |
| `antipodal` | `False` | a region of axes: a direction is inside when v or -v is |

## See also

[fundamentalSector](fundamentalSector_py.html), [dirichletSector](dirichletSector_py.html), [sphericalRegion.checkInside](sphericalRegion.checkInside_py.html), [VectorGrids](VectorGrids_py.html), [FundamentalSector](FundamentalSector_py.html)

MATLAB's [sphericalRegion.sphericalRegion](sphericalRegion.sphericalRegion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L27">source</a></font>
{% endraw %}
