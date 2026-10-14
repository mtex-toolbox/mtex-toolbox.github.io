---
title: 'SO3Fun.SO3Fun'
sidebar: function_reference_sidebar
permalink: SO3Fun.SO3Fun_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.SO3Fun.html
status: Reference
---
{% raw %}
base class for scalar functions on orientation space SO(3)

## Syntax

<div class="mx-form" markdown="1">

```python
SO3Fun()
```

</div>

## Description

Represent an orientation distribution or another orientation-dependent property with
SO3FunHarmonic coefficients, SO3FunRBF kernel sums, SO3FunCBF fibre sums,
SO3FunBingham distributions or SO3FunHandle callables. Evaluate a concrete function
at rotations or orientations using f(ori). Its crystal and specimen frames define the
symmetry-equivalent orientations at which values agree.

An orientation distribution of mean one uses multiples of a uniform distribution as its
units: a value of two means twice the uniform density. General SO3Fun objects can also
represent signed or complex functions and are not automatically normalised densities.

This base class provides the common interface; construct one of its representations.

## See also

[SO3FunHarmonic](SO3FunHarmonic_index_py.html), [SO3FunRBF](SO3FunRBF_index_py.html), [SO3FunHandle](SO3FunHandle_index_py.html), [calcDensity](calcDensity_py.html), [unimodalODF](unimodalODF_py.html)

MATLAB's [SO3Fun.SO3Fun](SO3Fun.SO3Fun.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3funclass.py#L9">source</a></font>
{% endraw %}
