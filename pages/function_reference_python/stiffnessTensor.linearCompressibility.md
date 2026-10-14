---
title: 'stiffnessTensor.linearCompressibility'
sidebar: function_reference_sidebar
permalink: stiffnessTensor.linearCompressibility_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor.linearCompressibility.html
status: Reference
---
{% raw %}
A method of [stiffnessTensor](stiffnessTensor_index_py.html).

the linear compressibility, the length change per pressure in the direction v,
S_ijkk v_i v_j; MATLAB's linearCompressibility

## Syntax

At the directions v:

```python
beta = linearCompressibility(C, v)
```

The function on the sphere:

```python
beta = C.linearCompressibility()
```

## Input

| | |
|---|---|
| `C` | stiffnessTensor or complianceTensor, a stiffness tensor is inverted first |
| `v` | vector3d or Miller, the directions; left out for the function |

## Output

| | |
|---|---|
| `beta` | the linear compressibility at every direction, or an S2Fun of the direction |

## See also

[volumeCompressibility](complianceTensor.volumeCompressibility_py.html), [YoungsModulus](complianceTensor.YoungsModulus_py.html), [bulkModulus](complianceTensor.bulkModulus_py.html)

## Signature

```python
stiffnessTensor.linearCompressibility(T, v=None)
```

MATLAB's [stiffnessTensor.linearCompressibility](stiffnessTensor.linearCompressibility.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L257">source</a></font>
{% endraw %}
