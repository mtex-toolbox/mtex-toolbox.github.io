---
title: 'decompose'
sidebar: function_reference_sidebar
permalink: decompose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the decomposition of a map: the closing, the sites and their cells

## Syntax

```python
decompose(ebsd, alpha=3.1, tol=None, backend=None)
```

```python
alpha - the closing radius in multiples of the spacing; a region narrower than 2 alpha
        cells is filled and its neighbours grow in, a wider one is kept and becomes a
        notIndexed grain
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/decomposition.py#L366">source</a></font>
{% endraw %}
