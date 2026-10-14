---
title: 'gbcAngle.evaluate'
sidebar: function_reference_sidebar
permalink: gbcAngle.evaluate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [gbcAngle](gbcAngle_index_py.html).

the connectivity of the pairs i[k], j[k]: the share of the angle levels their misorientation
stays below, 0 across phases, 1 between not indexed measurements; a compiled loop when
numba is the backend

## Syntax

```python
gbcAngle.evaluate(self, ebsd, i, j, backend=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/criteria.py#L146">source</a></font>
{% endraw %}
