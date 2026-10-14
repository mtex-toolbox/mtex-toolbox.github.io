---
title: 'EBSD3.slice'
sidebar: function_reference_sidebar
permalink: EBSD3.slice_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.slice.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

the section through a plane: the volume sampled on a square grid of the voxel spacing in
the plane, spanned by the direction of the box nearest to the plane and the one across; the
plane is a plane3d, or its normal with a point on it or its distance from the origin

## Syntax

```python
ebsd = ebsd3.slice(plane3d(vector3d.Z, vector3d(0, 0, 0.15)))
```

Normal and point:

```python
ebsd = ebsd3.slice(vector3d(1, 1, 1), vector3d(0, 0, 0))
```

Normal and distance:

```python
ebsd = ebsd3.slice(vector3d.Z, 0.15)
```

## Signature

```python
EBSD3.slice(self, plane, P0=None)
```

MATLAB's [EBSD3.slice](EBSD3.slice.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/ebsd3.py#L233">source</a></font>
{% endraw %}
