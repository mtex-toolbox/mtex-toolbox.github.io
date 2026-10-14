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

The Voigt bound:

```python
K = bulkModulus(C)
```

The mean of the two bounds:

```python
K = bulkModulus(C, 'Hill')
```

All three:

```python
KV, KR, KH = bulkModulus(C, 'all')
```

The Voigt upper bound is a ninth of C_iijj, the Reuss lower bound the reciprocal of the
volume compressibility S_iijj, Hill's the mean of the two. MATLAB returns the three as
outputs; here 'all' returns them as a named tuple (voigt, reuss, hill).

## Input

| | |
|---|---|
| `C` | stiffnessTensor or complianceTensor |
| `which` | 'Voigt', 'Reuss', 'Hill' or 'all' |

## Output

| | |
|---|---|
| `K` | the bulk modulus, or the bounds |

## See also

[shearModulus](complianceTensor.shearModulus_py.html), [volumeCompressibility](complianceTensor.volumeCompressibility_py.html), [PoissonRatio](complianceTensor.PoissonRatio_py.html)

## Signature

```python
stiffnessTensor.bulkModulus(T, which=None)
```

MATLAB's [stiffnessTensor.bulkModulus](stiffnessTensor.bulkModulus.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/elasticity.py#L352">source</a></font>
{% endraw %}
