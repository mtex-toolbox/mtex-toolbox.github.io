---
title: 'deformationGradientTensor.deformationGradientTensor'
sidebar: function_reference_sidebar
permalink: deformationGradientTensor.deformationGradientTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: deformationGradientTensor.deformationGradientTensor.html
status: Reference
---
{% raw %}
a deformation gradient tensor F, the rank two tensor carrying a line segment dX of the undeformed
body into dx = F dX of the deformed one

## Syntax

```python
deformationGradientTensor(M, *args, rank=None, doubleConvention=None, frame=None, density=None, unit=None, name=None, Kelvin=False, dtype=None)
```

```python
F = deformationGradientTensor(M)
F = deformationGradientTensor.uniaxial(d, rate)
```

MATLAB's [deformationGradientTensor.deformationGradientTensor](deformationGradientTensor.deformationGradientTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1096">source</a></font>
{% endraw %}
