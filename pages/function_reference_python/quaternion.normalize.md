---
title: 'quaternion.normalize'
sidebar: function_reference_sidebar
permalink: quaternion.normalize_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.normalize.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

divide each quaternion by its Euclidean coefficient norm.

## Syntax

<div class="mx-form" markdown="1">

```python
unit = q.normalize()
```

</div>

## Description

The result keeps the input class and shape. A zero quaternion produces NaN coefficients.
Normalisation changes the norm, without choosing between the signs q and -q.

## See also

[quaternion.norm](quaternion.norm_py.html), [rotation](rotation_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
quaternion.normalize(self)
```

</div>

MATLAB's [quaternion.normalize](quaternion.normalize.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L255">source</a></font>
{% endraw %}
