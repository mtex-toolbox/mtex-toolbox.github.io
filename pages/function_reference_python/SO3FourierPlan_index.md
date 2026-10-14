---
title: 'The class SO3FourierPlan'
sidebar: function_reference_sidebar
permalink: SO3FourierPlan_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
reusable transform plan for a Wigner series at arbitrary rotations

## Syntax

<div class="mx-form" markdown="1">

```python
plan = SO3FourierPlan(ori, L)
values = plan(fhat)
coefficients = plan.adjoint(values, weights)
```

</div>

## Description

Evaluation maps internal Wigner coefficients to values at the nodes. The adjoint maps
weighted node values to coefficients; for scattered nodes it is an adjoint sum, rather
than a least-squares inverse. Reusing a plan avoids rebuilding transform data for each
coefficient vector. setNodes updates the query rotations.

The folds option specifies invariance under rotations about z on the crystal and specimen
sides. Coefficients outside those symmetry index sets must vanish; transforms then use
the reduced index sets. Public SO3FunHarmonic.fhat coefficients must be converted to the
internal convention before using this low-level plan directly.

## Input

| `rots` | rotation or orientation nodes |
| `L` | maximum Wigner degree; coefficient arrays have length deg2dim(L+1) |
| `real` | use the transform for real-valued functions; default True |
| `folds` | crystal and specimen z-rotation orders; default (1, 1) |
| `eps` | requested numerical accuracy; None uses the transform tolerance for the dtype |
| `upsampfac` | NUFFT oversampling factor; None uses the configured preference |

## Output

| `plan` | SO3FourierPlan |

## See also

[SO3FunHarmonic](SO3FunHarmonic_index_py.html), [SO3GridPlan](SO3GridPlan_index_py.html), [wignerSeries](wignerSeries_py.html)

## Members

| [adjoint](SO3FourierPlan.adjoint_py.html) | coefficients from weighted values at the nodes |
| [setNodes](SO3FourierPlan.setNodes_py.html) | moves the plan to other rotations, the finufft plans kept |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L576">source</a></font>
{% endraw %}
