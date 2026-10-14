---
title: 'S2FunTri.sqrt'
sidebar: function_reference_sidebar
permalink: S2FunTri.sqrt_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S2FunTri](S2FunTri_index_py.html).

take square roots at the vertices and interpolate those values linearly.

## Syntax

<div class="mx-form" markdown="1">

```python
root = f.sqrt()
```

</div>

## Description

The triangulation and frame are retained. Between vertices, root(v) generally differs
from sqrt(f(v)), since interpolation and square root do not commute. Negative real
vertex values produce NaN; use complex input values when a complex root is required.

## See also

[S2FunTri.abs](S2FunTri.abs_py.html), [S2FunHarmonic.sqrt](S2FunHarmonic.sqrt_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
S2FunTri.sqrt(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funtri.py#L173">source</a></font>
{% endraw %}
