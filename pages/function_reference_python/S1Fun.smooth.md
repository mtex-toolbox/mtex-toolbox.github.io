---
title: 'S1Fun.smooth'
sidebar: function_reference_sidebar
permalink: S1Fun.smooth_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Fun.smooth.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

the convolution with a de la Vallee Poussin kernel, 2.9 degree unless a kernel or a
halfwidth is given; MATLAB's smooth

## Syntax

With the de la Vallee Poussin kernel of 2.9 degree:

```python
sF = smooth(sF)
```

A wider kernel:

```python
sF = smooth(sF, halfwidth=30*degree)
```

A kernel given:

```python
sF = smooth(sF, S1DeLaValleePoussinKernel(halfwidth=30*degree))
```

Every coefficient c_k is multiplied by the coefficient of degree k of the kernel. The
de la Vallee Poussin kernel of halfwidth h keeps the degrees up to n = 1.2 / h unchanged and
damps those up to 2n linearly to zero, so a narrow kernel leaves a function of low bandwidth
as it is.

## Input

| | |
|---|---|
| `sF` | S1FunHarmonic |

## Output

| | |
|---|---|
| `sF` | S1FunHarmonic, the smoothed function |

## Keywords

| | default | |
|---|---|---|
| `psi` | `None` | S1Kernel, the smoothing kernel, which replaces the halfwidth |
| `halfwidth` | `0.05061454830783556` | the halfwidth of the de la Vallee Poussin kernel |

## See also

[S1FunHarmonic.conv](S1FunHarmonic.conv_py.html), [S1DeLaValleePoussinKernel](S1DeLaValleePoussinKernel_index_py.html)

MATLAB's [S1Fun.smooth](S1Fun.smooth.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L249">source</a></font>
{% endraw %}
