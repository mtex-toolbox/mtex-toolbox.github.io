---
title: 'MLSSolver.doIter'
sidebar: function_reference_sidebar
permalink: MLSSolver.doIter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: MLSSolver.doIter.html
status: Reference
---
{% raw %}
A method of [MLSSolver](MLSSolver_index_py.html).

one step of the modified projected gradient; the gradient is tangent to the
normalisation, <c, v> = 0, so the regularisation block, the Dirichlet energy of the
normalised coefficients, moves linearly along the direction and keeps its scaling

## Syntax

<div class="mx-form" markdown="1">

```python
MLSSolver.doIter(self)
```

</div>

MATLAB's [MLSSolver.doIter](MLSSolver.doIter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L374">source</a></font>
{% endraw %}
