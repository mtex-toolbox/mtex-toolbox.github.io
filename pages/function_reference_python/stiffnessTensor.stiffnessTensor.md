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

## Example

Construct an illustrative cubic stiffness tensor in GPa, rotate it into specimen
coordinates, and compare Young's modulus along the same physical direction before and after rotation.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import (crystalFrame, stiffnessTensor, orientation, Miller, degree,
                  plot, mtexColorbar)

cs = crystalFrame('m-3m')
C = stiffnessTensor([[200, 120, 120, 0, 0, 0],
                     [120, 200, 120, 0, 0, 0],
                     [120, 120, 200, 0, 0, 0],
                     [0, 0, 0, 80, 0, 0],
                     [0, 0, 0, 0, 80, 0],
                     [0, 0, 0, 0, 0, 80]], cs, unit='GPa')
direction = Miller(1, 0, 0, cs, 'uvw')
ori = orientation.byEuler(30*degree, 40*degree, 20*degree, cs)
rotated = ori * C
print('Crystal direction modulus (GPa):', round(float(C.YoungsModulus(direction)), 3))
print('Rotated direction modulus (GPa):', round(float(rotated.YoungsModulus(ori*direction)), 3))
plot(C.YoungsModulus(), resolution=5*degree)
mtexColorbar(title='GPa')
plt.show()
```

The two numerical values agree because tensor and direction were rotated together.
The plot shows the directional variation for these model coefficients, not measured material data.

```text
Crystal direction modulus (GPa): 110.0
Rotated direction modulus (GPa): 110.0
```

![Example output for stiffnessTensor.stiffnessTensor](figures/python_reference/stiffnessTensor.stiffnessTensor-01.png)


## Used on

[DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [CPOSeismicProperties](CPOSeismicProperties_py.html), [IsotropicTheory](IsotropicTheory_py.html), [TensorAverage](TensorAverage_py.html), [TensorDefinition](TensorDefinition_py.html)

MATLAB's [stiffnessTensor.stiffnessTensor](stiffnessTensor.stiffnessTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1280">source</a></font>
{% endraw %}
