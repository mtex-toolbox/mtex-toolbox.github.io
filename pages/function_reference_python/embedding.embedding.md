---
title: 'embedding.embedding'
sidebar: function_reference_sidebar
permalink: embedding.embedding_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: embedding.embedding.html
status: Reference
---
{% raw %}
the isometric embedding of orientations into a Euclidean space: one matrix of
components with a column per orientation, so that norm(e1 - e2) is a metric on the
orientations modulo the crystal symmetry

## Syntax

The images of a list of orientations:

```python
e = embedding(ori)
```

The image of the identity:

```python
e = embedding(cs)
```

The coordinates, one row per orientation:

```python
d = double(e)
```

The mean orientation, the projection of the mean image:

```python
ori = mean(e).orientation()
```

An orientation g is mapped to a tuple of symmetric tensors, the mean over the proper
point group of the powers of the turned vectors g s l_i, less their mean over SO(3) and
weighted, so that symmetrically equivalent orientations have the same image and the
Euclidean distance of the images is a metric on the quotient. The vectors l_i and the
powers are taken from the group: the power is the order of the principal axis, the vectors
its axis and a two fold axis across it where the group has one. The coordinates of
double(e) are taken in an orthonormal basis of the space the images span, so they are
isometric and setDouble inverts them.

The images form a vector space: sums, differences, multiples, the mean, the dot product
and the norm act on the components, and project, or orientation, takes an image back to
the orientation whose image is closest. MATLAB's second form, embedding(u, cs, l) from
given tensors, is built here by setDouble(e, d) or from the keywords.

## Input

| | |
|---|---|
| `o` | orientation, the orientations to embed, or a crystalFrame for the image of the identity |

## Output

| | |
|---|---|
| `e` | embedding, the images, e[i] the image of one orientation |

## Keywords

| | default | |
|---|---|---|
| `spec` | `None` | the recipe of the embedding of a crystal frame, with u: an embedding of given components |
| `u` | `None` | the components, one column per image, with spec |

## References

- R. Hielscher, L. Lippert, Isometric embeddings of quotients of the rotation group modulo finite symmetries, arXiv:2007.09664 (2020)

## See also

[embedding.project](embedding.project_py.html), [double](S1Grid.double_py.html), [setDouble](setDouble_py.html), [calcCluster](orientation.calcCluster_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html)

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html)

MATLAB's [embedding.embedding](embedding.embedding.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L227">source</a></font>
{% endraw %}
