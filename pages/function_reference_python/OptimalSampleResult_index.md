---
title: 'The class OptimalSampleResult'
sidebar: function_reference_sidebar
permalink: OptimalSampleResult_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
sampling result and convergence diagnostics from optimalSample

## Syntax

<div class="mx-form" markdown="1">

```python
result = optimalSample(f, 100, diagnostics=True)
nodes = result.nodes
```

</div>

## Description

This immutable named tuple records the optimised discrete representation of a density.
Request it with diagnostics=True instead of receiving only the sample nodes.

## Properties

| `nodes` | sampled vector3d directions or orientations |
| `weights` | nonnegative node weights, normalised to sum to one |
| `discrepancy` | final value of the weighted squared coefficient discrepancy objective |
| `history` | objective values recorded during the iteration |
| `iterations` | number of completed iterations |
| `converged` | whether the stationarity or small-step stopping criterion was reached |
| `reason` | stopping reason, including convergence, iteration limit or line-search failure |
| `bandwidth` | harmonic bandwidth used for the optimisation |

## See also

[optimalSample](S2Fun.optimalSample_py.html), [discrepancy](S2Fun.discrepancy_py.html)
{% endraw %}
