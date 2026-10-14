---
title: 'The class velocityGradientTensor'
sidebar: function_reference_sidebar
permalink: velocityGradientTensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: velocityGradientTensor_index.html
status: Reference
---
{% raw %}
a velocity gradient tensor L, the rank two tensor of the spatial derivatives of the velocity; its
symmetric part the strain rate, its skew part the spin

```python
L = velocityGradientTensor(M)
L = velocityGradientTensor.uniaxial(d, e)
L = velocityGradientTensor.simpleShear(d, n, e)
```

## Members

| | |
|---|---|
| [angularVelocityVector](velocityGradientTensor.angularVelocityVector_py.html) | the angular velocity of a velocity gradient, the axial vector of its antisymmetric part |
| [axisRatios](velocityGradientTensor.axisRatios_py.html) | the differences of the principal values, largest first |
| [calcTaylor](velocityGradientTensor.calcTaylor_py.html) | the Taylor factor, the shears of the slip systems and the plastic spin of a strain |
| [equivalentStrain](velocityGradientTensor.equivalentStrain_py.html) | the von Mises equivalent strain, sqrt(2/3 e:e) of the deviatoric strain e |
| [expm](velocityGradientTensor.expm_py.html) | the matrix exponential of a rank two tensor, or of a rank four one through its Kelvin matrix, the class kept |
| [polar](velocityGradientTensor.polar_py.html) | the polar decomposition T = R SR = SL R of a rank two tensor, R orthogonal, SL and SR symmetric |
| [rotationRate](velocityGradientTensor.rotationRate_py.html) | the rotation rate of a velocity gradient, the length of its angular velocity vector |
| [simpleShear](velocityGradientTensor.simpleShear_py.html) | the velocity gradient of a simple shear along d on the plane n with the rate e |
| [spin](velocityGradientTensor.spin_py.html) | the spin tensor of a velocity gradient, its antisymmetric part |
| [strainRate](velocityGradientTensor.strainRate_py.html) | the symmetric part of a velocity gradient is the strain rate, the antisymmetric one the spin, whose axial vector is the angular velocity |
| [uniaxial](velocityGradientTensor.uniaxial_py.html) | the velocity gradient of a uniaxial flow along d with the ratio q of the transverse rates |
| [velocityGradientTensor](velocityGradientTensor.velocityGradientTensor_py.html) | a velocity gradient tensor L, the rank two tensor of the spatial derivatives of the velocity |
| [vorticity](velocityGradientTensor.vorticity_py.html) | the vorticity of a velocity gradient, its rotation rate over the magnitude of its strain rate |

MATLAB's [velocityGradientTensor_index](velocityGradientTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1113">source</a></font>
{% endraw %}
