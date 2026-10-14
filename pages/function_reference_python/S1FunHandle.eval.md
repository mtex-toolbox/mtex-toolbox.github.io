---
title: 'S1FunHandle.eval'
sidebar: function_reference_sidebar
permalink: S1FunHandle.eval_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHandle.eval.html
status: Reference
---
{% raw %}
A method of [S1FunHandle](S1FunHandle_index_py.html).

call the supplied function at numeric angles in radians.

## Syntax

<div class="mx-form" markdown="1">

```python
values = f(angles)
```

</div>

## Description

Angles are passed to the callable as a floating-point array. For a real handle,
any imaginary part is discarded. The callable is responsible for its periodicity
and for returning values with a shape appropriate to the queries.

## See also

[S1FunHandle](S1FunHandle_index_py.html), [S1FunHarmonic.eval](S1FunHarmonic.eval_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
S1FunHandle.eval(self, x)
```

</div>

MATLAB's [S1FunHandle.eval](S1FunHandle.eval.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L737">source</a></font>
{% endraw %}
