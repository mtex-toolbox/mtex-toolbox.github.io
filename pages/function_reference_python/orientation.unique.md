---
title: 'orientation.unique'
sidebar: function_reference_sidebar
permalink: orientation.unique_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.unique.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the disjoint list of orientations, symmetric equivalents within a tolerance taken as one

## Syntax

One of each:

```python
u = unique(ori)
```

Within 1 degree as one:

```python
u = unique(ori, tol=1*degree)
```

The rotations as stored:

```python
u = unique(ori, symmetry=False)
```

The index maps:

```python
u, iOri, iu = unique(ori, return_index=True, return_inverse=True)
```

Two orientations are one when their misorientation angle, symmetry reduced, is below tol.
Every orientation not yet taken takes the later ones within the tolerance, so the first of
each kept is returned, in the order of first appearance. MATLAB sorts unless 'stable' is
given; here the order is always that of first appearance.

## Input

| | |
|---|---|
| `ori` | orientation |

## Output

| | |
|---|---|
| `u` | orientation, a one-dimensional list |
| `iOri` | indices with u = ori.flatten()[iOri] |
| `iu` | indices with ori.flatten() = u[iu] |

## Keywords

| | default | |
|---|---|---|
| `tol` | `0.001` | the angular tolerance, in radians |
| `symmetry` | `True` | take symmetric equivalents as one; False compares the rotations as stored, MATLAB's 'noSymmetry' |
| `stable` | `False` | accepted for MATLAB's flag; the order is that of first appearance anyway |
| `return_index` | `False` | also return iOri |
| `return_inverse` | `False` | also return iu |

## See also

[quaternion.unique](quaternion.unique_py.html), [orientation.isclose](orientation.isclose_py.html), [orientation.symmetrise](orientation.symmetrise_py.html)

MATLAB's [orientation.unique](orientation.unique.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L439">source</a></font>
{% endraw %}
