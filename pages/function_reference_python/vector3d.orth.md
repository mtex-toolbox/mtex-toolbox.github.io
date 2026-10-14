---
title: 'vector3d.orth'
sidebar: function_reference_sidebar
permalink: vector3d.orth_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.orth.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

choose a unit vector perpendicular to each input vector.

## Syntax

<div class="mx-form" markdown="1">

```python
normal = v.orth()
```

</div>

## Description

The choice is deterministic but arbitrary: it specifies no preferred direction in
the perpendicular plane. Each result keeps the input frame. Use [`vector3d.perp`](vector3d.perp_py.html)
to fit one axis perpendicular to a collection of directions.

## See also

[vector3d.cross](vector3d.cross_py.html), [vector3d.orthProj](vector3d.orthProj_py.html), [vector3d.perp](vector3d.perp_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.orth(self)
```

</div>

MATLAB's [vector3d.orth](vector3d.orth.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L932">source</a></font>
{% endraw %}
