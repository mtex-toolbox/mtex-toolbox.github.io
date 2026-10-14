---
title: 'Miller.mean'
sidebar: function_reference_sidebar
permalink: Miller.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Miller.mean.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the mean direction of a list of vectors, of axes, or of crystal directions

## Syntax

The arithmetic mean over all vectors:

```python
m = mean(v)
```

Along the first axis:

```python
m = mean(v, axis=0)
```

The normalised weighted sum:

```python
m = mean(v, weights=w)
```

The mean axis:

```python
m = mean(v, antipodal=True)
```

Without the farthest fifth:

```python
m = mean(v, robust=True)
```

Also the equivalents averaged, MATLAB's mSym:

```python
m, hProjected = mean(h, return_projected=True)
```

Vectors give their arithmetic mean, with weights the normalised weighted sum. Axes give the
eigenvector of the largest eigenvalue of the moment matrix. Crystal directions in a frame
with symmetry are first moved to the equivalents closest to the mean, which
return_projected=True returns too. robust=True drops the vectors farther from a first mean
than 80 percent of them and averages again.

## Input

| | |
|---|---|
| `v` | vector3d |
| `h` | vector3d in a crystal frame |

## Output

| | |
|---|---|
| `m` | vector3d |
| `hProjected` | vector3d, the equivalents of the directions the mean was taken over |

## Keywords

| | default | |
|---|---|---|
| `weights` | `None` | array, a weight per vector |
| `antipodal` | `False` | average the vectors as axes |
| `robust` | `False` | leave out the outliers, the vectors farthest from the mean |
| `axis` | `None` | an axis or a tuple of axes to average over; by default all |
| `symmetry` | `True` | take the symmetric equivalents of crystal directions into account |
| `return_projected` | `False` | also return the equivalents the mean was taken over |
| `dtype` | `None` | NumPy's argument, refused: a container has no dtype to choose |
| `out` | `None` | NumPy's argument, refused: a container has no output buffer |
| `keepdims` | `False` | keep the averaged axes with length one |

## See also

[vector3d.sum](vector3d.sum_py.html), [vector3d.unique](vector3d.unique_py.html), [VectorsOperations](VectorsOperations_py.html)

MATLAB's [Miller.mean](Miller.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L842">source</a></font>
{% endraw %}
