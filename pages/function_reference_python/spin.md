---
title: 'spin'
sidebar: function_reference_sidebar
permalink: spin_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
extract the antisymmetric spin tensor from a velocity gradient

## Syntax

<div class="mx-form" markdown="1">

```python
W = spin(L)
```

</div>

## Description

Return (L - L.transpose())/2 as a spinTensor in the same frame and array shape.
Its axial vector is the angular velocity, and W times a vector is its cross product
with that angular velocity. Together with strainRate(L), it reconstructs L.

## See also

[strainRate](velocityGradientTensor.strainRate_py.html), [angularVelocityVector](velocityGradientTensor.angularVelocityVector_py.html), [spinTensor](spinTensor_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
spin(L)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L402">source</a></font>
{% endraw %}
