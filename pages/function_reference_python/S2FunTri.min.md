---
title: 'S2FunTri.min'
sidebar: function_reference_sidebar
permalink: S2FunTri.min_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunTri.min.html
status: Reference
---
{% raw %}
A method of [S2FunTri](S2FunTri_index_py.html).

the minimum of a function on SO(3) or the sphere, the value and the position, numLocal local minima;
with a second function or a number the pointwise minimum; with axis= along an axis of a list

## Syntax

```python
value, ori = min(odf)
f = min(odf, 0)
```

## Signature

```python
S2FunTri.min(f, *args, numLocal=1, **kwargs)
```

MATLAB's [S2FunTri.min](S2FunTri.min.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L622">source</a></font>
{% endraw %}
