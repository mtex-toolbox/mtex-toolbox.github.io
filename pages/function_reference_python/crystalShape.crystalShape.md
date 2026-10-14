---
title: 'crystalShape.crystalShape'
sidebar: function_reference_sidebar
permalink: crystalShape.crystalShape_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalShape.crystalShape.html
status: Reference
---
{% raw %}
a crystal shape, the polyhedron bounded by the lattice planes of the face normals N

## Syntax

<div class="mx-form" markdown="1">

```python
cS = crystalShape(N)
```

Faces at the reciprocal length of their normal.

</div>

<div class="mx-form" markdown="1">

```python
cS = crystalShape(N, habitus, extension)
```

The distances from the indices alone.

</div>

<div class="mx-form" markdown="1">

```python
cS = crystalShape.hex(cs)
```

A hexagonal prism, crystalShape.cube(cs) a cube.

</div>

<div class="mx-form" markdown="1">

```python
cS = crystalShape.quartz(simple=True)
```

From the catalogue, in its own crystal frame.

</div>

## Signature

<div class="mx-form" markdown="1">

```python
crystalShape(N, habitus=0, extension=(1, 1, 1))
```

</div>

## Used on

[CrystalShapeSmorf](CrystalShapeSmorf_py.html), [CrystalShapes](CrystalShapes_py.html)

MATLAB's [crystalShape.crystalShape](crystalShape.crystalShape.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L88">source</a></font>
{% endraw %}
