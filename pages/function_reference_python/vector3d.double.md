---
title: 'vector3d.double'
sidebar: function_reference_sidebar
permalink: vector3d.double_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.double.html
status: Reference
---
{% raw %}
the coordinates of the images of an embedding in their orthonormal basis, one row per
orientation, e.double(); MATLAB's double

## Syntax

The packed coordinates:

```python
d = double(e)
```

The tensor components, repeated ones included:

```python
d = double(e, full=True)
```

## Input

| | |
|---|---|
| `e` | embedding |

## Output

| | |
|---|---|
| `d` | array of shape e.shape + (e.dim,), or of the number of tensor components |

## Keywords

| | default | |
|---|---|---|
| `full` | `False` | the components of the tensors instead of the packed coordinates |

## See also

[embedding.double](embedding.double_py.html), [setDouble](setDouble_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html)

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html)

MATLAB's [vector3d.double](vector3d.double.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L526">source</a></font>
{% endraw %}
