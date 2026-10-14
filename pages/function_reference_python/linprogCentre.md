---
title: 'linprogCentre'
sidebar: function_reference_sidebar
permalink: linprogCentre_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: linprogCentre.html
status: Reference
---
{% raw %}
the solutions of many linear programs min c.x under A x = y, x >= 0 at once, each the
analytic centre of its optimal face, which is symmetric where the program is (a simplex
gives any vertex), NaN where one does not converge (MATLAB's linprogCentre). c is (n,) or
(N, n), A (m, n) or (N, m, n), y (m,) or (N, m); a primal dual path following method, its
Newton steps towards the central path at 0.3 mu

## Syntax

```python
linprogCentre(c, A, y, tol=1e-09, maxIter=100)
```

MATLAB's [linprogCentre](linprogCentre.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/taylor.py#L161">source</a></font>
{% endraw %}
