---
title: 'sphericalSeries'
sidebar: function_reference_sidebar
permalink: sphericalSeries_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the spherical harmonic series fhat at directions or on a quadrature grid, the trigonometric sum
or the NUFFT by the number of nodes

## Syntax

<div class="mx-form" markdown="1">

```python
f = S2FunHarmonic(lambda v: v.z**2, bandwidth=8)
```

</div>

<div class="mx-form" markdown="1">

```python
y = sphericalSeries(f._fhat, vector3d.rand(100))
```

The values, as f.eval.

</div>

<div class="mx-form" markdown="1">

```python
y = sphericalSeries(f._fhat, quadratureS2Grid(16))
```

On a grid, by the FFT.

</div>

<div class="mx-form" markdown="1">

```python
y = sphericalSeries(f._fhat, vector3d.rand(100), real=False)
```

The complex values.

</div>

## Description

The coefficients are the internal ones, f._fhat, with the Condon-Shortley phase, not MATLAB's
f.fhat. The result has the shape of the directions.

## Input

| `fhat` | the spherical coefficients |
| `v` | vector3d, or a quadratureS2Grid |

## Keywords

| keyword | default | description |
|---|---|---|
| `real` | `None` | whether the coefficients are those of a real function, whose values are returned real; by default isRealSpherical(fhat) |

## Output

| `y` | the values at the directions, real for real coefficients |

## See also

[sphericalSeriesAdjoint](sphericalSeriesAdjoint_py.html), [sphericalPlan](sphericalPlan_py.html), [S2FunHarmonic.eval](S2FunHarmonic.eval_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L1152">source</a></font>
{% endraw %}
