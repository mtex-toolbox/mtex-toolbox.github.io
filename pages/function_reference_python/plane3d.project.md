---
title: 'plane3d.project'
sidebar: function_reference_sidebar
permalink: plane3d.project_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plane3d.project.html
status: Reference
---
{% raw %}
A method of [plane3d](plane3d_index_py.html).

orthogonally project points onto the planes

## Syntax

<div class="mx-form" markdown="1">

```python
projected = plane.project(v)
```

</div>

## Description

Subtract the signed point-to-plane distance in the unit normal direction. Points and planes
pair according to NumPy broadcasting. The result is vector3d positions in the input frame;
projected points satisfy dot(plane.N, projected) = plane.d.

## Input

| `v` | vector3d positions, in the same coordinate system as the planes |

## Output

| `projected` | vector3d positions on the planes |

## See also

[plane3d.dist](plane3d.dist_py.html), [plane3d.intersect](plane3d.intersect_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
plane3d.project(self, v)
```

</div>

MATLAB's [plane3d.project](plane3d.project.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plane.py#L138">source</a></font>
{% endraw %}
