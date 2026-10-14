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

<div class="mx-form" markdown="1">

```python
e = embedding(ori)
```

The images of a list of orientations.

</div>

<div class="mx-form" markdown="1">

```python
e = embedding(cs)
```

The image of the identity.

</div>

<div class="mx-form" markdown="1">

```python
d = double(e)
```

The coordinates, one row per orientation.

</div>

<div class="mx-form" markdown="1">

```python
ori = mean(e).orientation()
```

The mean orientation, the projection of the mean image.

</div>

## Description

The embedding maps every orientation to a tuple of symmetric tensors such that
symmetrically equivalent orientations have the same image. The Euclidean distance of the
images is then a metric on the orientations modulo the crystal symmetry, and averages,
clusters or regressions can be computed in a flat space.

The images form a vector space: sums, differences, multiples, the mean, the dot product and
the norm act on the components. project, or orientation, takes an image back to the
orientation whose image is closest. double(e) gives the coordinates in an orthonormal basis,
isometric to the images, and setDouble inverts it.

MATLAB's second form, embedding(u, cs, l) from given tensors, is setDouble(e, d) here, or
the keywords spec and u.

## Input

| `o` | orientation, the orientations to embed, or a crystalFrame for the image of the identity |

## Keywords

| keyword | default | description |
|---|---|---|
| `spec` | `None` | the recipe of the embedding of a crystal frame, with u: an embedding of given components |
| `u` | `None` | the components, one column per image, with spec |

## Output

| `e` | embedding, the images, e[i] the image of one orientation |

## References

- R. Hielscher, L. Lippert, Isometric embeddings of quotients of the rotation group modulo finite symmetries, arXiv:2007.09664 (2020)

## See also

[embedding.project](embedding.project_py.html), [double](S1Grid.double_py.html), [setDouble](setDouble_py.html), [calcCluster](orientation.calcCluster_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html)

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html)

MATLAB's [embedding.embedding](embedding.embedding.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L227">source</a></font>
{% endraw %}
