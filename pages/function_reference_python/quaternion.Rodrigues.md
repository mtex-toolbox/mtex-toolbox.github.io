---
title: 'quaternion.Rodrigues'
sidebar: function_reference_sidebar
permalink: quaternion.Rodrigues_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.Rodrigues.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

express each rotation as an axis scaled by tan(omega/2).

## Syntax

<div class="mx-form" markdown="1">

```python
r = rot.Rodrigues()
```

</div>

## Description

The result is a vector3d of dimensionless Rodrigues coordinates. The identity maps
to the origin; half-turns lie at infinity, so this representation is singular at pi.

## See also

[rotation.byRodrigues](rotation.byRodrigues_py.html), [quaternion.homochoric](quaternion.homochoric_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
quaternion.Rodrigues(self)
```

</div>

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [RotationDefinition](RotationDefinition_py.html), [RotationRepresentations](RotationRepresentations_py.html)

MATLAB's [quaternion.Rodrigues](quaternion.Rodrigues.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L404">source</a></font>
{% endraw %}
