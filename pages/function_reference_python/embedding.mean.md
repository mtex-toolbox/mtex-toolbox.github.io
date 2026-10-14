---
title: 'embedding.mean'
sidebar: function_reference_sidebar
permalink: embedding.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: embedding.mean.html
status: Reference
---
{% raw %}
A method of [embedding](embedding_index_py.html).

the arithmetic mean of the images; MATLAB's mean of an embedding

## Syntax

<div class="mx-form" markdown="1">

```python
m = mean(e)
```

The mean image of the whole list.

</div>

<div class="mx-form" markdown="1">

```python
m = mean(e, weights=w)
```

Weighted, the weights normalised to sum one.

</div>

## Description

The mean of the images is no image of an orientation; m.orientation() projects it back,
the mean orientation, and norm(m, normalized=True) measures the spread. The mean of an
empty list is NaN. MATLAB's mean along a dimension, mean(e, d), has no counterpart here:
the mean is always over the whole list.

## Input

| `e` | embedding |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | one weight per image |

## Output

| `m` | embedding, a single image |

## See also

[embedding.orientation](embedding.orientation_py.html), [embedding.norm](embedding.norm_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html)

MATLAB's [embedding.mean](embedding.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L385">source</a></font>
{% endraw %}
