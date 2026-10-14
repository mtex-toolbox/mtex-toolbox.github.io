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

1 + cos(x):

```python
y = fourierSeries([0.5, 1, 0.5], np.linspace(0, 2*np.pi, 50))
```

The complex values:

```python
y = fourierSeries([0.5, 1, 0.5], x, real=False)
```

At the nodes of a grid:

```python
y = fourierSeries(chat, quadratureS1Grid(16))
```

The coefficients are c_{-L} .. c_L over e^{ikx}, the internal ones of an S1FunHarmonic (MATLAB's
fhat runs over e^{-ikx}). The result has the shape of x.

## Input

| | |
|---|---|
| `chat` | the 2L+1 coefficients |
| `x` | the angles, or a quadratureS1Grid |

## Output

| | |
|---|---|
| `y` | the values, real for real coefficients |

## Keywords

| | default | |
|---|---|---|
| `real` | `None` | whether the coefficients are those of a real function, whose values are returned real; by default isRealFourier(chat) |

## See also

[fourierSeriesAdjoint](fourierSeriesAdjoint_py.html), [S1FunHarmonic](S1FunHarmonic_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L1231">source</a></font>
{% endraw %}
