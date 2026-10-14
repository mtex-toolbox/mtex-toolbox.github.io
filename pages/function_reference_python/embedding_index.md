---
title: 'The class embedding'
sidebar: function_reference_sidebar
permalink: embedding_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: embedding_index.html
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
| `spec` |  | the recipe of the embedding of a crystal frame, with u: an embedding of given components |
| `u` |  | the components, one column per image, with spec |

## Output

| `e` | embedding, the images, e[i] the image of one orientation |

## References

- R. Hielscher, L. Lippert, Isometric embeddings of quotients of the rotation group modulo finite symmetries, arXiv:2007.09664 (2020)

## See also

[embedding.project](embedding.project_py.html), [double](S1Grid.double_py.html), [setDouble](setDouble_py.html), [calcCluster](orientation.calcCluster_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html)

## Members

| [cat](embedding.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [CS](embedding.CS_py.html) | the crystal frame the embedding belongs to |
| [dim](embedding.dim_py.html) | the dimension of the space of the images, the length of a row of double(e) |
| [dot](embedding.dot_py.html) | the inner product of two embeddings of the same crystal frame, image by image |
| [double](embedding.double_py.html) | the Euclidean coordinates of the images in their orthonormal basis, one row per orientation |
| [embedding](embedding.embedding_py.html) | the isometric embedding of orientations into a Euclidean space: one matrix of components with a column per orientation, so that norm(e1 - e2) is a metric on the orientations modulo the crystal symmetry |
| [isclose](embedding.isclose_py.html) | whether two embeddings belong to the same frame and have the same images up to atol |
| [mean](embedding.mean_py.html) | the arithmetic mean of the images |
| [minus](embedding.minus_py.html) |  |
| [mtimes](embedding.mtimes_py.html) |  |
| [norm](embedding.norm_py.html) | the Euclidean norm of every image |
| [orientation](embedding.orientation_py.html) | the orientations whose images are closest to the embedding, the projection back onto the orientations of e.CS |
| [plot](embedding.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plus](embedding.plus_py.html) |  |
| [project](embedding.project_py.html) | the rotations whose images are closest to the embedding, the projection of a point of the Euclidean space back onto the orientations |
| [rdivide](embedding.rdivide_py.html) |  |
| [rotate](embedding.rotate_py.html) | the images turned by a rotation |
| [setDouble](embedding.setDouble_py.html) | the embedding with the given coordinates in the orthonormal basis, one row per image, the inverse of double(e) |
| [size](embedding.size_py.html) | the number of images |
| [sum](embedding.sum_py.html) | sum(x) of an MTEX object by its own sum, of an array or with an axis as NumPy sums, of any other iterable as Python sums, so that from mtex import * keeps Python's sum |
| [sym](embedding.sym_py.html) | sym(T) is T.sym(): the symmetric part, the mean over the permutations of the indices |
| [times](embedding.times_py.html) |  |

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html)

MATLAB's [embedding_index](embedding_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L227">source</a></font>
{% endraw %}
