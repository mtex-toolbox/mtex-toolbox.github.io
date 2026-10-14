---
title: 'slipSystem.SchmidFactor'
sidebar: function_reference_sidebar
permalink: slipSystem.SchmidFactor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: slipSystem.SchmidFactor.html
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the Schmid factor of the slip systems; MATLAB's SchmidFactor

## Syntax

<div class="mx-form" markdown="1">

```python
tau = sS.SchmidFactor(v)
```

Under a uniaxial tension along v.

</div>

<div class="mx-form" markdown="1">

```python
tau = sS.SchmidFactor(sigma)
```

Under a stress tensor.

</div>

<div class="mx-form" markdown="1">

```python
tau = sS.SchmidFactor(sigma, relative=True)
```

Over the critical resolved shear stress.

</div>

<div class="mx-form" markdown="1">

```python
sF = sS.SchmidFactor()
```

A function of the tension direction.

</div>

## Description

For a tension direction cos(phi) cos(lambda), the cosines of its angles to the slip
direction and to the plane normal; under a stress tensor the shear it resolves on the
system over the difference of the extreme principal stresses; without a load the
function of the tension direction on the sphere. A list of loads on a list of systems
gives a (loads, systems) matrix. The systems and the load must be given in the same
frame: both in crystal coordinates, or ori * sS and the stress as measured.

## Input

| `sS` | slipSystem |
| `sigma` | stressTensor, or vector3d or Miller, the tension directions |

## Keywords

| keyword | default | description |
|---|---|---|
| `relative` | `False` | divide by the critical resolved shear stress sS.CRSS of every system |

## Output

| `tau` | the Schmid factors, or an S2FunHarmonic of the tension direction |

## See also

[SchmidFactor](mtex.SchmidFactor_py.html), [SchmidTensor](SchmidTensor_index_py.html), [calcShearStress](stressTensor.calcShearStress_py.html)

## Used on

[SachsModel](SachsModel_py.html), [SchmidFactor](SchmidFactor_py.html), [SlipTransmission](SlipTransmission_py.html), [TwinningTutorial](TwinningTutorial_py.html)

MATLAB's [slipSystem.SchmidFactor](slipSystem.SchmidFactor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L534">source</a></font>
{% endraw %}
