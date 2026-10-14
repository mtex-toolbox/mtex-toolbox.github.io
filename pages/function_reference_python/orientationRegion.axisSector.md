---
title: 'orientationRegion.axisSector'
sidebar: function_reference_sidebar
permalink: orientationRegion.axisSector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationRegion.axisSector.html
status: Reference
---
{% raw %}
A method of [orientationRegion](orientationRegion_index_py.html).

the sector of rotation axes the region allows at a fixed rotation angle: a bound with
N = (-sin(w_i/4), cos(w_i/4) a_i) reads for q = (cos(w/2), sin(w/2) v) as
dot(v, a_i) <= cot(w/2) tan(w_i/4), a small circle about the axis

## Syntax

```python
orientationRegion.axisSector(self, omega, sector='own')
```

MATLAB's [orientationRegion.axisSector](orientationRegion.axisSector.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L120">source</a></font>
{% endraw %}
