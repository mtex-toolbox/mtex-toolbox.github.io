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
sqrt(x, ...) is x.sqrt(...), the method of the object passed; NumPy's sqrt for an array

## Syntax

```python
sqrt(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [S1FunHarmonic](S1FunHarmonic.sqrt_py.html) | the pointwise square root, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [S2FunHarmonic](S2FunHarmonic.sqrt_py.html) | the square root of the function, expanded by quadrature, or at the bandwidth given |
| [S2FunTri](S2FunTri.sqrt_py.html) | the square root of the function, taken at the vertices |
| [SO3FunCBF](SO3FunCBF.sqrt_py.html) | the square root of the function, pointwise, as a function handle |
| [SO3FunHarmonic](SO3FunHarmonic.sqrt_py.html) | the square root of the function, by quadrature at twice the bandwidth, or at the bandwidth given |
| [SO3FunRBF](SO3FunRBF.sqrt_py.html) | the square root of the function, pointwise, as a function handle |

## Used on

[SO3FunOperations](SO3FunOperations_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunOperations](S2FunOperations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
