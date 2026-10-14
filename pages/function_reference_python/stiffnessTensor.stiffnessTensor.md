---
title: 'stiffnessTensor.stiffnessTensor'
sidebar: function_reference_sidebar
permalink: stiffnessTensor.stiffnessTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor.stiffnessTensor.html
status: Reference
---
{% raw %}
the elastic stiffness C, sigma = C : eps; a 6 x 6 Voigt matrix in GPa or the full array

## Syntax

<div class="mx-form" markdown="1">

```python
stiffnessTensor(M, *args, **kwargs)
```

</div>

## Input

| `M` | 6-by-6 Voigt matrix, full (..., 3, 3, 3, 3) coefficients, or another tensor |
| `args` | optional reference frame |
| `kwargs` | tensor constructor options, including density, frame, unit and Kelvin; unit defaults to 'GPa' |

## Used on

[DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [CPOSeismicProperties](CPOSeismicProperties_py.html), [IsotropicTheory](IsotropicTheory_py.html), [TensorAverage](TensorAverage_py.html), [TensorDefinition](TensorDefinition_py.html)

MATLAB's [stiffnessTensor.stiffnessTensor](stiffnessTensor.stiffnessTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1280">source</a></font>
{% endraw %}
