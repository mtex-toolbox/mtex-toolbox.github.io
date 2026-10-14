---
title: 'orientation.calcTensor'
sidebar: function_reference_sidebar
permalink: orientation.calcTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.calcTensor.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the texture average of a single crystal tensor over an ODF, a list of orientations or a
map; MATLAB's calcTensor

## Syntax

<div class="mx-form" markdown="1">

```python
TV = calcTensor(odf, T)
```

Over an ODF, the Voigt average.

</div>

<div class="mx-form" markdown="1">

```python
TR = calcTensor(odf, T, 'Reuss')
```

The inverse averaged and inverted.

</div>

<div class="mx-form" markdown="1">

```python
TH = calcTensor(odf, T, average='Hill')
```

The mean of the Voigt and the Reuss average.

</div>

<div class="mx-form" markdown="1">

```python
TV = calcTensor(ori, T, weights=w)
```

Over a weighted list of orientations.

</div>

<div class="mx-form" markdown="1">

```python
TV, TR, TH = calcTensor(ebsd, T1, T2, 'all')
```

Over a map, one tensor per phase.

</div>

## Description

The Voigt average is the mean of the tensor rotated by the orientations, the Reuss average
the inverse of the mean of the rotated inverses, Hill's the mean of the two. Over an ODF
the integral is exact, since a rotated tensor of rank R is a polynomial of degree R in the
rotation. Over a map every indexed phase takes the tensor of its crystal frame, the
tensors given in any order, and a phase without one is refused: select the phases first,
ebsd[['Forsterite', 'Enstatite']]. MATLAB's geometric mean ('geometric') is not offered.

## Input

| `x` | SO3Fun, orientation or EBSD |
| `T` | tensor, the single crystal tensor; for a map one per phase |

## Keywords

| keyword | default | description |
|---|---|---|
| `average` | `'Voigt'` | 'Voigt', 'Reuss', 'Hill' or 'all'; also given as a string after the tensors |
| `weights` | `None` | one weight per orientation or pixel |

## Output

| `T` | the average, of the class of T; with 'all' the three averages Voigt, Reuss, Hill |

## See also

[tensor.mean](tensor.mean_py.html), [calcODF](calcODF_py.html), [TensorAverage](TensorAverage_py.html)

MATLAB's [orientation.calcTensor](orientation.calcTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/texture.py#L59">source</a></font>
{% endraw %}
