---
title: 'stressTensor.calcShearStress'
sidebar: function_reference_sidebar
permalink: stressTensor.calcShearStress_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stressTensor.calcShearStress.html
status: Reference
---
{% raw %}
A method of [stressTensor](stressTensor_index_py.html).

resolve a stress tensor on slip systems and identify the most highly stressed system

## Syntax

<div class="mx-form" markdown="1">

```python
tau, index = calcShearStress(sigma, sS)
```

</div>

## Description

Compute b dot sigma dot n using unit slip directions b and plane normals n. The resolved
shear stress is signed and has the same units as sigma. A single stress applied to a list
of systems gives one value per system; an array of stresses adds a final system axis.
Express stress and systems in the same frame, for example with `ori * sS` in specimen coordinates.

## Input

| `sigma` | stressTensor |
| `sS` | slipSystem list |

## Output

| `tau` | signed resolved shear stresses |
| `index` | zero-based index of the system with largest absolute shear stress, along the last axis of tau |

## See also

[SchmidFactor](mtex.SchmidFactor_py.html), [slipSystem.rotate](slipSystem.rotate_py.html), [SchmidTensor](SchmidTensor_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
stressTensor.calcShearStress(sigma, sS)
```

</div>

MATLAB's [stressTensor.calcShearStress](stressTensor.calcShearStress.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L164">source</a></font>
{% endraw %}
