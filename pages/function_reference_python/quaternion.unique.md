---
title: 'quaternion.unique'
sidebar: function_reference_sidebar
permalink: quaternion.unique_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.unique.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

the quaternions with those equal up to the tolerance in the coefficients removed; antipodal=True
takes q and -q as one; optionally the indices of the kept ones and the index of each into them

## Syntax

```python
quaternion.unique(self, tol=0.001, antipodal=False, stable=False, return_index=False, return_inverse=False)
```

MATLAB's [quaternion.unique](quaternion.unique.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L315">source</a></font>
{% endraw %}
