---
title: 'deformationGradientTensor.GreenStrain'
sidebar: function_reference_sidebar
permalink: deformationGradientTensor.GreenStrain_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: deformationGradientTensor.GreenStrain.html
status: Reference
---
{% raw %}
A method of [deformationGradientTensor](deformationGradientTensor_index_py.html).

compute the Green–Lagrange finite strain of a deformation gradient

## Syntax

<div class="mx-form" markdown="1">

```python
eps = GreenStrain(F)
```

</div>

## Description

Return `(F.transpose() * F - I)/2` as a strainTensor in the frame of F. This measures strain
relative to the undeformed configuration and gives zero for a rigid rotation. Leading
array dimensions are retained.

## See also

[CauchyStrain](deformationGradientTensor.CauchyStrain_py.html), [deformationGradientTensor](deformationGradientTensor_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
deformationGradientTensor.GreenStrain(F)
```

</div>

MATLAB's [deformationGradientTensor.GreenStrain](deformationGradientTensor.GreenStrain.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L356">source</a></font>
{% endraw %}
