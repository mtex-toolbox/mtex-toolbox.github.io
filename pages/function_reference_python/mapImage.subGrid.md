---
title: 'mapImage.subGrid'
sidebar: function_reference_sidebar
permalink: mapImage.subGrid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.subGrid.html
status: Reference
---
{% raw %}
A method of [mapImage](mapImage_index_py.html).

a rectangle cut out of the image; MATLAB's mapImage.subGrid

## Syntax

<div class="mx-form" markdown="1">

```python
mg = mg.subGrid(range(2, 10), range(5, 20))
```

Rows 2 to 9, columns 5 to 19.

</div>

<div class="mx-form" markdown="1">

```python
mg = mg.subGrid(slice(2, 10), slice(5, 20))
```

The same as slices.

</div>

<div class="mx-form" markdown="1">

```python
mg = mg.subGrid(mask)
```

The box round a mask over the grid.

</div>

## Description

The image, the map riding along with it and the origin are cut so the geometry still says
where the remaining pixels are; nothing is resampled. Rows and columns count from zero and
must be contiguous and ascending.

## Input

| `mg` | mapImage |
| `rows` | indices or slice of the rows, or a boolean mask over the grid |

## Keywords

| keyword | default | description |
|---|---|---|
| `cols` | `None` | indices or slice of the columns, omitted with a mask |

## Output

| `mg` | mapImage |

## See also

[mapImage.pos2ind](mapImage.pos2ind_py.html), [mapImage.extent](mapImage.extent_py.html)

MATLAB's [mapImage.subGrid](mapImage.subGrid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L312">source</a></font>
{% endraw %}
