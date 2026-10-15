---
title: 'crystalShape.subSet'
sidebar: function_reference_sidebar
permalink: crystalShape.subSet_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

select faces by outward normal in the original crystal coordinates.

## Syntax

<div class="mx-form" markdown="1">

```python
basalFace = cS[Miller(0, 0, 1, cs)]
prismFaces = cS[Miller(1, 0, -1, 0, cs).symmetrise()]
```

</div>

## Description

A face is retained when its outward normal differs from one of the supplied directions
by less than one degree. Symmetry equivalents are not generated automatically here;
call symmetrise to select a whole crystal form. Vertices are shared with the input shape.
An error is raised when no faces match. The result can be an open set of faces, so its
volume need not describe a closed solid.

## Input

| `NSelect` | vector3d or Miller normals in the crystal coordinates used to construct cS |

## See also

[crystalShape](crystalShape_index_py.html), [vector3d.symmetrise](vector3d.symmetrise_py.html), [crystalShape.innerFace](crystalShape.innerFace_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
crystalShape.subSet(self, NSelect)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L246">source</a></font>
{% endraw %}
