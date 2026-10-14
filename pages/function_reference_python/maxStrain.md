---
title: 'maxStrain'
sidebar: function_reference_sidebar
permalink: maxStrain_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return the largest absolute principal strain of each tensor

## Syntax

<div class="mx-form" markdown="1">

```python
magnitude = maxStrain(eps)
```

</div>

## Description

The largest magnitude among the three eigenvalues measures the strongest extension or
contraction. This is the strain scale used by the Taylor-factor calculation. The result
has one value per tensor; tensor.norm instead uses all Cartesian coefficients.

## See also

[equivalentStrain](velocityGradientTensor.equivalentStrain_py.html), [calcTaylor](velocityGradientTensor.calcTaylor_py.html), [tensor.eigvals](tensor.eigvals_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
maxStrain(eps)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L138">source</a></font>
{% endraw %}
