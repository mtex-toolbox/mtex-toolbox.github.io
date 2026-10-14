---
title: 'doEulerStep'
sidebar: function_reference_sidebar
permalink: doEulerStep_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: doEulerStep.html
status: Reference
---
{% raw %}
the orientations or the density after unit time in n Euler steps under the rotation
velocity field spin; MATLAB's doEulerStep

## Syntax

Orientations in 10 steps:

```python
ori = doEulerStep(spin, ori0, 10)
```

A density in 40 steps:

```python
odf = doEulerStep(spin, odf0, 40)
```

The density in harmonics up to 16:

```python
odf = doEulerStep(spin, odf0, 40, bandwidth=16)
```

Orientations move along the exponential of the field, one step of a n-th of the time at a
time. A density follows the continuity equation, d f / dt = -div(f spin), integrated by the
explicit Euler method in its harmonic space. MATLAB's implicit variants ('implicit',
'implicit_fixPoint') are not offered.

## Input

| | |
|---|---|
| `spin` | SO3VectorField or a callable of orientations, the rotation velocity |
| `x` | orientation or SO3Fun, the start |

## Output

| | |
|---|---|
| `x` | orientation or SO3FunHarmonic after unit time |

## Keywords

| | default | |
|---|---|---|
| `n` | `1` | the number of steps |
| `bandwidth` | `None` | the bandwidth of the density, by default that of SO3FunHarmonic(x) |

## See also

[SO3FunSBF](SO3FunSBF_py.html), [calcTaylor](velocityGradientTensor.calcTaylor_py.html), [SingleSlipModel](SingleSlipModel_py.html), [TaylorModel](TaylorModel_index_py.html)

## Used on

[SingleSlipModel](SingleSlipModel_py.html)

MATLAB's [doEulerStep](doEulerStep.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/texture.py#L394">source</a></font>
{% endraw %}
