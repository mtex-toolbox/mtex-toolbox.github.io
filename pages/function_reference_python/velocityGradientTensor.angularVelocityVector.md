---
title: 'velocityGradientTensor.angularVelocityVector'
sidebar: function_reference_sidebar
permalink: velocityGradientTensor.angularVelocityVector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: velocityGradientTensor.angularVelocityVector.html
status: Reference
---
{% raw %}
A method of [velocityGradientTensor](velocityGradientTensor_index_py.html).

return the angular velocity represented by the antisymmetric part of a velocity gradient

## Syntax

<div class="mx-form" markdown="1">

```python
omega = angularVelocityVector(L)
```

</div>

## Description

For W = (L - L.transpose())/2, the vector is (W[2,1], W[0,2], W[1,0]).
The output is vector3d in the tensor frame, one vector per tensor, in radians per unit time
when L has inverse-time units. Its length is rotationRate(L).

## See also

[spin](spin_py.html), [rotationRate](velocityGradientTensor.rotationRate_py.html), [spinTensorOf](spinTensorOf_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
velocityGradientTensor.angularVelocityVector(L)
```

</div>

MATLAB's [velocityGradientTensor.angularVelocityVector](velocityGradientTensor.angularVelocityVector.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L442">source</a></font>
{% endraw %}
