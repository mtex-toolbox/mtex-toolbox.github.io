---
title: 'S2FunHandle.eval'
sidebar: function_reference_sidebar
permalink: S2FunHandle.eval_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S2FunHandle](S2FunHandle_index_py.html).

evaluate the callable at unit directions in the function's frame.

## Syntax

<div class="mx-form" markdown="1">

```python
values = f(directions)
```

</div>

## Description

Query directions are normalised and checked for frame compatibility before the
callable receives them. Scalar-valued output is reshaped to the query shape. Real
handles discard the imaginary part; symmetry averaging follows the construction options.

## See also

[S2FunHandle](S2FunHandle_index_py.html), [S2FunHarmonic.eval](S2FunHarmonic.eval_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
S2FunHandle.eval(self, x)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L565">source</a></font>
{% endraw %}
