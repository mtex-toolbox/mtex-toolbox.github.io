---
title: 'vector3d.calcDensity'
sidebar: function_reference_sidebar
permalink: vector3d.calcDensity_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.calcDensity.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

estimate a smooth density of directions or axes on the sphere.

## Syntax

<div class="mx-form" markdown="1">

```python
f = v.calcDensity()
f = v.calcDensity(halfwidth=10*degree)
f = v.calcDensity(weights=w, antipodal=True)
```

</div>

## Description

The result is an S2FunHarmonic with mean one: a value of two represents twice the
uniform directional density. The input's crystal symmetry and antipodal state are
respected. Without a kernel or halfwidth, the smoothing width is selected from the data.
Evaluate the density with f(queryDirections). All options are those of [`calcDensity`](calcDensity_py.html).

## See also

[calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html), [vector3d.interp](vector3d.interp_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.calcDensity(self, *args, **kwargs)
```

</div>

## Used on

[VectorsAxes](VectorsAxes_py.html)

MATLAB's [vector3d.calcDensity](vector3d.calcDensity.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L413">source</a></font>
{% endraw %}
