---
title: 'S2Fun.S2Fun'
sidebar: function_reference_sidebar
permalink: S2Fun.S2Fun_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Fun.S2Fun.html
status: Reference
---
{% raw %}
base class for scalar functions of a direction on the unit sphere

## Syntax

<div class="mx-form" markdown="1">

```python
S2Fun()
```

</div>

## Description

Use S2FunHarmonic for spherical harmonic coefficients, S2FunHandle for a callable,
S2FunTri for values on a triangulation, or S2FunBingham for an axial density.
Evaluate a concrete function with f(v), where v is vector3d or Miller directions.
A frame can impose crystal symmetry; antipodal functions satisfy f(v)=f(-v).

Directional densities from calcDensity and S2FunBingham have spherical mean one,
equivalent to integral `4*pi` with surface-area measure. General S2Fun objects may also
represent signed or complex functions and are not automatically normalised densities.

This base class supplies the common interface; construct one of its representations.

## See also

[S2FunHarmonic](S2FunHarmonic_index_py.html), [S2FunHandle](S2FunHandle_index_py.html), [S2FunTri](S2FunTri_index_py.html), [S2FunBingham](S2FunBingham_index_py.html), [calcDensity](calcDensity_py.html)

MATLAB's [S2Fun.S2Fun](S2Fun.S2Fun.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funclass.py#L38">source</a></font>
{% endraw %}
