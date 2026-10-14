---
title: 'The class colorGrid'
sidebar: function_reference_sidebar
permalink: colorGrid_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a direction key evaluated once on a cube map of the sphere at the resolution, its colours
then looked up at the node nearest a direction

## Syntax

```python
g = colorGrid(key, resolution=0.5*degree)
```

## Members

| | |
|---|---|
| [direction2color](colorGrid.direction2color_py.html) | a NaN or zero direction, the pole of an unmeasured orientation, has no grid node and is coloured white, as MTEX greys such a cell rather than failing the map |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L434">source</a></font>
{% endraw %}
