---
title: 'silvermanWidth'
sidebar: function_reference_sidebar
permalink: silvermanWidth_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
choose a Gaussian smoothing width from the spread and size of a numeric sample.

## Syntax

<div class="mx-form" markdown="1">

```python
sigma = silvermanWidth(angles)
```

</div>

## Description

The scale is the smaller of the sample standard deviation and the interquartile
range divided by 1.349, multiplied by an `n**(-1/5)` factor and MTEX's circular-width
constant. The result has the units of the input. Fewer than two samples, or a zero
spread estimate, give the fallback width of ten degrees in radians.

## Input

| `x` | one-dimensional numeric sample; angles must be in radians |

## See also

[calcDensity](calcDensity_py.html), [S1GaussKernel](S1GaussKernel_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
silvermanWidth(x)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L606">source</a></font>
{% endraw %}
