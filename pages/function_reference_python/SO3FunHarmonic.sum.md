---
title: 'SO3FunHarmonic.sum'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.sum_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.sum.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the integral over SO(3), 8 pi^2 times the mean; with an axis the sum along it of the list

## Syntax

```python
value = sum(SO3F)
```

The pointwise sum along the first axis:

```python
SO3F = sum(SO3F, axis=0)
```

## Signature

```python
SO3FunHarmonic.sum(self, axis=None)
```

MATLAB's [SO3FunHarmonic.sum](SO3FunHarmonic.sum.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L477">source</a></font>
{% endraw %}
