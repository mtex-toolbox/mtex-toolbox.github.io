---
title: 'SO3FunSBF'
sidebar: function_reference_sidebar
permalink: SO3FunSBF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the shear banding function of a slip system and a strain (rate) tensor: the closed form
ODF of Schaeben that a single slip system produces under that strain, as a handle; MATLAB's
SO3FunSBF

## Syntax

<div class="mx-form" markdown="1">

```python
odf = SO3FunSBF(sS, E)
```

The deformation texture of one slip system.

</div>

<div class="mx-form" markdown="1">

```python
odf = SO3FunSBF(sS, E, bandwidth=32)
```

With the bandwidth of its harmonic conversion.

</div>

## Description

The texture follows from the finite strain and the slip system without integrating its
evolution; it is evaluated analytically and has no bandwidth of its own, the bandwidth is
the one a harmonic conversion uses. The function maps the crystal frame of the slip system
to the frame of E, the default specimen frame when E has none.

## Input

| `sS` | slipSystem, a single one, in a crystal frame |
| `E` | strainTensor or strainRateTensor |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the bandwidth of the handle, by default the preference maxSO3Bandwidth |

## Output

| `odf` | SO3FunHandle |

## References

- H. Schaeben et al., An analytical finite-strain parametrization for texture evolution in deforming olivine polycrystals, Geophys. J. Int. 216 (2019)

## See also

[doEulerStep](doEulerStep_py.html), [SingleSlipModel](SingleSlipModel_py.html), [slipSystem](slipSystem_index_py.html), [strainTensor](strainTensor_index_py.html)

## Used on

[SingleSlipModel](SingleSlipModel_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/texture.py#L298">source</a></font>
{% endraw %}
