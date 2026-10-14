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

<div class="mx-form" markdown="1">

```python
f = Gaussian(m, delta)
```

The density as a function.

</div>

<div class="mx-form" markdown="1">

```python
fx = Gaussian(m, delta, x)
```

Its values at x.

</div>

## Input

| `m` | the mean |
| `delta` | the width, the standard deviation times sqrt(2) |

## Keywords

| keyword | default | description |
|---|---|---|
| `x` | `None` | the points to evaluate at; the function when None |

## Output

| `f` | a function of x, exp(-(x - m)^2 / delta^2) / (delta sqrt(pi)) |
| `fx` | its values at x |

## See also

[calcDensity](calcDensity_py.html), [kde1d](kde1d_py.html)

## Used on

[DensityEstimation](DensityEstimation_py.html)

MATLAB's [Gaussian](Gaussian.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kde.py#L18">source</a></font>
{% endraw %}
