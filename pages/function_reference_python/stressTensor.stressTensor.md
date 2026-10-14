---
title: 'stressTensor.stressTensor'
sidebar: function_reference_sidebar
permalink: stressTensor.stressTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stressTensor.stressTensor.html
status: Reference
---
{% raw %}
a rank two symmetric stress tensor; stressTensor.uniaxial(v, sigma) the uniaxial tension along v

## Syntax

```python
stressTensor(M, *args, rank=None, doubleConvention=None, frame=None, density=None, unit=None, name=None, Kelvin=False, dtype=None)
```

```python
sigma = stressTensor(M)
sigma = stressTensor.uniaxial(vector3d.X)
```

## Used on

[IsotropicTheory](IsotropicTheory_py.html)

MATLAB's [stressTensor.stressTensor](stressTensor.stressTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1042">source</a></font>
{% endraw %}
