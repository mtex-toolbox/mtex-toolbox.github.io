---
title: 'SO3FunHandle.eval'
sidebar: function_reference_sidebar
permalink: SO3FunHandle.eval_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHandle.eval.html
status: Reference
---
{% raw %}
A method of [SO3FunHandle](SO3FunHandle_index_py.html).

evaluate the callable at orientations in the function's reference frames.

## Syntax

<div class="mx-form" markdown="1">

```python
values = f(ori)
```

</div>

## Description

Plain rotations are wrapped as orientations carrying the function's frames. An
orientation query must already have compatible frames. For a scalar-valued callable,
values are reshaped to the query shape; real handles discard any imaginary part.
Any symmetry averaging requested at construction is applied during each evaluation.

## See also

[SO3FunHandle](SO3FunHandle_index_py.html), [SO3FunHarmonic.eval](SO3FunHarmonic.eval_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3FunHandle.eval(self, x)
```

</div>

MATLAB's [SO3FunHandle.eval](SO3FunHandle.eval.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L278">source</a></font>
{% endraw %}
