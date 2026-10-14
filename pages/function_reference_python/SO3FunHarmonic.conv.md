---
title: 'SO3FunHarmonic.conv'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.conv_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.conv.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the convolution with another SO(3) function, a kernel, a function on the sphere or a vector of
multipliers per degree, as conv(f, g); with inverse=True of the inverse of f

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = conv(SO3F1, SO3F2)
```

Two functions on SO(3).

</div>

<div class="mx-form" markdown="1">

```python
SO3F = conv(SO3F1, psi)
```

With an SO3Kernel, a smoothing.

</div>

<div class="mx-form" markdown="1">

```python
sF2 = conv(SO3F1, sF1)
```

With a function on the sphere, a function on the sphere.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3F1.conv(psi, inverse=True)
```

Of the inverse function f(g^-1).

</div>

## Description

Two functions on SO(3) chain: the specimen frame of SO3F2 must be the crystal frame of SO3F1,
and the result maps from the crystal frame of SO3F2 to the specimen frame of SO3F1. A function
on the sphere lives in the specimen frame of SO3F1 and gives one in its crystal frame. A
kernel or the multipliers scale the coefficients degree by degree. See SO3FunConvolution for
the definitions.

## Input

| `SO3F1` | SO3FunHarmonic |
| `g` | SO3Fun, SO3Kernel, S2Fun, S2Kernel, or an array of multipliers per degree |

## Keywords

| keyword | default | description |
|---|---|---|
| `inverse` | `False` | convolve the inverse function f(g^-1), its frames exchanged |

## Output

| `SO3F` | SO3FunHarmonic |
| `sF2` | S2FunHarmonic, for a function or kernel on the sphere |

## See also

[SO3Kernel.conv](SO3Kernel.conv_py.html), [S2FunHarmonic.conv](S2FunHarmonic.conv_py.html), [SO3FunConvolution](SO3FunConvolution_py.html)

MATLAB's [SO3FunHarmonic.conv](SO3FunHarmonic.conv.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L672">source</a></font>
{% endraw %}
