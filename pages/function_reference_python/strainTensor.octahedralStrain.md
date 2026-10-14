---
title: 'strainTensor.octahedralStrain'
sidebar: function_reference_sidebar
permalink: strainTensor.octahedralStrain_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: strainTensor.octahedralStrain.html
status: Reference
---
{% raw %}
A method of [strainTensor](strainTensor_index_py.html).

compute octahedral shear and normal strain from Green–Lagrange strain

## Syntax

<div class="mx-form" markdown="1">

```python
shear, normal = octahedralStrain(eps)
```

</div>

## Description

Convert principal Green–Lagrange strains E_i to engineering stretches `q_i = sqrt(1+2*E_i)-1`.
The normal strain is mean(q_i); the shear strain is 2/3 times the square root of the sum
of squared pairwise differences. Values below E_i = -1/2 have no real stretch and give NaN.
Return one shear value and one normal value per tensor.

## See also

[GreenStrain](deformationGradientTensor.GreenStrain_py.html), [equivalentStrain](velocityGradientTensor.equivalentStrain_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
strainTensor.octahedralStrain(eps)
```

</div>

MATLAB's [strainTensor.octahedralStrain](strainTensor.octahedralStrain.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L106">source</a></font>
{% endraw %}
