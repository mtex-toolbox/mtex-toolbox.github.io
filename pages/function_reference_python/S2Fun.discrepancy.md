---
title: 'S2Fun.discrepancy'
sidebar: function_reference_sidebar
permalink: S2Fun.discrepancy_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Fun.discrepancy.html
status: Reference
---
{% raw %}
the discrepancy between two densities and/or weighted point sets on the sphere (S2Fun,
vector3d) or on SO(3) (SO3Fun, rotation, orientation), in either order; MATLAB's discrepancy

## Syntax

<div class="mx-form" markdown="1">

```python
d = discrepancy(v, w, weights=c, weights2=e)
```

D_2, the root cap or ball L2 discrepancy.

</div>

<div class="mx-form" markdown="1">

```python
d = discrepancy(sF, v, metric='D_cap', numCenters=4097)
```

The finite search for the largest cap.

</div>

<div class="mx-form" markdown="1">

```python
d = discrepancy(odf, ori, metric='D_ball', numRadii=513)
```

The largest ball on SO(3).

</div>

<div class="mx-form" markdown="1">

```python
d = discrepancy(sF, v, metric='L2', bandwidth=32)
```

A bandlimited L2 norm, 'E_L' the same.

</div>

<div class="mx-form" markdown="1">

```python
d = discrepancy(sF, v, squared=True)
```

The square.

</div>

<div class="mx-form" markdown="1">

```python
d, info = discrepancy(sF, v, info=True)
```

With what was computed.

</div>

<div class="mx-form" markdown="1">

```python
d = discrepancy(sF, v, metric='kernel', bandwidth=16)
```

The squared objective of optimalSample.

</div>

## Description

The measures on the sphere go to sphericalDiscrepancy, those on SO(3) to
rotationalDiscrepancy, with the keywords given (weights, weights2, bandwidth,
degreeWeights, the search sizes, squared, info); their pages describe the metrics.
metric='kernel' is MATLAB's discrepancy: the squared kernel distance of the restricted
distance kernel over the degrees 1 to bandwidth, which optimalSample minimises; it takes
only weights, weights2 and bandwidth, and info.

## Input

| `a, b` | S2Fun or vector3d on the sphere, SO3Fun or rotation on SO(3) |

## Keywords

| keyword | default | description |
|---|---|---|
| `metric` | `'D_2'` | 'D_2', 'D_cap' or 'L2' ('E_L') on the sphere, 'D_2', 'D_ball' or 'L2' on SO(3), or 'kernel', MATLAB's measure |

## Output

| `d` | the discrepancy |
| `info` | with info=True, what was computed |

## See also

[sphericalDiscrepancy](sphericalDiscrepancy_py.html), [rotationalDiscrepancy](rotationalDiscrepancy_py.html), [optimalSample](S2Fun.optimalSample_py.html), [discreteSample](discreteSample_py.html)

MATLAB's [S2Fun.discrepancy](S2Fun.discrepancy.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/discrepancy.py#L683">source</a></font>
{% endraw %}
