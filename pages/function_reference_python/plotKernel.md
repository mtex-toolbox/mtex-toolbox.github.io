---
title: 'plotKernel'
sidebar: function_reference_sidebar
permalink: plotKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a kernel on the sphere as a curve over the angle in degree, into the held axes or a new
figure; MATLAB's S2Kernel.plot

## Syntax

```python
psi = S2DeLaValleePoussinKernel(halfwidth=10*degree)
```

Over 0 to 180 degree:

```python
plot(psi)
```

Over -30 to 30 degree:

```python
plot(psi, maxAngle=30*degree, symmetric=True)
```

The value psi(cos omega) is drawn against omega; the line keywords (lineColor, lineWidth,
lineStyle, displayName) style the curve.

## Input

| | |
|---|---|
| `psi` | S2Kernel |

## Output

| | |
|---|---|
| `h` | the matplotlib lines |

## Keywords

| | default | |
|---|---|---|
| `maxAngle` | `180*degree` | the largest angle drawn |
| `symmetric` | `False` | draw from -maxAngle to maxAngle |

## See also

[S1FunHarmonic.plotSpektra](S1FunHarmonic.plotSpektra_py.html), [S2Kernel](S2Kernel_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L878">source</a></font>
{% endraw %}
