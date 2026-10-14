---
title: 'velocityGradientTensor.velocityGradientTensor'
sidebar: function_reference_sidebar
permalink: velocityGradientTensor.velocityGradientTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: velocityGradientTensor.velocityGradientTensor.html
status: Reference
---
{% raw %}
a velocity gradient tensor L, the rank two tensor of the spatial derivatives of the velocity; its
symmetric part the strain rate, its skew part the spin

## Syntax

```python
velocityGradientTensor(M, *args, rank=None, doubleConvention=None, frame=None, density=None, unit=None, name=None, Kelvin=False, dtype=None)
```

```python
L = velocityGradientTensor(M)
L = velocityGradientTensor.uniaxial(d, e)
L = velocityGradientTensor.simpleShear(d, n, e)
```

MATLAB's [velocityGradientTensor.velocityGradientTensor](velocityGradientTensor.velocityGradientTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1113">source</a></font>
{% endraw %}
