---
title: 'deformationGradientTensor.pureShear'
sidebar: function_reference_sidebar
permalink: deformationGradientTensor.pureShear_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: deformationGradientTensor.pureShear.html
status: Reference
---
{% raw %}
A method of [deformationGradientTensor](deformationGradientTensor_index_py.html).

the deformation gradient of a pure shear, stretched by lam along ext and shortened by
1 / lam along comp; MATLAB's deformationGradientTensor.pureShear

## Syntax

Stretched to twice its length:

```python
F = deformationGradientTensor.pureShear(ext, comp)
```

By the factor 3:

```python
F = deformationGradientTensor.pureShear(ext, comp, lam=3)
```

The direction perpendicular to both keeps its length, so does the volume.

## Input

| | |
|---|---|
| `ext` | vector3d or Miller, the direction of extension |
| `comp` | vector3d or Miller, the direction of compression, perpendicular to ext |

## Output

| | |
|---|---|
| `F` | deformationGradientTensor |

## Keywords

| | default | |
|---|---|---|
| `lam` | `2.0` | the stretch ratio, MATLAB's lambda |

## See also

[deformationGradientTensor.uniaxial](deformationGradientTensor.uniaxial_py.html), [deformationGradientTensor.simpleShear](deformationGradientTensor.simpleShear_py.html)

MATLAB's [deformationGradientTensor.pureShear](deformationGradientTensor.pureShear.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L208">source</a></font>
{% endraw %}
