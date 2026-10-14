---
title: 'rotation.nan'
sidebar: function_reference_sidebar
permalink: rotation.nan_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.nan.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

construct quaternions whose four coefficients are NaN.

## Syntax

<div class="mx-form" markdown="1">

```python
q = quaternion.nan(10)
rot = rotation.nan(2, 3)
```

</div>

## Description

Sizes may be separate integers or one tuple; no size gives one scalar element.
The class on which the method is called determines the result type. Missing rotations
can be detected with isnan and are omitted by rotation mean calculations.

## Signature

<div class="mx-form" markdown="1">

```python
rotation.nan(*shape)
```

</div>

MATLAB's [rotation.nan](rotation.nan.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L90">source</a></font>
{% endraw %}
