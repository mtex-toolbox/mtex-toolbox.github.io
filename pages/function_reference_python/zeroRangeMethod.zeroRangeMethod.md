---
title: 'zeroRangeMethod.zeroRangeMethod'
sidebar: function_reference_sidebar
permalink: zeroRangeMethod.zeroRangeMethod_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: zeroRangeMethod.zeroRangeMethod.html
status: Reference
---
{% raw %}
a pole figure that vanishes on a region says the ODF vanishes on every fibre through
it: the density of the measurement points says where the statement is backed by data,
the density weighted by alpha (I > bg) - 1 where the data is zero

## Syntax

```python
zeroRangeMethod(pf, *args, halfwidth=None, kernel=None, threshold=None, delta=0.001, bg=None, alpha=10, bandwidth=None)
```

```python
zrm = zeroRangeMethod(pf, halfwidth=, threshold=, delta=, bg=, alpha=)
zrm.checkZeroRange(ori)          the orientations every pole figure position of which is zero
zrm.checkZeroRange(v, i)         the positions of the i-th pole figure that are zero
```

MATLAB's [zeroRangeMethod.zeroRangeMethod](zeroRangeMethod.zeroRangeMethod.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L102">source</a></font>
{% endraw %}
