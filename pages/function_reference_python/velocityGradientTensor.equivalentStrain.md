---
title: 'velocityGradientTensor.equivalentStrain'
sidebar: function_reference_sidebar
permalink: velocityGradientTensor.equivalentStrain_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: velocityGradientTensor.equivalentStrain.html
status: Reference
---
{% raw %}
compute the von Mises equivalent strain

## Syntax

<div class="mx-form" markdown="1">

```python
value = equivalentStrain(eps)
```

</div>

## Description

For deviatoric strain `e = eps - trace(eps)*I/3`, return `sqrt(2/3 * sum(e*e))`,
summing all Cartesian coefficients. Return one nonnegative scalar per strain tensor.
The tensor frame and the units used to express strain do not change this calculation.

## See also

[deviatoricStrain](strainTensor.deviatoricStrain_py.html), [equivalentStress](stressTensor.equivalentStress_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
equivalentStrain(eps)
```

</div>

MATLAB's [velocityGradientTensor.equivalentStrain](velocityGradientTensor.equivalentStrain.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L91">source</a></font>
{% endraw %}
