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

The deformation texture of one slip system:

```python
odf = SO3FunSBF(sS, E)
```

With the bandwidth of its harmonic conversion:

```python
odf = SO3FunSBF(sS, E, bandwidth=32)
```

The texture follows from the finite strain and the slip system without integrating its
evolution; it is evaluated analytically and has no bandwidth of its own, the bandwidth is
the one a harmonic conversion uses. The function maps the crystal frame of the slip system
to the frame of E, the default specimen frame when E has none.

## Input

| | |
|---|---|
| `sS` | slipSystem, a single one, in a crystal frame |
| `E` | strainTensor or strainRateTensor |

## Output

| | |
|---|---|
| `odf` | SO3FunHandle |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the bandwidth of the handle, by default the preference maxSO3Bandwidth |

## References

- H. Schaeben et al., An analytical finite-strain parametrization for texture evolution in deforming olivine polycrystals, Geophys. J. Int. 216 (2019)

## See also

[doEulerStep](doEulerStep_py.html), [SingleSlipModel](SingleSlipModel_py.html), [slipSystem](slipSystem_index_py.html), [strainTensor](strainTensor_index_py.html)

## Used on

[SingleSlipModel](SingleSlipModel_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/texture.py#L291">source</a></font>
{% endraw %}
