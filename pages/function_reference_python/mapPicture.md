---
title: 'mapPicture'
sidebar: function_reference_sidebar
permalink: mapPicture_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the picture of two dimensional map plots on the rectangle of the plane they lie in, to be
shown in a 3D scene

## Syntax

<div class="mx-form" markdown="1">

```python
pic = mapPicture([(plotEBSD, ebsdSlice, (), {})])
```

The phase map of a slice in space.

</div>

<div class="mx-form" markdown="1">

```python
pic = mapPicture(sources, pixels=400)
```

A coarser picture.

</div>

## Description

The plots are drawn by their own commands, one over the other, into an axes filling a
figure pyplot does not know, so that every option of the map plots holds in space too;
white, where nothing was measured, is transparent. The picture keeps its sources, so that a
map in the same plane is drawn into it rather than beside it. A held figure does this
itself when a map of another plane is plotted into it.

## Input

| `sources` | a list of (plotFun, map, args, kw), the plot commands of maps in one plane |

## Keywords

| keyword | default | description |
|---|---|---|
| `pixels` | `1600` | the length of the picture's longer side in pixels |

## Output

| `pic` | picture3d, the image with the corners it spans in space |

## See also

[gcs](gcs_py.html), [setCamera](setCamera_py.html), [EBSD3.slice](EBSD3.slice_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L420">source</a></font>
{% endraw %}
