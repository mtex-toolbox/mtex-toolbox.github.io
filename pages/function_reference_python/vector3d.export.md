---
title: 'vector3d.export'
sidebar: function_reference_sidebar
permalink: vector3d.export_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.export.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

write vector coordinates to a text table.

## Syntax

<div class="mx-form" markdown="1">

```python
v.export('vectors.txt')
```

</div>

## Description

The file-writing options are passed to [`exportVector3d`](exportVector3d_py.html). The input vectors are unchanged.

## Input

| `fname` | destination file path |

## See also

[exportVector3d](exportVector3d_py.html), [vector3d.load](vector3d.load_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.export(self, fname, *args, **kwargs)
```

</div>

MATLAB's [vector3d.export](vector3d.export.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L449">source</a></font>
{% endraw %}
