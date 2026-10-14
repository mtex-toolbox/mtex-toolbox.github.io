---
title: 'stressTensor.equivalentStress'
sidebar: function_reference_sidebar
permalink: stressTensor.equivalentStress_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stressTensor.equivalentStress.html
status: Reference
---
{% raw %}
A method of [stressTensor](stressTensor_index_py.html).

compute the von Mises equivalent stress

## Syntax

<div class="mx-form" markdown="1">

```python
value = equivalentStress(sigma)
```

</div>

## Description

For deviatoric stress `s = sigma - trace(sigma)*I/3`, return `sqrt(3/2 * sum(s*s))`,
summing all Cartesian coefficients. The result is nonnegative, with one value per tensor
in the stress units. Hydrostatic stress gives zero; uniaxial stress gives its magnitude.

## See also

[deviatoricStress](strainTensor.deviatoricStrain_py.html), [meanStress](stressTensor.meanStress_py.html), [equivalentStrain](velocityGradientTensor.equivalentStrain_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
stressTensor.equivalentStress(sigma)
```

</div>

MATLAB's [stressTensor.equivalentStress](stressTensor.equivalentStress.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L76">source</a></font>
{% endraw %}
