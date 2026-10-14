---
title: 'sphericalPlan'
sidebar: function_reference_sidebar
permalink: sphericalPlan_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the plan for a node set on the sphere: the FFT on a Clenshaw-Curtis grid, the NUFFT otherwise

## Syntax

<div class="mx-form" markdown="1">

```python
p = sphericalPlan(vector3d.rand(1000), 8)
```

The NUFFT at arbitrary directions.

</div>

<div class="mx-form" markdown="1">

```python
p = sphericalPlan(quadratureS2Grid(16), 8, real=True)
```

The FFT on a Clenshaw-Curtis grid.

</div>

<div class="mx-form" markdown="1">

```python
f = p(fhat)
```

The series at the nodes.

</div>

## Description

The coefficients are the internal ones of an S2FunHarmonic, f._fhat, not MATLAB's fhat.

## Input

| `nodes` | directions, or a quadratureS2Grid |
| `L` | the bandwidth |

## Keywords

| keyword | default | description |
|---|---|---|
| `real` | `False` | the plan for real valued functions, which needs half the Fourier array |

## Output

| `plan` | S2GridPlan or S2FourierPlan, called with coefficients, plan.adjoint with values and weights |

## See also

[sphericalSeries](sphericalSeries_py.html), [sphericalSeriesAdjoint](sphericalSeriesAdjoint_py.html), [wignerPlan](wignerPlan_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L918">source</a></font>
{% endraw %}
