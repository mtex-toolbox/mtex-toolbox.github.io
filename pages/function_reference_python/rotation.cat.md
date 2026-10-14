---
title: 'rotation.cat'
sidebar: function_reference_sidebar
permalink: rotation.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.cat.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

the list of the operands, MATLAB's [r1, r2]; joining rotations with an improper transform
gives an orthogonalTransform, orientations stay orientations between the same frames

## Syntax

```python
rotation.cat(*arrays, axis=0)
```

```python
rot = cat(rot1, rot2)
rot = cat(rot1, rot2, axis=1)    # side by side
```

MATLAB's [rotation.cat](rotation.cat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L502">source</a></font>
{% endraw %}
