---
title: 'strainTensor.deviatoricStrain'
sidebar: function_reference_sidebar
permalink: strainTensor.deviatoricStrain_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: strainTensor.deviatoricStrain.html
status: Reference
---
{% raw %}
A method of [strainTensor](strainTensor_index_py.html).

remove the isotropic part of a rank-two stress or strain tensor

## Syntax

<div class="mx-form" markdown="1">

```python
s = deviatoric(sigma)
e = deviatoric(eps)
```

</div>

## Description

Subtract trace(T) / 3 times the identity from each tensor. The result has zero trace
and retains the input class, frame and array shape. The names deviatoricStress and
deviatoricStrain perform the same operation.

## See also

[meanStress](stressTensor.meanStress_py.html), [equivalentStress](stressTensor.equivalentStress_py.html), [equivalentStrain](velocityGradientTensor.equivalentStrain_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
strainTensor.deviatoricStrain(T)
```

</div>

MATLAB's [strainTensor.deviatoricStrain](strainTensor.deviatoricStrain.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L57">source</a></font>
{% endraw %}
