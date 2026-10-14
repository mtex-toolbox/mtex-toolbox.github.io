---
title: 'linearProgram'
sidebar: function_reference_sidebar
permalink: linearProgram_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the minimiser of c.x under A x = b, x >= 0, by a scaled two-phase simplex with Bland's
rule; None when the program is infeasible, unbounded or out of iterations, or with
diagnostics=True the result with its status, pivot count and relative residual

## Syntax

```python
linearProgram(c, A, b, tol=1e-09, maxIter=10000, diagnostics=False)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/taylor.py#L79">source</a></font>
{% endraw %}
