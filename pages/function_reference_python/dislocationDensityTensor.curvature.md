---
title: 'dislocationDensityTensor.curvature'
sidebar: function_reference_sidebar
permalink: dislocationDensityTensor.curvature_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: dislocationDensityTensor.curvature.html
status: Reference
---
{% raw %}
A method of [dislocationDensityTensor](dislocationDensityTensor_index_py.html).

recover lattice curvature from a Nye dislocation density tensor

## Syntax

<div class="mx-form" markdown="1">

```python
kappa = curvature(alpha)
```

</div>

## Description

Use `kappa = alpha.transpose() - trace(alpha)*I/2`, the inverse of dislocationDensity.
The result is curvatureTensor in the same frame, with the input unit and array shape.
Missing coefficients propagate through the relation.

## See also

[dislocationDensity](curvatureTensor.dislocationDensity_py.html), [curvatureTensor](curvatureTensor_index_py.html), [calcGND](calcGND_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
dislocationDensityTensor.curvature(alpha)
```

</div>

MATLAB's [dislocationDensityTensor.curvature](dislocationDensityTensor.curvature.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L493">source</a></font>
{% endraw %}
