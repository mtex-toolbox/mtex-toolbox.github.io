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
numba is the backend; MATLAB's gbcAngle.evaluate

## Syntax

<div class="mx-form" markdown="1">

```python
c = gbcAngle(10*degree).evaluate(ebsd, i, j)
```

1 joined, 0 a boundary.

</div>

<div class="mx-form" markdown="1">

```python
c = gbcAngle([10*degree, 2*degree]).evaluate(ebsd, i, j)
```

0.5 for a low angle boundary.

</div>

<div class="mx-form" markdown="1">

```python
c = gbcAngle(10*degree).evaluate(ebsd, i, j, backend='numpy')
```

The NumPy loop.

</div>

## Description

With a pair [high, low] the value is 1 below low, 0.5 between low and high and 0 above
high: the share of the levels the misorientation angle stays below. calcGrains joins two
pixels whose value is 1 into one grain.

## Input

| `ebsd` | EBSD |
| `i, j` | the flat indices of the pairs of measurements, equally long |

## Keywords

| keyword | default | description |
|---|---|---|
| `backend` | `None` | 'numba' or 'numpy', by default the preference 'kernels' |

## Output

| `c` | the connectivity of every pair, between 0 and 1 |

## See also

[gbcSoft](gbcSoft_index_py.html), [gbcEqual](gbcEqual_index_py.html), [calcGrains](EBSD.calcGrains_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/criteria.py#L164">source</a></font>
{% endraw %}
