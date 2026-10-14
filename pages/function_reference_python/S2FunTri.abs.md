---
title: 'S2FunTri.abs'
sidebar: function_reference_sidebar
permalink: S2FunTri.abs_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunTri.abs.html
status: Reference
---
{% raw %}
A method of [S2FunTri](S2FunTri_index_py.html).

the absolute value of the function, taken at the vertices, again a function on the
triangulation; it has no bandwidth, so MATLAB's documented abs(sF, 'bandwidth', bw), which its
S2FunTri/abs does not take either, has no counterpart here; the expansion of |f| at a bandwidth
is S2FunHarmonic(abs(sF), bandwidth=bw)

## Syntax

```python
sF = abs(sF)
```

## Signature

```python
S2FunTri.abs(self)
```

MATLAB's [S2FunTri.abs](S2FunTri.abs.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funtri.py#L134">source</a></font>
{% endraw %}
