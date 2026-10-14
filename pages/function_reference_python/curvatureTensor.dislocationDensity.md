---
title: 'curvatureTensor.dislocationDensity'
sidebar: function_reference_sidebar
permalink: curvatureTensor.dislocationDensity_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: curvatureTensor.dislocationDensity.html
status: Reference
---
{% raw %}
A method of [curvatureTensor](curvatureTensor_index_py.html).

convert lattice curvature to the Nye dislocation density tensor

## Syntax

<div class="mx-form" markdown="1">

```python
alpha = dislocationDensity(kappa)
```

</div>

## Description

Use `alpha = kappa.transpose() - trace(kappa)*I`. In particular, each diagonal component
of alpha is minus the sum of the other two diagonal components of kappa. This can retain
a measurable alpha[2,2] even when a surface map cannot determine kappa[2,2].

Return dislocationDensityTensor in the input frame, preserving its unit and array shape.
The coefficients describe net dislocation content; fitting individual dislocation-system
densities is a separate step performed by fitDislocationSystems or calcGND.

## See also

[curvature](curvature_py.html), [curvatureTensor](curvatureTensor_index_py.html), [calcGND](calcGND_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
curvatureTensor.dislocationDensity(kappa)
```

</div>

## Used on

[GND](GND_py.html)

MATLAB's [curvatureTensor.dislocationDensity](curvatureTensor.dislocationDensity.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L471">source</a></font>
{% endraw %}
