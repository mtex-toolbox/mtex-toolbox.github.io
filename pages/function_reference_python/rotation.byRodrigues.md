---
title: 'rotation.byRodrigues'
sidebar: function_reference_sidebar
permalink: rotation.byRodrigues_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.byRodrigues.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

construct rotations from dimensionless Rodrigues vectors.

## Syntax

<div class="mx-form" markdown="1">

```python
rot = rotation.byRodrigues(r)
```

</div>

## Description

The vector direction is the rotation axis and its length is tan(omega/2).
Input may be vector3d or Cartesian triples with shape (..., 3).

## See also

rotation.Rodrigues, [rotation.byAxisAngle](rotation.byAxisAngle_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
rotation.byRodrigues(v)
```

</div>

MATLAB's [rotation.byRodrigues](rotation.byRodrigues.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L822">source</a></font>
{% endraw %}
