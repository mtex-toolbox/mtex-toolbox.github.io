---
title: 'velocityGradientTensor.axisRatios'
sidebar: function_reference_sidebar
permalink: velocityGradientTensor.axisRatios_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: velocityGradientTensor.axisRatios.html
status: Reference
---
{% raw %}
return signed differences between the principal values of a rank-two tensor

## Syntax

<div class="mx-form" markdown="1">

```python
d12, d23, d31 = axisRatios(T)
```

</div>

## Description

With principal values e1 >= e2 >= e3, the outputs are e1-e2, e2-e3 and e3-e1.
Each output has the tensor-array shape and the same units as the coefficients. Despite
the name, these are differences rather than quotients.

## See also

[tensor.eig](tensor.eig_py.html), [maxStrain](maxStrain_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
axisRatios(T)
```

</div>

MATLAB's [velocityGradientTensor.axisRatios](velocityGradientTensor.axisRatios.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L123">source</a></font>
{% endraw %}
