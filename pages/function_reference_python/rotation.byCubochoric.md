---
title: 'rotation.byCubochoric'
sidebar: function_reference_sidebar
permalink: rotation.byCubochoric_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

construct rotations from equal-volume cubochoric coordinates.

## Syntax

<div class="mx-form" markdown="1">

```python
rot = rotation.byCubochoric(c)
```

</div>

## Description

Input may be vector3d or Cartesian triples in the cubochoric cube. Coordinates
are first mapped to the homochoric ball and then converted to rotations.

## See also

rotation.cubochoric, [rotation.byHomochoric](rotation.byHomochoric_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
rotation.byCubochoric(v)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L866">source</a></font>
{% endraw %}
