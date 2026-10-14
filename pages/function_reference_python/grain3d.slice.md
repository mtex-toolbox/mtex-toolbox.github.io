---
title: 'grain3d.slice'
sidebar: function_reference_sidebar
permalink: grain3d.slice_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d.slice.html
status: Reference
---
{% raw %}
A method of [grain3d](grain3d_index_py.html).

the 2D grains a plane cuts from the grains, as MATLAB's slice; prop Id3d names the grain
every section came from; the plane is a plane3d, or its normal with a point on it or its
distance from the origin

## Syntax

```python
grains2 = grains.slice(plane3d(vector3d.Z, vector3d(0, 0, 0.15)))
```

Normal and point:

```python
grains2 = grains.slice(vector3d(1, 1, 1), vector3d(0, 0, 0))
```

Normal and distance:

```python
grains2 = grains.slice(vector3d.Z, 0.15)
```

## Signature

```python
grain3d.slice(self, plane, P0=None)
```

MATLAB's [grain3d.slice](grain3d.slice.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3d.py#L438">source</a></font>
{% endraw %}
