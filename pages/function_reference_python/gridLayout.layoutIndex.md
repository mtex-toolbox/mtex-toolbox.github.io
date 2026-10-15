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
asks, new[r, c] = old.flat[lin[r, c]]; MATLAB's gridLayout.layoutIndex

## Syntax

<div class="mx-form" markdown="1">

```python
lin = layoutIndex(gL, (d1, d2), A.shape)
```

A.flat[lin] is A laid out in gL.

</div>

<div class="mx-form" markdown="1">

```python
lin, t = layoutIndex(gL, (d1, d2), A.shape, return_transpose=True)
```

And whether it transposes.

</div>

<div class="mx-form" markdown="1">

```python
lin = layoutIndex(gL, (d1, d2), A.shape, nearest=True)
```

The closest layout a reindexing reaches.

</div>

## Description

Two layouts of one grid differ by a transpose and flips of the two axes, which is all a
reindexing can express. The index transposes where the axes are crossed and flips an axis
that runs backwards. A tie, a grid turned by 45 degrees, keeps the order unless the column
direction of gL is nearer y than x.

The inverse is the same call with the two layouts swapped. The source is given as two
directions, since a grid may be sheared, or as the gridLayout it is in. Dimensions beyond
the first two are left alone.

## Input

| `gL` | gridLayout, the layout the array is to be laid out in, the target |
| `d` | (d1, d2), vector3d, the directions the first and the second index advance along, or the gridLayout the array is in |
| `shape` | the shape of the array |

## Keywords

| keyword | default | description |
|---|---|---|
| `nearest` | `False` | take the layout a transpose and flips reach closest, where otherwise directions that differ by more than a signed permutation are refused |
| `return_transpose` | `False` | also return t, MATLAB's second output |

## Output

| `lin` | an integer array of the reindexed shape, the linear indices into the array |
| `t` | whether the first two dimensions were exchanged (return_transpose): a transpose also exchanges whatever is indexed by dimension, a pixel step or a size |

## See also

[gridLayout](gridLayout_index_py.html), [gridify](gridify_py.html), [referenceFrame.transformationMatrix](referenceFrame.transformationMatrix_py.html)

MATLAB's [gridLayout.layoutIndex](gridLayout.layoutIndex.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames/gridlayout.py#L103">source</a></font>
{% endraw %}
