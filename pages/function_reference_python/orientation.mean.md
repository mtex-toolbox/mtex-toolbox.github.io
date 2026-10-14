---
title: 'orientation.mean'
sidebar: function_reference_sidebar
permalink: orientation.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.mean.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the mean orientation, every element moved to the equivalent closest to the running mean
before the quaternion mean is taken; weighted, or robust against outliers.
return_projected=True also gives the orientations moved to the equivalents closest to the
mean, return_inertia=True the principal moments and axes of inertia of quaternion.mean,
in MATLAB's order

## Syntax

```python
orientation.mean(self, weights=None, robust=False, iterations=3, return_projected=False, return_inertia=False)
```

```python
m = mean(ori)
m, oriProjected = mean(ori, return_projected=True)
m, oriProjected, lam, V = mean(ori, return_projected=True, return_inertia=True)
```

MATLAB's [orientation.mean](orientation.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L365">source</a></font>
{% endraw %}
