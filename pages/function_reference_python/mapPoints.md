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

<div class="mx-form" markdown="1">

```python
P = mapPoints(ebsd)
```

The positions in the map's plane.

</div>

<div class="mx-form" markdown="1">

```python
P = mapPoints(ebsd, mapLayout('x↑→y'))
```

Turned to another convention.

</div>

## Input

| `ebsd` | EBSD |

## Keywords

| keyword | default | description |
|---|---|---|
| `layout` | `None` | the 2 x 2 matrix taking the plane to the screen, mapLayout; by default the identity |

## Output

| `P` | array of shape (n, 2) |

## See also

[mapRaster](mapRaster_py.html), [mapCells](mapCells_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L280">source</a></font>
{% endraw %}
