---
title: 'slipSystem.mPrime'
sidebar: function_reference_sidebar
permalink: slipSystem.mPrime_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: slipSystem.mPrime.html
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

measure the geometric alignment of paired slip systems using the Luster–Morris parameter

## Syntax

<div class="mx-form" markdown="1">

```python
m = sS1.mPrime(sS2)
```

</div>

## Description

The result is `abs((n1 dot n2) * (b1 dot b2))`, using unit plane normals and slip directions.
It ranges from zero to one; one means both planes and directions are parallel. Express
both systems in the same coordinate frame, for example by rotating each crystal's systems
into the specimen frame. Arrays pair according to NumPy broadcasting.

## Input

| `other` | slipSystem, the systems to compare with this list |

## Output

| `m` | array of dimensionless alignment parameters |

## See also

[slipSystem.residualBurgersVector](slipSystem.residualBurgersVector_py.html), [slipSystem.rotate](slipSystem.rotate_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
slipSystem.mPrime(self, other)
```

</div>

MATLAB's [slipSystem.mPrime](slipSystem.mPrime.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L242">source</a></font>
{% endraw %}
