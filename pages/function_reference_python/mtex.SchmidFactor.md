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

Under a stress tensor the shear it resolves on the system over the difference of the
extreme principal stresses, so that a uniaxial tension gives the direction cosines
cos(phi) cos(lambda) of a tension direction. One stress on a list of systems gives one
factor per system, a list of stresses or directions on a list of systems a (loads,
systems) matrix. Without a load the function of the tension direction on the sphere, one
function for one system and a vector valued one for several, antipodal as a tension along
r and along -r are one load. The systems and the load must be given in the same frame:
both in crystal coordinates, or ori * sS and the stress as measured.

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
