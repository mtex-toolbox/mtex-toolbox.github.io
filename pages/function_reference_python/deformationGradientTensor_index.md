---
title: 'The class deformationGradientTensor'
sidebar: function_reference_sidebar
permalink: deformationGradientTensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: deformationGradientTensor_index.html
status: Reference
---
{% raw %}
a deformation gradient tensor F, the rank two tensor carrying a line segment dX of the undeformed
body into dx = F dX of the deformed one

```python
F = deformationGradientTensor(M)
F = deformationGradientTensor.uniaxial(d, rate)
```

## Members

| | |
|---|---|
| [CauchyStrain](deformationGradientTensor.CauchyStrain_py.html) | the Cauchy (small) strain of a deformation gradient, its symmetric part less the identity |
| [deformationGradientTensor](deformationGradientTensor.deformationGradientTensor_py.html) | a deformation gradient tensor F, the rank two tensor carrying a line segment dX of the undeformed body into dx = F dX of the deformed one |
| [GreenStrain](deformationGradientTensor.GreenStrain_py.html) | the Green-Lagrange strain of a deformation gradient, (F^T F - I) / 2 |
| [logm](deformationGradientTensor.logm_py.html) | the matrix logarithm of a rank two tensor, or of a rank four one through its Kelvin matrix, the class kept |
| [pureShear](deformationGradientTensor.pureShear_py.html) | the deformation gradient of a pure shear, stretched by lam along ext and shortened along comp |
| [simpleShear](deformationGradientTensor.simpleShear_py.html) | the deformation gradient of a simple shear along d on the plane n by the angle gamma |
| [uniaxial](deformationGradientTensor.uniaxial_py.html) | the deformation gradient of a uniaxial stretch by rate along d, the volume kept |

MATLAB's [deformationGradientTensor_index](deformationGradientTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1096">source</a></font>
{% endraw %}
