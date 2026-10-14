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
the sphere, antipodal, vector valued for several systems; relative=True does not divide
this function by the CRSS, unlike MATLAB.

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

## See also

[SchmidTensor](SchmidTensor_index_py.html), [calcShearStress](stressTensor.calcShearStress_py.html), [stressTensor.uniaxial](stressTensor.uniaxial_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L107">source</a></font>
{% endraw %}
