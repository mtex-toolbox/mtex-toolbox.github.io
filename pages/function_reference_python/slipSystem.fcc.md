---
title: 'slipSystem.fcc'
sidebar: function_reference_sidebar
permalink: slipSystem.fcc_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the slip system <01-1>{111} of a face-centred cubic crystal

## Syntax

<div class="mx-form" markdown="1">

```python
sS = slipSystem.fcc(cs)
```

With the critical resolved shear stress 1.

</div>

<div class="mx-form" markdown="1">

```python
sS = slipSystem.fcc(cs, CRSS=2)
```

With another.

</div>

## Description

One system of the family; symmetrise gives every equivalent one.

## Input

| `CS` | crystalFrame of a cubic crystal |

## Keywords

| keyword | default | description |
|---|---|---|
| `CRSS` | `1` | the critical resolved shear stress |

## Output

| `sS` | slipSystem |

## Example

Construct an FCC slip family and compare its Schmid factors under crystal-axis tension.
In the drawing, the blue plane and arrow are one slip system and the red arrow is the loading direction.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import crystalFrame, slipSystem, Miller, crystalShape, plot, hold, plotInnerDirection

cs = crystalFrame('m-3m')
representative = slipSystem.fcc(cs)
systems = representative.symmetrise(antipodal=True)
loading = Miller(0, 0, 1, cs, 'uvw')
factors = systems.SchmidFactor(loading)
print('Number of FCC systems:', systems.size)
print('Largest absolute Schmid factor:', round(float(np.max(np.abs(factors))), 4))
cube = crystalShape.cube(cs)
plot(cube, faceAlpha=0.2)
hold(True)
plot(cube, representative, faceColor='blue')
plotInnerDirection(cube, loading, faceColor='red')
hold(False)
plt.show()
```

All directions here are in crystal coordinates. For a specimen loading direction, rotate
the systems into the specimen frame or transform the loading direction into the crystal frame first.

```text
Number of FCC systems: 12
Largest absolute Schmid factor: 0.4082
```

![Example output for slipSystem.fcc](figures/python_reference/slipSystem.fcc-01.png)


## See also

[slipSystem](slipSystem_index_py.html), [slipSystem.symmetrise](slipSystem.symmetrise_py.html), [dislocationSystem](dislocationSystem_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L365">source</a></font>
{% endraw %}
