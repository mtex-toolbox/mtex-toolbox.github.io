---
title: 'EBSD.calcMisorientation'
sidebar: function_reference_sidebar
permalink: EBSD.calcMisorientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.calcMisorientation.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

uncorrelated misorientations: random pairs of measurements far enough apart that they say
nothing about one another, which is what an uncorrelated distribution is compared
against. Both maps must carry one indexed phase; the pair is written as a boundary
writes it, inv(o2) o1 carrying a direction of the first phase into the second

## Syntax

```python
EBSD.calcMisorientation(ebsd, other=None, sampleSize=100000, minDistance=None, rng=None)
```

MATLAB's [EBSD.calcMisorientation](EBSD.calcMisorientation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L467">source</a></font>
{% endraw %}
