---
title: 'zeroRangeMethod.checkZeroRange'
sidebar: function_reference_sidebar
permalink: zeroRangeMethod.checkZeroRange_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: zeroRangeMethod.checkZeroRange.html
status: Reference
---
{% raw %}
A method of [zeroRangeMethod](zeroRangeMethod_index_py.html).

which orientations the zero range method rules out, those some pole figure is zero at in
one of their symmetric poles; MATLAB's checkZeroRange

## Syntax

<div class="mx-form" markdown="1">

```python
isZero = zrm.checkZeroRange(ori)
```

The orientations ruled out by any pole figure.

</div>

<div class="mx-form" markdown="1">

```python
isZero = zrm.checkZeroRange(v, i)
```

The directions the i-th pole figure is zero at.

</div>

## Description

A direction is in the zero range of a pole figure where the kernel density of its
measured directions exceeds the threshold and the kernel sum, positive at intensities
above the background and negative below, is negative there.

## Input

| `zrm` | zeroRangeMethod |
| `ori` | orientation, or v - vector3d, the specimen directions with an index |
| `i` | the index of the pole figure, counted from zero |

## Output

| `isZero` | bool array, one entry per orientation or direction |

## See also

[zeroRangeMethod](zeroRangeMethod_index_py.html), [MLSSolver](MLSSolver_index_py.html), [calcODF](calcODF_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
zeroRangeMethod.checkZeroRange(self, x, i=None)
```

</div>

MATLAB's [zeroRangeMethod.checkZeroRange](zeroRangeMethod.checkZeroRange.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L161">source</a></font>
{% endraw %}
