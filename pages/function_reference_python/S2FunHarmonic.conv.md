---
title: 'S2FunHarmonic.conv'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.conv_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.conv.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

convolve a spherical function with a kernel or another spherical function.

## Syntax

<div class="mx-form" markdown="1">

```python
smoothed = f.conv(psi)
correlation = f.conv(g)
```

</div>

## Description

A radial kernel multiplies each spherical harmonic degree by its kernel multiplier
and returns an S2FunHarmonic. With another S2Fun, convolution compares their relative
rotations and returns an SO3FunHarmonic. The result therefore depends on the second
argument's domain.

## Input

| `g` | S2Kernel, SO3Kernel or spherical function |

## See also

[SO3FunHarmonic.conv](SO3FunHarmonic.conv_py.html), [S2Kernel.conv](S2Kernel.conv_py.html), S2FunConvolution

## Signature

<div class="mx-form" markdown="1">

```python
S2FunHarmonic.conv(self, g)
```

</div>

MATLAB's [S2FunHarmonic.conv](S2FunHarmonic.conv.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L723">source</a></font>
{% endraw %}
