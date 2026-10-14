---
title: 'embedding.project'
sidebar: function_reference_sidebar
permalink: embedding.project_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: embedding.project.html
status: Reference
---
{% raw %}
A method of [embedding](embedding_index_py.html).

the rotations whose images are closest to the embedding, the projection of a point of
the Euclidean space back onto the orientations

## Syntax

The rotation of every image:

```python
r = e.project()
```

The rotation of the mean image:

```python
r = mean(e).project()
```

Fewer steps, a coarser stop:

```python
r = e.project(maxIter=50, tol=1e-8)
```

Every target is scaled to the norm of an image (a zero target to the identity image), the
best of a few seed rotations is taken, and steepest ascent of the dot product of the
image with the target follows; all targets are handled at once, in blocks of chunk. The
result is a rotation, e.orientation() the orientation in the crystal frame of e;
MATLAB's second output, the projected embedding, is embedding of that orientation.

## Input

| | |
|---|---|
| `e` | embedding, the targets |

## Output

| | |
|---|---|
| `r` | rotation, one per image, whose image is closest to it |

## Keywords

| | default | |
|---|---|---|
| `seeds` | `None` | the rotations the ascent starts from, the best one per target; by default a few spread over the fundamental region |
| `maxIter` | `200` | the largest number of ascent steps |
| `tol` | `1e-10` | the ascent stops where the norm of the gradient falls below it |
| `chunk` | `2048` | the number of targets handled at once |

## See also

[embedding](embedding_index_py.html), [embedding.orientation](embedding.orientation_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html)

MATLAB's [embedding.project](embedding.project.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L390">source</a></font>
{% endraw %}
