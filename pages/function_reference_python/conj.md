---
title: 'conj'
sidebar: function_reference_sidebar
permalink: conj_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
take the quaternion or complex conjugate of an object.

## Syntax

<div class="mx-form" markdown="1">

```python
result = conj(x)
```

</div>

## Description

For an MTEX object, conj(x, ...) calls x.conj(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.conjugate.

## Signature

<div class="mx-form" markdown="1">

```python
conj(x, *args, **kwargs)
```

</div>

## Methods it calls

| [quaternion](quaternion.conj_py.html) | return the quaternion conjugate `a - b*i - c*j - d*k` |
| [S1FunHarmonic](S1FunHarmonic.conj_py.html) | the complex conjugate function |
| [S2FunHarmonic](S2FunHarmonic.conj_py.html) | the complex conjugate function |
| [SO3FunHarmonic](SO3FunHarmonic.conj_py.html) | the complex conjugate function |

## Used on

[SO3FunVectorValued](SO3FunVectorValued_py.html), [S2FunVectorValued](S2FunVectorValued_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
