---
title: 'SO3FunHarmonic.inv'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.inv_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.inv.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

form the function evaluated at inverse rotations.

## Syntax

<div class="mx-form" markdown="1">

```python
reversed = f.inv()
```

</div>

## Description

The result satisfies reversed(g)=f(inv(g)). Its crystal and specimen frames are
exchanged, so a parent-to-child distribution becomes a child-to-parent distribution.
This is inversion of the argument, rather than a pointwise reciprocal 1/f.

## See also

[SO3FunHarmonic.withExchange](SO3FunHarmonic.withExchange_py.html), [SO3FunHarmonic.conv](SO3FunHarmonic.conv_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3FunHarmonic.inv(self)
```

</div>

MATLAB's [SO3FunHarmonic.inv](SO3FunHarmonic.inv.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L454">source</a></font>
{% endraw %}
