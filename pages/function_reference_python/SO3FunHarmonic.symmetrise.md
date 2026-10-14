---
title: 'SO3FunHarmonic.symmetrise'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.symmetrise_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.symmetrise.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

project the coefficients onto the symmetries carried by the two frames.

## Syntax

<div class="mx-form" markdown="1">

```python
symmetric = f.symmetrise()
```

</div>

## Description

The result is invariant under the crystal and specimen point groups. If f.antipodal
is set, the result is also averaged with its inverse, imposing grain exchange
symmetry f(g)=f(inv(g)). Each member of a function list is projected separately.

## See also

[SO3FunHarmonic.withExchange](SO3FunHarmonic.withExchange_py.html), [SO3FunHarmonic.inv](SO3FunHarmonic.inv_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3FunHarmonic.symmetrise(self)
```

</div>

MATLAB's [SO3FunHarmonic.symmetrise](SO3FunHarmonic.symmetrise.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L434">source</a></font>
{% endraw %}
