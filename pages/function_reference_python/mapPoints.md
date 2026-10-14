---
title: 'mapPoints'
sidebar: function_reference_sidebar
permalink: mapPoints_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the measurements as points on the screen

## Syntax

The positions in the map's plane:

```python
P = mapPoints(ebsd)
```

Turned to another convention:

```python
P = mapPoints(ebsd, mapLayout('x↑→y'))
```

## Input

| | |
|---|---|
| `ebsd` | EBSD |

## Output

| | |
|---|---|
| `P` | array of shape (n, 2) |

## Keywords

| | default | |
|---|---|---|
| `layout` | `None` | the 2 x 2 matrix taking the plane to the screen, mapLayout; by default the identity |

## See also

[mapRaster](mapRaster_py.html), [mapCells](mapCells_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L280">source</a></font>
{% endraw %}
