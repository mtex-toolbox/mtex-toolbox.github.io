---
title: 'h5ImageIndex'
sidebar: function_reference_sidebar
permalink: h5ImageIndex_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the pictures a file holds, as an index and not as pixels: a vendor writes its electron
images beside the map, and one Oxford file carries a dozen of three megapixels each, so
what the map keeps is where they are and what shape they have. h5Image reads one.

## Syntax

<div class="mx-form" markdown="1">

```python
from mtex.io.h5 import h5Paths
f = h5py.File(mtexdatafile('EMSphinx'))
```

</div>

<div class="mx-form" markdown="1">

```python
images = h5ImageIndex(f, *h5Paths(f))
```

Every picture of the file.

</div>

<div class="mx-form" markdown="1">

```python
images = h5ImageIndex(f, *h5Paths(f), n=508*955)
```

Leaving out the columns of a map of n pixels.

</div>

## Description

A picture is a numeric data set at least 16 pixels on a side: a plane, a plane of three or
four colour channels either way round, or a flat run whose size the cell counts of the
nearest Header group state. A group is never one. Every picture is a dict of its name, its
path, its shape (rows, columns[, channels]) and its dtype. The loaders of the vendors' HDF5
files store this index as ebsd.meta['images'].

## Input

| `f` | an open h5py file |
| `paths` | every group and data set of the file, as h5Paths lists them |
| `groups` | the set of those paths that are groups |

## Keywords

| keyword | default | description |
|---|---|---|
| `n` | `0` | the number of measurements of the map; a data set of n rows, or of n values, is a column of the map and no picture |

## Output

| `images` | a list of dicts with the keys name, path, shape and dtype |

## See also

[h5Image](h5Image_py.html), [loadEBSD](loadEBSD_ang_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/h5.py#L234">source</a></font>
{% endraw %}
