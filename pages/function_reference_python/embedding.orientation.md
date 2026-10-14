---
title: 'embedding.orientation'
sidebar: function_reference_sidebar
permalink: embedding.orientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: embedding.orientation.html
status: Reference
---
{% raw %}
A method of [embedding](embedding_index_py.html).

the orientations whose images are closest to the embedding, the projection back onto
the orientations of e.CS; MATLAB's orientation of an embedding

## Syntax

<div class="mx-form" markdown="1">

```python
ori = e.orientation()
```

The orientation of every image.

</div>

<div class="mx-form" markdown="1">

```python
ori = mean(e).orientation()
```

The mean orientation of a list.

</div>

<div class="mx-form" markdown="1">

```python
ori = mean(e).orientation(maxIter=50)
```

Fewer steps of the projection.

</div>

## Description

The projection is embedding.project, whose keywords are passed on (seeds, maxIter, tol,
chunk); the result is an orientation from the crystal frame of e to SS.

## Input

| `e` | embedding |

## Keywords

| keyword | default | description |
|---|---|---|
| `SS` | `None` | the specimen frame of the orientations, by default the default specimen frame |

## Output

| `ori` | orientation, one per image |

## See also

[embedding.project](embedding.project_py.html), [embedding.mean](embedding.mean_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html)

MATLAB's [embedding.orientation](embedding.orientation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L494">source</a></font>
{% endraw %}
