---
title: 'spatialTransformProjective.fit'
sidebar: function_reference_sidebar
permalink: spatialTransformProjective.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spatialTransformProjective](spatialTransformProjective_index_py.html).

the homography of the direct linear transform, robustly reweighted. Both point sets are
first moved to their centroid and scaled to a mean distance of sqrt(2), Hartley's
normalisation: without it the algebraic residual weighs the points by their distance from
the origin, and ten percent of outliers can hold the reweighting in a wrong basin

## Syntax

```python
spatialTransformProjective.fit(posA, posB, weights=None, robust=True, maxIter=50)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L383">source</a></font>
{% endraw %}
