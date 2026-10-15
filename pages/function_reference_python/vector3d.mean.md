---
title: 'vector3d.mean'
sidebar: function_reference_sidebar
permalink: vector3d.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.mean.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the mean direction of a list of vectors, of axes, or of crystal directions

## Syntax

<div class="mx-form" markdown="1">

```python
m = mean(v)
```

The arithmetic mean over all vectors.

</div>

<div class="mx-form" markdown="1">

```python
m = mean(v, axis=0)
```

Along the first axis.

</div>

<div class="mx-form" markdown="1">

```python
m = mean(v, weights=w)
```

The normalised weighted sum.

</div>

<div class="mx-form" markdown="1">

```python
m = mean(v, antipodal=True)
```

The mean axis.

</div>

<div class="mx-form" markdown="1">

```python
m = mean(v, robust=True)
```

Without the farthest fifth.

</div>

<div class="mx-form" markdown="1">

```python
m, hProjected = mean(h, return_projected=True)
```

Also the equivalents averaged, MATLAB's mSym.

</div>

## Description

Vectors give their arithmetic mean, with weights the normalised weighted sum. Axes give the
eigenvector of the largest eigenvalue of the moment matrix. Crystal directions in a frame
with symmetry are first moved to the equivalents closest to the mean, which
return_projected=True returns too. robust=True drops the vectors farther from a first mean
than 80 percent of them and averages again.

## Input

| `v` | vector3d |
| `h` | vector3d in a crystal frame |

## Keywords

| keyword | default | description |
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

## Output

| `m` | vector3d |
| `hProjected` | vector3d, the equivalents of the directions the mean was taken over |

## See also

[vector3d.sum](vector3d.sum_py.html), [vector3d.unique](vector3d.unique_py.html), [VectorsOperations](VectorsOperations_py.html)

MATLAB's [vector3d.mean](vector3d.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L1031">source</a></font>
{% endraw %}
