---
title: 'crystalFrame.basisDual'
sidebar: function_reference_sidebar
permalink: crystalFrame.basisDual_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: crystalFrame.basisDual.html
status: Reference
---
{% raw %}
A method of [crystalFrame](crystalFrame_index_py.html).

return the reciprocal lattice basis `a*, b*, c*` as Cartesian vectors.

## Syntax

<div class="mx-form" markdown="1">

```python
reciprocal = cs.basisDual()
```

</div>

## Description

The three rows are dual to the direct basis: `dot(a_i, a_j*)` equals the identity matrix.
Units are reciprocal to the cell-length units. No factor of `2*pi` is included.

## See also

[crystalFrame.axes](crystalFrame.axes_py.html), [crystalFrame.axesDual](crystalSymmetry.axesDual_py.html), [vector3d.dspacing](Miller.dspacing_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
crystalFrame.basisDual(self)
```

</div>

MATLAB's [crystalFrame.basisDual](crystalFrame.basisDual.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames/__init__.py#L1033">source</a></font>
{% endraw %}
