---
title: 'stiffnessTensor.bulkModulus'
sidebar: function_reference_sidebar
permalink: stiffnessTensor.bulkModulus_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor.bulkModulus.html
status: Reference
---
{% raw %}
A method of [stiffnessTensor](stiffnessTensor_index_py.html).

the bulk modulus of an isotropic polycrystal, the Voigt and Reuss bounds; MATLAB's
bulkModulus

## Syntax

<div class="mx-form" markdown="1">

```python
K = bulkModulus(C)
```

The Voigt bound.

</div>

<div class="mx-form" markdown="1">

```python
K = bulkModulus(C, 'Hill')
```

The mean of the two bounds.

</div>

<div class="mx-form" markdown="1">

```python
KV, KR, KH = bulkModulus(C, 'all')
```

All three.

</div>

## Description

The Voigt upper bound is a ninth of C_iijj, the Reuss lower bound the reciprocal of the
volume compressibility S_iijj, Hill's the mean of the two. MATLAB returns the three as
outputs; here 'all' returns them as a named tuple (voigt, reuss, hill).

## Input

| `C` | stiffnessTensor or complianceTensor |
| `which` | 'Voigt', 'Reuss', 'Hill' or 'all' |

## Output

| `K` | the bulk modulus, or the bounds |

## See also

[shearModulus](complianceTensor.shearModulus_py.html), [volumeCompressibility](complianceTensor.volumeCompressibility_py.html), [PoissonRatio](complianceTensor.PoissonRatio_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
stiffnessTensor.bulkModulus(T, which=None)
```

</div>

MATLAB's [stiffnessTensor.bulkModulus](stiffnessTensor.bulkModulus.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L365">source</a></font>
{% endraw %}
