---
title: 'deformationGradientTensor.CauchyStrain'
sidebar: function_reference_sidebar
permalink: deformationGradientTensor.CauchyStrain_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: deformationGradientTensor.CauchyStrain.html
status: Reference
---
{% raw %}
A method of [deformationGradientTensor](deformationGradientTensor_index_py.html).

compute the small-strain approximation from a deformation gradient

## Syntax

<div class="mx-form" markdown="1">

```python
eps = CauchyStrain(F)
```

</div>

## Description

Return (F + F.transpose())/2 - I as a strainTensor in the frame of F. This linearised
strain is appropriate for small displacement gradients; finite rigid rotations can produce
nonzero values. Use GreenStrain for a finite-strain measure invariant under rigid rotation.

## See also

[GreenStrain](deformationGradientTensor.GreenStrain_py.html), [deformationGradientTensor](deformationGradientTensor_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
deformationGradientTensor.CauchyStrain(F)
```

</div>

MATLAB's [deformationGradientTensor.CauchyStrain](deformationGradientTensor.CauchyStrain.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L342">source</a></font>
{% endraw %}
