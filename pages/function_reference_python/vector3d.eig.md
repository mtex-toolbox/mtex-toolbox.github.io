---
title: 'vector3d.eig'
sidebar: function_reference_sidebar
permalink: vector3d.eig_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.eig.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

return the eigenvalues and principal axes of the vector moment matrix.

## Syntax

<div class="mx-form" markdown="1">

```python
values, axes = v.eig()
```

</div>

## Description

Flatten the list and form `sum(v_i*v_i.T)`, without normalising vector lengths or
reducing crystal symmetry. The three eigenvalues are in ascending order; axes[j]
is the corresponding unit eigenvector in the input frame. The first axis is the
least represented direction, and the last is the most represented.

## See also

[vector3d.perp](vector3d.perp_py.html), [vector3d.mean](vector3d.mean_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.eig(self)
```

</div>

MATLAB's [vector3d.eig](vector3d.eig.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L990">source</a></font>
{% endraw %}
