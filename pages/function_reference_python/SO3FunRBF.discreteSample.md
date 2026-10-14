---
title: 'SO3FunRBF.discreteSample'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.discreteSample_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF.discreteSample.html
status: Reference
---
{% raw %}
A method of [SO3FunRBF](SO3FunRBF_index_py.html).

the nodes of a grid drawn with probability proportional to f, moved by a random rotation
within the grid resolution and by a random element of each group; a radial basis function
exactly: a centre by its weight, the angle by inverse transform of the kernel density, a
uniform axis, a group element on each side; a Bingham distribution exactly by rejection; a
sum of kernel forms term by term

## Syntax

```python
SO3FunRBF.discreteSample(f, n, resolution=None, rng=None, withoutReplacement=False, range=(0, 1))
```

MATLAB's [SO3FunRBF.discreteSample](SO3FunRBF.discreteSample.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L735">source</a></font>
{% endraw %}
