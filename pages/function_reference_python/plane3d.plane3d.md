---
title: 'plane3d.plane3d'
sidebar: function_reference_sidebar
permalink: plane3d.plane3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plane3d.plane3d.html
status: Reference
---
{% raw %}
a plane <N, v> = d, or a list of them

## Syntax

<div class="mx-form" markdown="1">

```python
plane = plane3d(N, d)
```

<N, v> = d.

</div>

<div class="mx-form" markdown="1">

```python
plane = plane3d(N, v0)
```

Through the point v0.

</div>

<div class="mx-form" markdown="1">

```python
plane = plane3d.byPoints(v)
```

Fitted through the points v.

</div>

## Signature

<div class="mx-form" markdown="1">

```python
plane3d(N, d=0)
```

</div>

## Used on

[EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3D](Grains3D_py.html), [RotationImproper](RotationImproper_py.html)

MATLAB's [plane3d.plane3d](plane3d.plane3d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plane.py#L23">source</a></font>
{% endraw %}
