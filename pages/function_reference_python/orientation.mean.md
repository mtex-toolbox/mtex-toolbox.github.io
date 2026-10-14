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

## See also

[quaternion.mean](quaternion.mean_py.html), [quaternion.std](quaternion.std_py.html), [EBSD.grainMean](EBSD.grainMean_py.html), [BinghamODF](BinghamODF_py.html)

MATLAB's [orientation.mean](orientation.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L686">source</a></font>
{% endraw %}
