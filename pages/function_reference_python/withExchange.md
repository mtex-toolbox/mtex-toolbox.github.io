---
title: 'withExchange'
sidebar: function_reference_sidebar
permalink: withExchange_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
impose grain exchange symmetry f(g) = f(inv(g)) on an orientation function.

## Syntax

<div class="mx-form" markdown="1">

```python
symmetric = withExchange(mdf)
```

</div>

## Description

For an MTEX object, withExchange(x, ...) calls x.withExchange(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
withExchange(x, *args, **kwargs)
```

</div>

## Methods it calls

| [SO3FunHarmonic](SO3FunHarmonic.withExchange_py.html) | the function with the exchange symmetry f(g) = f(g^-1) imposed, by the mean with its inverse |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
