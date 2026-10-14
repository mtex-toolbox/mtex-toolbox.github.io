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

```python
embedding(o=None, *, spec=None, u=None)
```

```python
e = embedding(ori)                 the images of a list, e[i] the image of one
double(e)                          the coordinates, one row per orientation
mean(e), e.orientation()           the mean image and the orientation closest to it
```

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html)

MATLAB's [embedding.embedding](embedding.embedding.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L227">source</a></font>
{% endraw %}
