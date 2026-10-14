---
title: 'stiffnessTensor.shearModulus'
sidebar: function_reference_sidebar
permalink: stiffnessTensor.shearModulus_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor.shearModulus.html
status: Reference
---
{% raw %}
A method of [stiffnessTensor](stiffnessTensor_index_py.html).

the shear modulus of the plane h and the direction u, 1 / (4 S_ijkl h_i u_j h_k u_l);
with the plane alone the function of the direction in it; without both the isotropic
bound, shearModulus(C, 'Reuss'), 'Hill' or 'all' the others

## Syntax

```python
stiffnessTensor.shearModulus(T, h=None, u=None, *args)
```

MATLAB's [stiffnessTensor.shearModulus](stiffnessTensor.shearModulus.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L258">source</a></font>
{% endraw %}
