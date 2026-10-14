---
title: 'crystalShape.tetr'
sidebar: function_reference_sidebar
permalink: crystalShape.tetr_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

construct a tetragonal prism from the (100) and (001) plane forms.

## Syntax

<div class="mx-form" markdown="1">

```python
cS = crystalShape.tetr(cs)
```

</div>

## Description

The frame supplies the point-group equivalents and cell dimensions, which determine
the prism faces and relative height. The vertices use crystalShape's initial display scale.

## Input

| `CS` | crystalFrame of the tetragonal lattice |

## See also

[crystalShape](crystalShape_index_py.html), [crystalShape.hex](crystalShape.hex_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
crystalShape.tetr(CS)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L515">source</a></font>
{% endraw %}
