---
title: 'sqrt'
sidebar: function_reference_sidebar
permalink: sqrt_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
take the pointwise square root of a function or numeric array.

## Syntax

<div class="mx-form" markdown="1">

```python
root = sqrt(f)
```

</div>

## Description

For an MTEX object, sqrt(x, ...) calls x.sqrt(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.sqrt.

## Signature

<div class="mx-form" markdown="1">

```python
sqrt(x, *args, **kwargs)
```

</div>

## Methods it calls

| [S1FunHarmonic](S1FunHarmonic.sqrt_py.html) | the pointwise square root, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [S2FunHarmonic](S2FunHarmonic.sqrt_py.html) | the square root of the function, expanded by quadrature, or at the bandwidth given |
| [S2FunTri](S2FunTri.sqrt_py.html) | take square roots at the vertices and interpolate those values linearly |
| [SO3FunCBF](SO3FunCBF.sqrt_py.html) | the square root of the function, pointwise, as a function handle |
| [SO3FunHarmonic](SO3FunHarmonic.sqrt_py.html) | the square root of the function, by quadrature at twice the bandwidth, or at the bandwidth given |
| [SO3FunRBF](SO3FunRBF.sqrt_py.html) | the square root of the function, pointwise, as a function handle |

## Used on

[SO3FunOperations](SO3FunOperations_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunOperations](S2FunOperations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
