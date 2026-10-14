---
title: 'SO3FunRBF.sum'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.sum_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF.sum.html
status: Reference
---
{% raw %}
A method of [SO3FunRBF](SO3FunRBF_index_py.html).

the integral over orientation space, 8 pi^2 times the mean; with an axis the sum along it,
MATLAB's sum(odf, d) with d = axis + 1, which for a single function is the function itself

## Syntax

```python
value = sum(odf)
odf = sum(odf, axis=0)
```

## Signature

```python
SO3FunRBF.sum(self, axis=None)
```

MATLAB's [SO3FunRBF.sum](SO3FunRBF.sum.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L716">source</a></font>
{% endraw %}
