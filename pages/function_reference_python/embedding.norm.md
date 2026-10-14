---
title: 'embedding.norm'
sidebar: function_reference_sidebar
permalink: embedding.norm_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: embedding.norm.html
status: Reference
---
{% raw %}
A method of [embedding](embedding_index_py.html).

the Euclidean norm of every image; MATLAB's norm of an embedding

## Syntax

<div class="mx-form" markdown="1">

```python
n = norm(e)
```

The norm of every image.

</div>

<div class="mx-form" markdown="1">

```python
n = norm(e, normalized=True)
```

Over the norm of an orientation's image.

</div>

## Description

Every orientation has an image of the same norm, so the normalized norm is one at an
orientation and smaller at a mean of several, a measure of their spread. The sum of
squares is taken without a temporary, four times faster than np.linalg.norm on a large
list.

## Input

| `e` | embedding |

## Keywords

| keyword | default | description |
|---|---|---|
| `normalized` | `False` | divide by the norm of the image of an orientation |

## Output

| `n` | array of the shape of e |

## See also

[embedding.mean](embedding.mean_py.html), [embedding.dot](embedding.dot_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html)

MATLAB's [embedding.norm](embedding.norm.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L343">source</a></font>
{% endraw %}
