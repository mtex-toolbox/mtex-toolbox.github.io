---
title: 'orientation.cat'
sidebar: function_reference_sidebar
permalink: orientation.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.cat.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the list of the operands, MATLAB's [r1, r2]; joining rotations with an improper transform
gives an orthogonalTransform, orientations stay orientations between the same frames

## Syntax

```python
rot = cat(rot1, rot2)
```

Side by side:

```python
rot = cat(rot1, rot2, axis=1)
```

## Signature

```python
orientation.cat(*arrays, axis=0)
```

MATLAB's [orientation.cat](orientation.cat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L597">source</a></font>
{% endraw %}
