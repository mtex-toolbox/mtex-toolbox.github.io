---
title: 'even'
sidebar: function_reference_sidebar
permalink: even_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
extract the part of a function unchanged by reversal of its argument.

## Syntax

<div class="mx-form" markdown="1">

```python
fEven = even(f)
```

</div>

## Description

For an MTEX object, even(x, ...) calls x.even(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
even(x, *args, **kwargs)
```

</div>

## Methods it calls

| [S1FunHarmonic](S1FunHarmonic.even_py.html) | whether f(x)=f(-x), tested from the Fourier coefficients |
| [S2FunHarmonic](S2FunHarmonic.even_py.html) | return the even part (f(v)+f(-v))/2 of a spherical function |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
