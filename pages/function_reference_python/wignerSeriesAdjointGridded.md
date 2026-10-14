---
title: 'wignerSeriesAdjointGridded'
sidebar: function_reference_sidebar
permalink: wignerSeriesAdjointGridded_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the SO(3) coefficients up to bandwidth L from weighted values, every rotation rounded to the
nearest node of a Clenshaw-Curtis grid and the grid's FFT adjoint taken, MATLAB's 'gridded';
approximate, and its cost independent of the number of rotations

## Syntax

```python
wignerSeriesAdjointGridded(rots, values, L, weights=None, folds=(1, 1))
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L836">source</a></font>
{% endraw %}
