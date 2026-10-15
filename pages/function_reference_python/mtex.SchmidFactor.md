---
title: 'mtex.SchmidFactor'
sidebar: function_reference_sidebar
permalink: mtex.SchmidFactor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the Schmid factor of slip systems under a stress tensor or a uniaxial tension; MATLAB's
SchmidFactor

## Syntax

<div class="mx-form" markdown="1">

```python
sF = SchmidFactor(sS)
```

A function of the tension direction.

</div>

<div class="mx-form" markdown="1">

```python
tau = SchmidFactor(sS, v)
```

Under a uniaxial tension along v.

</div>

<div class="mx-form" markdown="1">

```python
tau = SchmidFactor(sS, sigma)
```

Under a stress tensor.

</div>

<div class="mx-form" markdown="1">

```python
tau = SchmidFactor(sS, sigma, relative=True)
```

Over the critical resolved shear stress.

</div>

## Description

Under a tension direction r the Schmid factor is cos(phi) cos(lambda), the product of the
cosines between r and the slip direction and between r and the plane normal. Under a stress
tensor it is the resolved shear stress divided by the difference of the largest and the
smallest principal stress, so a uniaxial tension gives the same number and the factor
lies between -0.5 and 0.5.

One load on a list of systems gives one factor per system, a list of loads a (loads,
systems) matrix. Without a load the result is the function of the tension direction on
the sphere, antipodal, vector valued for several systems; relative=True divides it by the
CRSS as well.

The systems and the load must be given in the same frame: both in crystal coordinates, or
ori * sS and the stress as measured.

## Input

| `sS` | slipSystem |
| `sigma` | stressTensor, or vector3d or Miller, the tension directions |

## Keywords

| keyword | default | description |
|---|---|---|
| `relative` | `False` | divide by the critical resolved shear stress sS.CRSS of every system |

## Output

| `tau` | the Schmid factors, or an S2FunHarmonic of the tension direction |

## Example

Evaluate FCC slip systems under uniaxial loading. Transform the specimen loading
direction into crystal coordinates before passing it to crystal-frame slip systems.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import crystalFrame, slipSystem, orientation, vector3d, degree, inv

cs = crystalFrame('m-3m')
systems = slipSystem.fcc(cs).symmetrise(antipodal=True)
ori = orientation.byEuler(25*degree, 35*degree, 45*degree, cs)
loading = inv(ori) * vector3d.Z
factors = systems.SchmidFactor(loading)
print('Loading in crystal coordinates:', np.round(loading.normalize().data, 3))
print('Largest absolute Schmid factor:', round(float(np.max(np.abs(factors))), 4))
plt.bar(np.arange(1, systems.size+1), np.abs(factors))
plt.xlabel('FCC slip-system number in this list')
plt.ylabel('Absolute Schmid factor')
plt.ylim(0, 0.5)
plt.show()
```

Factors are signed and dimensionless; absolute values compare the two shear senses.
Multiplying by the applied uniaxial stress gives resolved shear stress. A factor alone does
not establish slip activity: the critical resolved shear stress and material response also matter.

```text
Loading in crystal coordinates: [0.406 0.406 0.819]
Largest absolute Schmid factor: 0.4096
```

![Example output for slipSystem.SchmidFactor](figures/python_reference/slipSystem.SchmidFactor-01.png)


## See also

[SchmidTensor](SchmidTensor_index_py.html), [calcShearStress](stressTensor.calcShearStress_py.html), [stressTensor.uniaxial](stressTensor.uniaxial_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L187">source</a></font>
{% endraw %}
