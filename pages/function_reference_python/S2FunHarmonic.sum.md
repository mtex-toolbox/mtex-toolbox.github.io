---
title: 'S2FunHarmonic.sum'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.sum_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.sum.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the integral over the sphere, int f dS, S2Fun/sum; with an axis the sum of the functions
along that axis of a list

## Syntax

```python
value = sum(sF)
```

The pointwise sum along the first axis:

```python
sF = sum(sF, axis=0)
```

## Signature

```python
S2FunHarmonic.sum(self, axis=None)
```

MATLAB's [S2FunHarmonic.sum](S2FunHarmonic.sum.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L467">source</a></font>
{% endraw %}
