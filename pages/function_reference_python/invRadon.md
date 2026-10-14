---
title: 'invRadon'
sidebar: function_reference_sidebar
permalink: invRadon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
invert the spherical Funk transform on its even modes.

## Syntax

<div class="mx-form" markdown="1">

```python
f = invRadon(transformed)
```

</div>

## Description

For an MTEX object, invRadon(x, ...) calls x.invRadon(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
invRadon(x, *args, **kwargs)
```

</div>

## Methods it calls

| [S2FunHarmonic](S2FunHarmonic.invRadon_py.html) | invert the Funk transform on the even spherical harmonics |

## Used on

[S2FunRadon](S2FunRadon_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
