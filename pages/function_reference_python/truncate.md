---
title: 'truncate'
sidebar: function_reference_sidebar
permalink: truncate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
cut or pad a harmonic expansion to a specified maximum degree.

## Syntax

<div class="mx-form" markdown="1">

```python
truncated = truncate(f, bandwidth)
```

</div>

## Description

For an MTEX object, truncate(x, ...) calls x.truncate(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
truncate(x, *args, **kwargs)
```

</div>

## Methods it calls

| [S1FunHarmonic](S1FunHarmonic.truncate_py.html) | return the same circular function represented through Fourier mode L |
| [S2FunHarmonic](S2FunHarmonic.truncate_py.html) | the coefficients up to degree L |
| [S2VectorFieldHarmonic](S2VectorFieldHarmonic.truncate_py.html) | the field cut off, or padded with zeros, at the bandwidth L |
| [SO3FunHarmonic](SO3FunHarmonic.truncate_py.html) | cut or pad a harmonic orientation function to maximum degree L |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.truncate_py.html) | the field with its coefficients cut or padded to the bandwidth L |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
