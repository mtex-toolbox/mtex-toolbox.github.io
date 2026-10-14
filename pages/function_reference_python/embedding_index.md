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

```python
e = embedding(ori)                 the images of a list, e[i] the image of one
double(e)                          the coordinates, one row per orientation
mean(e), e.orientation()           the mean image and the orientation closest to it
```

## Members

| | |
|---|---|
| [cat](embedding.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [CS](embedding.CS_py.html) | the crystal frame the embedding belongs to |
| [dim](embedding.dim_py.html) | the dimension of the space of the images, the length of a row of double(e) |
| [dot](embedding.dot_py.html) | the inner product of two embeddings of the same crystal frame, image by image |
| [double](embedding.double_py.html) | the Euclidean coordinates in the orthonormal basis, one row per orientation |
| [embedding](embedding.embedding_py.html) | the isometric embedding of orientations into a Euclidean space: one matrix of components with a column per orientation, so that norm(e1 - e2) is a metric on the orientations modulo the crystal symmetry |
| [isclose](embedding.isclose_py.html) | whether two embeddings belong to the same frame and have the same images up to atol |
| [mean](embedding.mean_py.html) | the mean image, weighted by weights if given |
| [minus](embedding.minus_py.html) |  |
| [mtimes](embedding.mtimes_py.html) |  |
| [norm](embedding.norm_py.html) | the Euclidean norm of every image, with normalized=True over the norm every orientation's image has |
| [orientation](embedding.orientation_py.html) | the orientations whose images are closest to the embedding, the projection back to the orientations of e.CS in the specimen frame SS |
| [plot](embedding.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plus](embedding.plus_py.html) |  |
| [project](embedding.project_py.html) | the orientation whose image is closest, by steepest ascent from the best of a few seeds, all images at once |
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
