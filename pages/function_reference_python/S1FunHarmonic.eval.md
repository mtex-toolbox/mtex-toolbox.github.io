---
title: 'S1FunHarmonic.eval'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.eval_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHarmonic.eval.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

evaluate the Fourier series at angles in radians.

## Syntax

<div class="mx-form" markdown="1">

```python
values = f(angles)
values = f.eval(angles)
```

</div>

## Description

The result has the shape of the angle array. The function is periodic with period
`2*pi`, so angles outside the principal interval are valid. Real functions return
real values; complex functions retain their imaginary part.

## See also

[S1FunHarmonic](S1FunHarmonic_index_py.html), [S1FunHarmonic.interpolate](S1FunHarmonic.interpolate_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
S1FunHarmonic.eval(self, x)
```

</div>

MATLAB's [S1FunHarmonic.eval](S1FunHarmonic.eval.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L234">source</a></font>
{% endraw %}
