---
title: 'S1FunHarmonic.diff'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.diff_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHarmonic.diff.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

differentiate the circular function with respect to its angle in radians.

## Syntax

<div class="mx-form" markdown="1">

```python
derivative = f.diff()
```

</div>

## Description

For the convention `f(x)=sum(c[k]*exp(-1j*k*x))`, the derivative coefficient is
`-1j*k*c[k]`. Return another S1FunHarmonic with the same bandwidth. Evaluate it at
angles, or use grad(angles) to evaluate the derivative directly.

## See also

[S1FunHarmonic.grad](S1FunHarmonic.grad_py.html), [S1FunHarmonic.eval](S1FunHarmonic.eval_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
S1FunHarmonic.diff(self)
```

</div>

MATLAB's [S1FunHarmonic.diff](S1FunHarmonic.diff.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L248">source</a></font>
{% endraw %}
