---
title: 'The class zeroRangeMethod'
sidebar: function_reference_sidebar
permalink: zeroRangeMethod_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: zeroRangeMethod_index.html
status: Reference
---
{% raw %}
a pole figure that vanishes on a region says the ODF vanishes on every fibre through
it: the density of the measurement points says where the statement is backed by data,
the density weighted by alpha (I > bg) - 1 where the data is zero

```python
zrm = zeroRangeMethod(pf, halfwidth=, threshold=, delta=, bg=, alpha=)
zrm.checkZeroRange(ori)          the orientations every pole figure position of which is zero
zrm.checkZeroRange(v, i)         the positions of the i-th pole figure that are zero
```

## Members

| | |
|---|---|
| [checkZeroRange](zeroRangeMethod.checkZeroRange_py.html) | which orientations the zero range method rules out: those some pole figure is zero at in one of their symmetric poles |
| [plot](zeroRangeMethod.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [zeroRangeMethod](zeroRangeMethod.zeroRangeMethod_py.html) | a pole figure that vanishes on a region says the ODF vanishes on every fibre through it: the density of the measurement points says where the statement is backed by data, the density weighted by alpha (I > bg) - 1 where the data is zero |

MATLAB's [zeroRangeMethod_index](zeroRangeMethod_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L102">source</a></font>
{% endraw %}
