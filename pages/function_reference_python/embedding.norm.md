---
title: 'embedding.norm'
sidebar: function_reference_sidebar
permalink: embedding.norm_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: embedding.norm.html
status: Reference
---
{% raw %}
A method of [embedding](embedding_index_py.html).

the Euclidean norm of every image, with normalized=True over the norm every orientation's
image has; the sum of squares without a temporary, which is four times faster than
np.linalg.norm on a large list

## Syntax

```python
n = norm(e)
n = norm(e, normalized=True)
```

## Signature

```python
embedding.norm(self, normalized=False)
```

MATLAB's [embedding.norm](embedding.norm.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L343">source</a></font>
{% endraw %}
