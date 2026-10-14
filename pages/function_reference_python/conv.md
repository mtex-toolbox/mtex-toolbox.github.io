---
title: 'conv'
sidebar: function_reference_sidebar
permalink: conv_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
conv(x, ...) is x.conv(...), the method of the object passed

## Syntax

```python
conv(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [S1FunHarmonic](S1FunHarmonic.conv_py.html) | smoothing by a kernel is one factor per mode |
| [S1Kernel](S1Kernel.conv_py.html) | the convolution with another kernel on the circle: the coefficients multiplied |
| [S2FunHarmonic](S2FunHarmonic.conv_py.html) | the convolution with a kernel or another function on the sphere |
| [S2Kernel](S2Kernel.conv_py.html) | the convolution with another kernel on the sphere or SO(3): the coefficients multiplied and divided by 2n+1, a kernel on the sphere |
| [SO3FunCBF](SO3FunCBF.conv_py.html) | the convolution with a kernel psi, through the harmonic expansion |
| [SO3FunHarmonic](SO3FunHarmonic.conv_py.html) | the convolution with another SO(3) function, a kernel, a function on the sphere or a vector of multipliers per degree, as conv(f, g) |
| [SO3FunRBF](SO3FunRBF.conv_py.html) | the convolution with a kernel psi, again a kernel sum when psi is an SO(3) kernel, otherwise through the harmonic expansion |
| [SO3Kernel](SO3Kernel.conv_py.html) | convolution multiplies the coefficients and divides by 2n+1, on S2 when either factor is |

## Used on

[EllipseBasedParameters](EllipseBasedParameters_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [SO3FunConvolution](SO3FunConvolution_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
