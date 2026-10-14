---
title: 'stressTensor.meanStress'
sidebar: function_reference_sidebar
permalink: stressTensor.meanStress_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stressTensor.meanStress.html
status: Reference
---
{% raw %}
A method of [stressTensor](stressTensor_index_py.html).

compute the mean normal stress, trace(sigma) / 3

## Syntax

<div class="mx-form" markdown="1">

```python
pressureComponent = meanStress(sigma)
```

</div>

## Description

Return one scalar per stress tensor, in the same units as sigma. This uses the sign of
the tensor's normal components; a positive tensile stress gives a positive mean stress.
The complementary deviatoric stress has zero trace.

## See also

[deviatoricStress](strainTensor.deviatoricStrain_py.html), [equivalentStress](stressTensor.equivalentStress_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
stressTensor.meanStress(sigma)
```

</div>

MATLAB's [stressTensor.meanStress](stressTensor.meanStress.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L43">source</a></font>
{% endraw %}
