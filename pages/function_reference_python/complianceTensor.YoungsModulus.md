---
title: 'complianceTensor.YoungsModulus'
sidebar: function_reference_sidebar
permalink: complianceTensor.YoungsModulus_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: complianceTensor.YoungsModulus.html
status: Reference
---
{% raw %}
A method of [complianceTensor](complianceTensor_index_py.html).

Young's modulus in the direction v, the reciprocal of S_ijkl v_i v_j v_k v_l; MATLAB's
YoungsModulus

## Syntax

At the directions v:

```python
E = YoungsModulus(C, v)
```

The function on the sphere:

```python
E = C.YoungsModulus()
```

The tensor may be a stiffness or a compliance tensor; a stiffness tensor is inverted
first. The direction may have any length.

## Input

| | |
|---|---|
| `C` | stiffnessTensor or complianceTensor |
| `v` | vector3d or Miller, the tension directions; left out for the function |

## Output

| | |
|---|---|
| `E` | Young's modulus at every direction, or an S2Fun of the direction |

## See also

[shearModulus](complianceTensor.shearModulus_py.html), [PoissonRatio](complianceTensor.PoissonRatio_py.html), [linearCompressibility](complianceTensor.linearCompressibility_py.html), [volumeCompressibility](complianceTensor.volumeCompressibility_py.html)

## Signature

```python
complianceTensor.YoungsModulus(T, v=None)
```

MATLAB's [complianceTensor.YoungsModulus](complianceTensor.YoungsModulus.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L233">source</a></font>
{% endraw %}
