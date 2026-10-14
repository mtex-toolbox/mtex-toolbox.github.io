---
title: 'S2FunHarmonic.even'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.even_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.even.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

return the even part (f(v)+f(-v))/2 of a spherical function.

## Syntax

<div class="mx-form" markdown="1">

```python
evenPart = f.even()
```

</div>

## Description

Odd harmonic degrees are removed. The result is unchanged by reversal of a direction,
which is appropriate when v and -v represent the same axis.

## See also

[S2FunHarmonic.radon](S2FunHarmonic.radon_py.html), [S2FunHarmonic.symmetrise](S2FunHarmonic.symmetrise_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
S2FunHarmonic.even(self)
```

</div>

MATLAB's [S2FunHarmonic.even](S2FunHarmonic.even.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L471">source</a></font>
{% endraw %}
