---
title: 'quaternion.mean'
sidebar: function_reference_sidebar
permalink: quaternion.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.mean.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

the mean of a list of quaternions, with the principal moments and axes of inertia

## Syntax

The mean:

```python
m = mean(q)
```

A weighted mean:

```python
m = mean(q, weights=w)
```

Outliers left out:

```python
m = mean(q, robust=True)
```

The moments and axes of inertia too:

```python
m, lam, V = mean(q, return_inertia=True)
```

The mean is the principal eigenvector of the weighted moment matrix sum w q q^T / sum w,
so q and -q count alike. Entries that are not a number, sites without an orientation, are
left out. A robust mean drops the quaternions further from the mean than 2.5 times the 80%
quantile of the angles and averages again, as long as more than four remain.

The mean is taken over the whole list; axis is refused, index the list for the mean of a
part. orientation.mean reduces by the symmetry first.

## Input

| | |
|---|---|
| `q` | quaternion, rotation or orientation |

## Output

| | |
|---|---|
| `m` | the mean, of the class of q |
| `lam` | the principal moments of inertia, the eigenvalues of the moment matrix in ascending order |
| `V` | quaternion, the four principal axes of inertia, the eigenvectors |

## Keywords

| | default | |
|---|---|---|
| `weights` | `None` | one weight per quaternion |
| `robust` | `False` | leave out the outliers |
| `return_inertia` | `False` | also return lam and V |
| `axis` | `None` | NumPy's reduction axis, refused |
| `dtype` | `None` | NumPy's argument, refused |
| `out` | `None` | NumPy's argument, refused |
| `keepdims` | `False` | keep the reduced axes with length one, as np.mean does |

## See also

[quaternion.std](quaternion.std_py.html), [orientation.mean](orientation.mean_py.html)

MATLAB's [quaternion.mean](quaternion.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L352">source</a></font>
{% endraw %}
