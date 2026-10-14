---
title: 'embedding.double'
sidebar: function_reference_sidebar
permalink: embedding.double_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: embedding.double.html
status: Reference
---
{% raw %}
A method of [embedding](embedding_index_py.html).

the Euclidean coordinates of the images in their orthonormal basis, one row per
orientation; MATLAB's double of an embedding

## Syntax

The packed coordinates, the dimension of the embedding:

```python
d = e.double()
```

The tensor components, repeated ones included:

```python
d = e.double(full=True)
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

[embedding.setDouble](embedding.setDouble_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html)

MATLAB's [embedding.double](embedding.double.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L416">source</a></font>
{% endraw %}
