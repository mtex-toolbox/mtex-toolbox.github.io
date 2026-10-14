---
title: 'Gaussian'
sidebar: function_reference_sidebar
permalink: Gaussian_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Gaussian.html
status: Reference
---
{% raw %}
the normal density of mean m and width delta, the standard deviation times sqrt(2);
MATLAB's Gaussian

## Syntax

The density as a function:

```python
f = Gaussian(m, delta)
```

Its values at x:

```python
fx = Gaussian(m, delta, x)
```

## Input

| | |
|---|---|
| `m` | the mean |
| `delta` | the width, the standard deviation times sqrt(2) |

## Output

| | |
|---|---|
| `f` | a function of x, exp(-(x - m)^2 / delta^2) / (delta sqrt(pi)) |
| `fx` | its values at x |

## Keywords

| | default | |
|---|---|---|
| `x` | `None` | the points to evaluate at; the function when None |

## See also

[calcDensity](calcDensity_py.html), [kde1d](kde1d_py.html)

## Used on

[DensityEstimation](DensityEstimation_py.html)

MATLAB's [Gaussian](Gaussian.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kde.py#L18">source</a></font>
{% endraw %}
