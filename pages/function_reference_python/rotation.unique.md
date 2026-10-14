---
title: 'rotation.unique'
sidebar: function_reference_sidebar
permalink: rotation.unique_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.unique.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

the quaternions with those equal up to the tolerance in the coefficients removed; antipodal=True
takes q and -q as one; optionally the indices of the kept ones and the index of each into them

## Syntax

```python
rotation.unique(self, tol=0.001, antipodal=False, stable=False, return_index=False, return_inverse=False)
```

MATLAB's [rotation.unique](rotation.unique.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L315">source</a></font>
{% endraw %}
