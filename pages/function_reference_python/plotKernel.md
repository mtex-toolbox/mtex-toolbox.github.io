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

<div class="mx-form" markdown="1">

```python
psi = S2DeLaValleePoussinKernel(halfwidth=10*degree)
```

</div>

<div class="mx-form" markdown="1">

```python
plot(psi)
```

Over 0 to 180 degree.

</div>

<div class="mx-form" markdown="1">

```python
plot(psi, maxAngle=30*degree, symmetric=True)
```

Over -30 to 30 degree.

</div>

## Description

The value psi(cos omega) is drawn against omega; the line keywords (lineColor, lineWidth,
lineStyle, displayName) style the curve.

## Input

| `psi` | S2Kernel |

## Keywords

| keyword | default | description |
|---|---|---|
| `maxAngle` | `180*degree` | the largest angle drawn |
| `symmetric` | `False` | draw from -maxAngle to maxAngle |

## Output

| `h` | the matplotlib lines |

## See also

[S1FunHarmonic.plotSpektra](S1FunHarmonic.plotSpektra_py.html), [S2Kernel](S2Kernel_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L878">source</a></font>
{% endraw %}
