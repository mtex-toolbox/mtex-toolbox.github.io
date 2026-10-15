---
title: 'orientation.mean'
sidebar: function_reference_sidebar
permalink: orientation.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.mean.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the mean of a list of orientations, with the principal moments and axes of inertia

## Syntax

<div class="mx-form" markdown="1">

```python
m = mean(ori)
```

The mean orientation.

</div>

<div class="mx-form" markdown="1">

```python
m = mean(ori, weights=w)
```

A weighted mean.

</div>

<div class="mx-form" markdown="1">

```python
m = mean(ori, robust=True)
```

Outliers left out.

</div>

<div class="mx-form" markdown="1">

```python
m, oriProjected = mean(ori, return_projected=True)
```

With the equivalents nearest to it.

</div>

<div class="mx-form" markdown="1">

```python
m, oriProjected, lam, V = mean(ori, return_projected=True, return_inertia=True)
```

And the inertia.

</div>

## Description

Starting from the first orientation, every orientation is moved to its symmetric equivalent
closest to the running mean, and the quaternion mean of these equivalents is the next mean;
iterations rounds of this. A texture spread over more than the fundamental region has no
meaningful mean. Orientations that are not a number are left out.

The mean is taken over the whole list; axis is refused, index the list for the mean of a
part.

## Input

| `ori` | orientation |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | one weight per orientation |
| `robust` | `False` | leave out the outliers, as quaternion.mean does |
| `iterations` | `3` | the rounds of moving to the closest equivalents and averaging |
| `return_projected` | `False` | also return oriProjected |
| `return_inertia` | `False` | also return lam and V |
| `axis` | `None` | NumPy's reduction axis, refused |
| `dtype` | `None` | NumPy's argument, refused |
| `out` | `None` | NumPy's argument, refused |
| `keepdims` | `False` | keep the reduced axes with length one, as np.mean does |

## Output

| `m` | orientation, the mean |
| `oriProjected` | orientation, the equivalents of ori closest to m, NaN where ori is |
| `lam` | the principal moments of inertia, in ascending order |
| `V` | quaternion, the four principal axes of inertia |

## Example

Average orientations that straddle a cubic symmetry boundary. The Euler angles
1 and 89 degrees represent orientations only two degrees apart under cubic symmetry.


```python
import numpy as np
from mtex import crystalFrame, orientation, degree, mean

cs = crystalFrame('m-3m')
ori = orientation.byEuler(np.array([1, 89])*degree, 0, 0, cs)
centre, projected = mean(ori, return_projected=True)
print('Input Euler phi1 (degrees):', [1, 89])
print('Misorientation to mean (degrees):', np.round(ori.angle(centre)/degree, 3))
print('Projected rotations to mean (degrees):', np.round(projected.angle(centre, symmetry=False)/degree, 3))
```

The symmetry-aware mean lies near a cubic equivalent of zero degrees. Arithmetic averaging
of the Euler angles would give 45 degrees. Use a mean for a localized orientation cluster;
a broad or multimodal texture generally cannot be represented by one mean orientation.

```text
Input Euler phi1 (degrees): [1, 89]
Misorientation to mean (degrees): [1. 1.]
Projected rotations to mean (degrees): [1. 1.]
```


## See also

[quaternion.mean](quaternion.mean_py.html), [quaternion.std](quaternion.std_py.html), [EBSD.grainMean](EBSD.grainMean_py.html), [BinghamODF](BinghamODF_py.html)

MATLAB's [orientation.mean](orientation.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L719">source</a></font>
{% endraw %}
