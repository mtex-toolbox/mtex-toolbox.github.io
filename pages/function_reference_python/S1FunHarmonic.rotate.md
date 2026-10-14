---
title: 'S1FunHarmonic.rotate'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHarmonic.rotate.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

shift the circular function by an angle in radians.

## Syntax

<div class="mx-form" markdown="1">

```python
shifted = f.rotate(30*degree)
```

</div>

## Description

The result satisfies shifted(x)=f(x-phi), so a peak originally at zero moves to phi.
The Fourier coefficients are multiplied by `exp(1j*k*phi)`; the bandwidth is unchanged.

## Input

| `phi` | scalar rotation angle in radians |

## See also

[S1FunHarmonic.eval](S1FunHarmonic.eval_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
S1FunHarmonic.rotate(self, phi)
```

</div>

MATLAB's [S1FunHarmonic.rotate](S1FunHarmonic.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L280">source</a></font>
{% endraw %}
