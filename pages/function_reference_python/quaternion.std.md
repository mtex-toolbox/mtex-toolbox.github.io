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

the mean angular deviation from the mean, quaternion/std; for orientations the angle is
the symmetry-reduced one, as the mean is; weights= weigh the rotations, robust=True takes the
robust mean

## Syntax

```python
quaternion.std(self, weights=None, robust=False)
```

```python
sigma = std(rot)
sigma = std(rot, robust=True)
sigma = std(rot, weights=w)
```

## Used on

[TiltAndTwistBoundaries](TiltAndTwistBoundaries_py.html), [HarmonicApproximationTheory](HarmonicApproximationTheory_py.html), [RBFApproximationTheory](RBFApproximationTheory_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html), [SO3FunConvolution](SO3FunConvolution_py.html)

MATLAB's [quaternion.std](quaternion.std.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L355">source</a></font>
{% endraw %}
