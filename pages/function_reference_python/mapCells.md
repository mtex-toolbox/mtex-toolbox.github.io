---
title: 'mapCells'
sidebar: function_reference_sidebar
permalink: mapCells_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the corners of every cell of a map, shape (n, m, 2), on the screen: a corner is shared by
the cells around it and sits at the mean of where each of them puts it, the measured
centre plus the ideal offset to the corner. On a rigid grid that is the ideal corner;
under a stage drift the corners follow the centres, so the cells tile without gaps

## Syntax

```python
mapCells(ebsd, layout=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L203">source</a></font>
{% endraw %}
