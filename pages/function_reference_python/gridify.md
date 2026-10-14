---
title: 'gridify'
sidebar: function_reference_sidebar
permalink: gridify_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
gridify(x, ...) is x.gridify(...), the method of the object passed

## Syntax

```python
gridify(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [EBSD](EBSD.gridify_py.html) | the same map with its arrays in map shape, the missing cells padding |
| [EBSD3](EBSD3.gridify_py.html) | the list on the (n1, n2, n3) array of its lattice, every cell no voxel occupies padded as notIndexed |

## Used on

[EBSDGrid](EBSDGrid_py.html), [EBSDInter](EBSDInter_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
