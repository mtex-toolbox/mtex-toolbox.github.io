---
title: 'crystalShape.cube'
sidebar: function_reference_sidebar
permalink: crystalShape.cube_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

construct a crystal bounded by the symmetry equivalents of the (100) plane.

## Syntax

<div class="mx-form" markdown="1">

```python
cs = crystalFrame('m-3m')
cS = crystalShape.cube(cs)
```

</div>

## Description

A cubic crystal frame generates the six faces of a cube. Other symmetries produce the
forms implied by their (100) orbit and must still enclose a finite volume. The shape
uses the common initial display scale of crystalShape.

## Input

| `CS` | crystalFrame supplying the lattice and point group |

## See also

[crystalShape](crystalShape_index_py.html), [Miller](Miller_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
crystalShape.cube(CS)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L497">source</a></font>
{% endraw %}
