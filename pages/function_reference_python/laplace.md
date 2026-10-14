---
title: 'laplace'
sidebar: function_reference_sidebar
permalink: laplace_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
apply the Laplace-Beltrami operator to a harmonic function.

## Syntax

<div class="mx-form" markdown="1">

```python
laplacian = laplace(f)
```

</div>

## Description

For an MTEX object, laplace(x, ...) calls x.laplace(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
laplace(x, *args, **kwargs)
```

</div>

## Methods it calls

| [S2FunHarmonic](S2FunHarmonic.laplace_py.html) | apply the spherical Laplace-Beltrami operator |
| [SO3FunHarmonic](SO3FunHarmonic.laplace_py.html) | the Laplace-Beltrami operator applied to the function, degree n scaled by -n(n+1) |

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
