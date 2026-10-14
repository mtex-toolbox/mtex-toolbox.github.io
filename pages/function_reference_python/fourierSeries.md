---
title: 'fourierSeries'
sidebar: function_reference_sidebar
permalink: fourierSeries_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the Fourier series sum of chat_k e^{ikx} at the angles x, directly or by NUFFT; real when the
coefficients are those of a real function

## Syntax

<div class="mx-form" markdown="1">

```python
y = fourierSeries([0.5, 1, 0.5], np.linspace(0, 2*np.pi, 50))
```

1 + cos(x).

</div>

<div class="mx-form" markdown="1">

```python
y = fourierSeries([0.5, 1, 0.5], x, real=False)
```

The complex values.

</div>

<div class="mx-form" markdown="1">

```python
y = fourierSeries(chat, quadratureS1Grid(16))
```

At the nodes of a grid.

</div>

## Description

The coefficients are c_{-L} .. c_L over e^{ikx}, the internal ones of an S1FunHarmonic (MATLAB's
fhat runs over e^{-ikx}). The result has the shape of x.

## Input

| `chat` | the 2L+1 coefficients |
| `x` | the angles, or a quadratureS1Grid |

## Keywords

| keyword | default | description |
|---|---|---|
| `real` | `None` | whether the coefficients are those of a real function, whose values are returned real; by default isRealFourier(chat) |

## Output

| `y` | the values, real for real coefficients |

## See also

[fourierSeriesAdjoint](fourierSeriesAdjoint_py.html), [S1FunHarmonic](S1FunHarmonic_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L1282">source</a></font>
{% endraw %}
