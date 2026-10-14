---
title: 'vector3d.load'
sidebar: function_reference_sidebar
permalink: vector3d.load_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.load.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

read Cartesian directions from a text file.

## Syntax

<div class="mx-form" markdown="1">

```python
v = vector3d.load('vectors.txt', columnNames=['x', 'y', 'z'])
```

</div>

## Description

The first result of [`loadVector3d`](loadVector3d_py.html) is returned as a vector3d. File-format and column
options are passed to that reader. Use loadVector3d directly to retain additional columns.

## Input

| `fname` | path to the input file |

## See also

[loadVector3d](loadVector3d_py.html), [vector3d.export](vector3d.export_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.load(fname, *args, **kwargs)
```

</div>

MATLAB's [vector3d.load](vector3d.load.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L397">source</a></font>
{% endraw %}
