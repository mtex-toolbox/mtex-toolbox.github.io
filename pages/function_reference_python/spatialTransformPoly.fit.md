---
title: 'spatialTransformPoly.fit'
sidebar: function_reference_sidebar
permalink: spatialTransformPoly.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spatialTransformPoly](spatialTransformPoly_index_py.html).

the polynomial displacement fitted to point pairs by least squares, reweighted against outliers
with Tukey's bisquare unless robust=False

## Syntax

```python
spatialTransformPoly.fit(posA, posB, weights=None, degree=1, robust=True, maxIter=50)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L456">source</a></font>
{% endraw %}
