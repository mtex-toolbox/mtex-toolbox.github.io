---
title: 'S2FunHarmonic.truncate'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.truncate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.truncate.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the coefficients up to degree L; without L the trailing degrees whose power, damped by
(l+1)^2, stays below 1e-8 of the largest are dropped, MATLAB's truncate

## Syntax

```python
S2FunHarmonic.truncate(self, L=None)
```

MATLAB's [S2FunHarmonic.truncate](S2FunHarmonic.truncate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L324">source</a></font>
{% endraw %}
