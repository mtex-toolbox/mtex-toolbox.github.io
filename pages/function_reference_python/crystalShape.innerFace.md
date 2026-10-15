---
title: 'crystalShape.innerFace'
sidebar: function_reference_sidebar
permalink: crystalShape.innerFace_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalShape.innerFace.html
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

cut a single crystal shape by a plane through the mean of its vertices.

## Syntax

<div class="mx-form" markdown="1">

```python
section = cS.innerFace(normal)
```

</div>

## Description

The plane is perpendicular to normal. Return its intersection with the shape as an
ordered polygon of vector3d vertices in the current frame. This is an internal section,
which need not coincide with an external crystal face. For a list of shapes, select one
with cS[k] before taking a section.

## Input

| `n` | nonzero vector3d normal or Cartesian triple |

## See also

[crystalShape.subSet](crystalShape.subSet_py.html), [crystalShape.exitDistance](crystalShape.exitDistance_py.html), [crystalShape.plotInnerFace](crystalShape.plotInnerFace_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
crystalShape.innerFace(self, n)
```

</div>

MATLAB's [crystalShape.innerFace](crystalShape.innerFace.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L448">source</a></font>
{% endraw %}
