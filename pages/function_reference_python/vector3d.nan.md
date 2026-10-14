---
title: 'vector3d.nan'
sidebar: function_reference_sidebar
permalink: vector3d.nan_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.nan.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

construct vectors with missing Cartesian coordinates.

## Syntax

<div class="mx-form" markdown="1">

```python
v = vector3d.nan(10)
v = vector3d.nan(2, 3)
```

</div>

## Description

Every coordinate is NaN. Sizes may be supplied as separate integers or one tuple;
without a size, return one scalar vector. Use [`vector3d.isnan`](vector3d.isnan_py.html) to identify missing vectors.

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.nan(*shape)
```

</div>

MATLAB's [vector3d.nan](vector3d.nan.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L560">source</a></font>
{% endraw %}
