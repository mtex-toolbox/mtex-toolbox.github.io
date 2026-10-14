---
title: 'Miller.dspacing'
sidebar: function_reference_sidebar
permalink: Miller.dspacing_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Miller.dspacing.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

return the spacing of the lattice planes represented by each Miller normal.

## Syntax

<div class="mx-form" markdown="1">

```python
d = h.dspacing()
```

</div>

## Description

The spacing is 1/norm(h), in the same length units as the crystal cell. The vector
must carry a crystal frame. Scaling its Miller indices changes the spacing; normalising
the Cartesian vector therefore loses the plane spacing.

## See also

[Miller](Miller_py.html), [crystalFrame.basisDual](crystalFrame.basisDual_py.html), [vector3d.hkl](vector3d.hkl_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.dspacing(self)
```

</div>

MATLAB's [Miller.dspacing](Miller.dspacing.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L296">source</a></font>
{% endraw %}
