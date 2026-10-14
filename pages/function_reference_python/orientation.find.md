---
title: 'orientation.find'
sidebar: function_reference_sidebar
permalink: orientation.find_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.find.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientations of ori nearest to w up to symmetry: the pair (ind, d) of the nearest, the k
nearest for an integer, or two sparse matrices of those within the radius eps

## Syntax

```python
ind, d = ori.find(w)
ind, d = ori.find(w, 5)
ind, d = ori.find(w, 5*degree)
```

## Signature

```python
orientation.find(self, w, epsOrK=None)
```

MATLAB's [orientation.find](orientation.find.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L599">source</a></font>
{% endraw %}
