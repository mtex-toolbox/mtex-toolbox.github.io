---
title: 'complianceTensor.linearCompressibility'
sidebar: function_reference_sidebar
permalink: complianceTensor.linearCompressibility_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: complianceTensor.linearCompressibility.html
status: Reference
---
{% raw %}
A method of [complianceTensor](complianceTensor_index_py.html).

the linear compressibility, the length change per pressure in the direction v,
S_ijkk v_i v_j; MATLAB's linearCompressibility

## Syntax

<div class="mx-form" markdown="1">

```python
beta = linearCompressibility(C, v)
```

At the directions v.

</div>

<div class="mx-form" markdown="1">

```python
beta = C.linearCompressibility()
```

The function on the sphere.

</div>

## Input

| `C` | stiffnessTensor or complianceTensor, a stiffness tensor is inverted first |
| `v` | vector3d or Miller, the directions; left out for the function |

## Output

| `beta` | the linear compressibility at every direction, or an S2Fun of the direction |

## See also

[volumeCompressibility](complianceTensor.volumeCompressibility_py.html), [YoungsModulus](complianceTensor.YoungsModulus_py.html), [bulkModulus](complianceTensor.bulkModulus_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
complianceTensor.linearCompressibility(T, v=None)
```

</div>

MATLAB's [complianceTensor.linearCompressibility](complianceTensor.linearCompressibility.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L261">source</a></font>
{% endraw %}
