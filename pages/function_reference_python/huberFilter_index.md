---
title: 'The class huberFilter'
sidebar: function_reference_sidebar
permalink: huberFilter_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: huberFilter_index.html
status: Reference
---
{% raw %}
smooth grain boundaries with a Huber curvature penalty that preserves sharp corners

## Syntax

<div class="mx-form" markdown="1">

```python
F = huberFilter(smoothingLength=10, threshold=5*degree)
smoothed = grains.smooth(F)
```

</div>

## Description

The penalty is quadratic for small boundary turns and linear for turns above threshold.
This reduces small fluctuations while penalising large corners less strongly than
curvatureFilter. Reweighted sparse solves minimise the smoothing energy. Fixed network
vertices remain fixed; stopping uses tol or the maximum iteration count.

## Input

| `smoothingLength` | spatial wavelength controlling smoothing, in boundary coordinate units; defaults to four vertex spacings when alpha is omitted |
| `threshold` | angular transition threshold in radians; default 5*degree |
| `alpha` | dimensionless regularisation weight, overriding smoothingLength |
| `maxIter` | maximum reweighting iterations; default 50 |
| `tol` | maximum vertex movement below which iteration stops, in spatial units; default 1e-4 |

## Output

| `F` | huberFilter, used by grain and boundary smoothing methods |

## See also

[curvatureFilter](curvatureFilter_index_py.html), [laplaceFilter](laplaceFilter_index_py.html), [taubinFilter](taubinFilter_index_py.html), grain2d.smooth

## Members

| [smooth](huberFilter.smooth_py.html) | the minimiser of \|V - V0\|^2 plus alpha times the Huber penalty of the curvature L V, by reweighting the sparse system until nothing moves, the fixed vertices kept |

## Used on

[GrainSmoothingAdvanced](GrainSmoothingAdvanced_py.html)

MATLAB's [huberFilter_index](huberFilter_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/smoothing/__init__.py#L248">source</a></font>
{% endraw %}
