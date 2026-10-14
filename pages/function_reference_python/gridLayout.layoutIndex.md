---
title: 'gridLayout.layoutIndex'
sidebar: function_reference_sidebar
permalink: gridLayout.layoutIndex_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: gridLayout.layoutIndex.html
status: Reference
---
{% raw %}
the index that lays out an array whose first and second index run along d = (d1, d2) as gL
asks: new[r, c] = old.flat[lin[r, c]]. It transposes where the axes are crossed and flips an
axis that runs backwards; a tie, a grid turned by 45 degrees, keeps the order unless the
column of gL is nearer y than x

## Syntax

```python
layoutIndex(gL, d, shape, nearest=False, return_transpose=False)
```

MATLAB's [gridLayout.layoutIndex](gridLayout.layoutIndex.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/gridlayout.py#L82">source</a></font>
{% endraw %}
