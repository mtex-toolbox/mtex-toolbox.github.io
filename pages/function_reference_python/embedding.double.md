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

<div class="mx-form" markdown="1">

```python
d = e.double()
```

The packed coordinates, the dimension of the embedding.

</div>

<div class="mx-form" markdown="1">

```python
d = e.double(full=True)
```

The tensor components, repeated ones included.

</div>

## Input

| `e` | embedding |

## Keywords

| keyword | default | description |
|---|---|---|
| `full` | `False` | the components of the tensors instead of the packed coordinates |

## Output

| `d` | array of shape e.shape + (e.dim,), or of the number of tensor components |

## See also

[embedding.setDouble](embedding.setDouble_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html)

MATLAB's [embedding.double](embedding.double.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L417">source</a></font>
{% endraw %}
