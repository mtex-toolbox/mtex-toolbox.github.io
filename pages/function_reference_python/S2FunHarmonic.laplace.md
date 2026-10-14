---
title: 'S2FunHarmonic.laplace'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.laplace_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

apply the spherical Laplace-Beltrami operator.

## Syntax

<div class="mx-form" markdown="1">

```python
laplacian = f.laplace()
```

</div>

## Description

Coefficients of degree l are multiplied by `-l*(l+1)`; the constant mode vanishes.
The result is another spherical harmonic function with the same frame and bandwidth.

## See also

[S2FunHarmonic.grad](S2FunHarmonic.grad_py.html), [S2FunHarmonic](S2FunHarmonic_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
S2FunHarmonic.laplace(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L741">source</a></font>
{% endraw %}
