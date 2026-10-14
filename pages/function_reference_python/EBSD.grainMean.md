---
title: 'EBSD.grainMean'
sidebar: function_reference_sidebar
permalink: EBSD.grainMean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.grainMean.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the average of a property over each grain: one value per grain when the grains are
given, and the value of its own grain at every pixel when they are not; method is the
reduction, llim and ulim the range of values it is taken over

## Syntax

```python
EBSD.grainMean(ebsd, prop, grains=None, method=<function mean at 0x7f1e6d1b4370>, ulim=inf, llim=-inf)
```

MATLAB's [EBSD.grainMean](EBSD.grainMean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L398">source</a></font>
{% endraw %}
