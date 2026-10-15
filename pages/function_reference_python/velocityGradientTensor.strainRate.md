---
title: 'velocityGradientTensor.strainRate'
sidebar: function_reference_sidebar
permalink: velocityGradientTensor.strainRate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: velocityGradientTensor.strainRate.html
status: Reference
---
{% raw %}
A method of [velocityGradientTensor](velocityGradientTensor_index_py.html).

extract the symmetric strain-rate tensor from a velocity gradient

## Syntax

<div class="mx-form" markdown="1">

```python
D = strainRate(L)
```

</div>

## Description

Return (L + L.transpose())/2 as a strainRateTensor in the same frame and array shape.
Its units are those of L, normally inverse time. Together with spin(L), it reconstructs L.

## See also

[spin](spin_py.html), [angularVelocityVector](velocityGradientTensor.angularVelocityVector_py.html), [velocityGradientTensor](velocityGradientTensor_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
velocityGradientTensor.strainRate(L)
```

</div>

MATLAB's [velocityGradientTensor.strainRate](velocityGradientTensor.strainRate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L415">source</a></font>
{% endraw %}
