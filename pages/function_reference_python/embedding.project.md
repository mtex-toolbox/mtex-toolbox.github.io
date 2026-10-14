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

the orientation whose image is closest, by steepest ascent from the best of a few seeds,
all images at once; the gradient along a generator G is <G u, t> = -<u, G t>, the action
being skew, so G t is formed once per target and every step is one batch of images

## Syntax

```python
embedding.project(self, seeds=None, maxIter=200, tol=1e-10, chunk=2048)
```

MATLAB's [embedding.project](embedding.project.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L361">source</a></font>
{% endraw %}
