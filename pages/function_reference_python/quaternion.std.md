---
title: 'quaternion.std'
sidebar: function_reference_sidebar
permalink: quaternion.std_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.std.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

the mean angular deviation of a list of rotations from their mean

## Syntax

The deviation in radians:

```python
sigma = std(rot)
```

From the robust mean:

```python
sigma = std(rot, robust=True)
```

From the weighted mean:

```python
sigma = std(rot, weights=w)
```

The root mean square of the rotational angles between the mean and every rotation; for
orientations the angle is the symmetry reduced one, as the mean is. The weights enter the
mean only, not the average of the angles.

## Input

| | |
|---|---|
| `rot` | quaternion, rotation or orientation |

## Output

| | |
|---|---|
| `sigma` | the deviation in radians |

## Keywords

| | default | |
|---|---|---|
| `weights` | `None` | one weight per rotation, for the mean |
| `robust` | `False` | deviation from the robust mean, outliers left out of the mean |
| `axis` | `None` | NumPy's reduction axis, refused: the deviation is over the whole list |
| `dtype` | `None` | NumPy's argument, refused |
| `out` | `None` | NumPy's argument, refused |
| `keepdims` | `False` | keep the reduced axes with length one, as np.std does |
| `ddof` | `0` | NumPy's degrees of freedom, refused |

## See also

[quaternion.mean](quaternion.mean_py.html), [orientation.mean](orientation.mean_py.html)

## Used on

[TiltAndTwistBoundaries](TiltAndTwistBoundaries_py.html), [HarmonicApproximationTheory](HarmonicApproximationTheory_py.html), [RBFApproximationTheory](RBFApproximationTheory_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html), [SO3FunConvolution](SO3FunConvolution_py.html)

MATLAB's [quaternion.std](quaternion.std.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L411">source</a></font>
{% endraw %}
