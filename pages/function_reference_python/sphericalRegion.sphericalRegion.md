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

<div class="mx-form" markdown="1">

```python
sR = sphericalRegion()
```

The whole sphere.

</div>

<div class="mx-form" markdown="1">

```python
sR = sphericalRegion(N)
```

The intersection of the hemispheres about N.

</div>

<div class="mx-form" markdown="1">

```python
sR = sphericalRegion(N, alpha)
```

The intersection of the caps dot(v, N_i) >= alpha_i.

</div>

<div class="mx-form" markdown="1">

```python
sR = sphericalRegion(N, antipodal=True)
```

A region of axes, v or -v inside.

</div>

<div class="mx-form" markdown="1">

```python
sR = sphericalRegion('upper')
```

The hemisphere about z, 'lower' about -z.

</div>

<div class="mx-form" markdown="1">

```python
sR = sphericalRegion(N, frame=cs)
```

A region given in a reference frame.

</div>

<div class="mx-form" markdown="1">

```python
sR = sphericalRegion.byVertices(V)
```

The polygon through the vertices.

</div>

## Description

An alpha of 0 makes the boundary a great circle, a positive alpha a cap smaller than a
hemisphere. The fundamental sectors of the point groups are spherical regions:
fundamentalSector, dirichletSector. sR.checkInside(v) tests directions, sR.volume() gives the
fraction of the sphere the region covers.

## Input

| `N` | vector3d, the normals of the bounding circles, or 'upper' or 'lower' |
| `alpha` | array, the cosines of the bounding circles, one for all or one per normal; by default 0 |

## Keywords

| keyword | default | description |
|---|---|---|
| `frame` | `None` | the referenceFrame the region is given in |
| `antipodal` | `False` | a region of axes: a direction is inside when v or -v is |

## Output

| `sR` | sphericalRegion |

## See also

[fundamentalSector](fundamentalSector_py.html), [dirichletSector](dirichletSector_py.html), [sphericalRegion.checkInside](sphericalRegion.checkInside_py.html), [VectorGrids](VectorGrids_py.html), [FundamentalSector](FundamentalSector_py.html)

MATLAB's [sphericalRegion.sphericalRegion](sphericalRegion.sphericalRegion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L27">source</a></font>
{% endraw %}
