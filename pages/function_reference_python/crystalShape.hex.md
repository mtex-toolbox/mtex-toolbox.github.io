---
title: 'crystalShape.hex'
sidebar: function_reference_sidebar
permalink: crystalShape.hex_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

construct a hexagonal prism from prismatic and basal plane forms.

## Syntax

<div class="mx-form" markdown="1">

```python
cs = crystalFrame('6/mmm', [3, 3, 4.7])
cS = crystalShape.hex(cs)
```

</div>

## Description

The supplied frame expands the (100) and (002) Miller normals into their equivalent
planes. With hexagonal symmetry these give six prism faces and two basal faces.
The cell dimensions determine the relative height before the common display scaling.

## Input

| `CS` | crystalFrame of the hexagonal lattice |

## See also

[crystalShape](crystalShape_index_py.html), [crystalShape.tetr](crystalShape.tetr_py.html), [CrystalShapes](CrystalShapes_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
crystalShape.hex(CS)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L498">source</a></font>
{% endraw %}
