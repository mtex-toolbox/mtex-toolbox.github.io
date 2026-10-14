---
title: 'quaternion.mean'
sidebar: function_reference_sidebar
permalink: quaternion.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.mean.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

the mean, the principal eigenvector of the weighted moment matrix; NaN entries left out,
robust=True drops the outliers and averages again; return_inertia=True also gives the
principal moments of inertia, the eigenvalues of the moment matrix normalised by the total
weight in ascending order, and the principal axes of inertia as four quaternions

## Syntax

```python
quaternion.mean(self, weights=None, robust=False, return_inertia=False)
```

```python
m = mean(q)
m, lam, V = mean(q, return_inertia=True)
```

MATLAB's [quaternion.mean](quaternion.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L327">source</a></font>
{% endraw %}
