---
title: 'wignerPlan'
sidebar: function_reference_sidebar
permalink: wignerPlan_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the plan for a node set: the NUFFT at arbitrary nodes, the FFT on a Clenshaw-Curtis grid,
the NUFFT on the nodes of a grid whose polar rule is not equispaced

## Syntax

<div class="mx-form" markdown="1">

```python
p = wignerPlan(rotation.rand(1000), 8)
```

The NUFFT at arbitrary rotations.

</div>

<div class="mx-form" markdown="1">

```python
p = wignerPlan(quadratureSO3Grid(16), 8)
```

The FFT on a Clenshaw-Curtis grid.

</div>

<div class="mx-form" markdown="1">

```python
p = wignerPlan(rotation.rand(1000), 8, real=False)
```

For complex valued functions.

</div>

<div class="mx-form" markdown="1">

```python
f = p(F._fhat)
```

The series at the nodes.

</div>

<div class="mx-form" markdown="1">

```python
fhat = p.adjoint(f, np.full(1000, 1e-3))
```

The adjoint with weights.

</div>

## Description

A plan holds what the transform at a fixed node set needs, so that the series of many
coefficient vectors or their adjoints at the same nodes cost the transform only. The
coefficients are the internal ones, F._fhat.

## Input

| `nodes` | rotations, or a quadratureSO3Grid |
| `L` | the bandwidth |

## Keywords

| keyword | default | description |
|---|---|---|
| `real` | `True` | the plan for real valued functions, which needs half the Fourier array |
| `folds` | `(1, 1)` | (rA, rB), the folds about z on the crystal and the specimen side the coefficients are known to have, which shrink the Fourier array; a grid brings its own |

## Output

| `plan` | SO3GridPlan or SO3FourierPlan, called with coefficients, plan.adjoint with values and weights |

## See also

[wignerSeries](wignerSeries_py.html), [wignerSeriesAdjoint](wignerSeriesAdjoint_py.html), [sphericalPlan](sphericalPlan_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L887">source</a></font>
{% endraw %}
