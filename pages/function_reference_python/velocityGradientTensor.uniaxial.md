---
title: 'velocityGradientTensor.uniaxial'
sidebar: function_reference_sidebar
permalink: velocityGradientTensor.uniaxial_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: velocityGradientTensor.uniaxial.html
status: Reference
---
{% raw %}
A method of [velocityGradientTensor](velocityGradientTensor_index_py.html).

the velocity gradient of a uniaxial tension along d, of unit rate along it; MATLAB's
velocityGradientTensor.uniaxial

## Syntax

<div class="mx-form" markdown="1">

```python
L = velocityGradientTensor.uniaxial()
```

Axisymmetric tension along z.

</div>

<div class="mx-form" markdown="1">

```python
L = velocityGradientTensor.uniaxial(d)
```

Along d.

</div>

<div class="mx-form" markdown="1">

```python
L = velocityGradientTensor.uniaxial(d, q=0)
```

Plane strain, no flow along the second axis.

</div>

<div class="mx-form" markdown="1">

```python
L = -velocityGradientTensor.uniaxial(d)
```

Uniaxial compression.

</div>

## Description

The two directions perpendicular to d contract at the rates q and 1 - q, so that the volume
is kept; q = 0.5 is axisymmetric. A strain rate r multiplies the tensor, r * L.

## Input

| `d` | vector3d or Miller, the tension direction, z when left out |

## Keywords

| keyword | default | description |
|---|---|---|
| `q` | `0.5` | the share of the second transverse direction in the contraction, 0 to 1 |

## Output

| `L` | velocityGradientTensor |

## See also

[velocityGradientTensor.simpleShear](velocityGradientTensor.simpleShear_py.html), [deformationGradientTensor.uniaxial](deformationGradientTensor.uniaxial_py.html)

MATLAB's [velocityGradientTensor.uniaxial](velocityGradientTensor.uniaxial.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L246">source</a></font>
{% endraw %}
