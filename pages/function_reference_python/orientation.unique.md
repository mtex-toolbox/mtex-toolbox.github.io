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

<div class="mx-form" markdown="1">

```python
u = unique(ori)
```

One of each, sorted.

</div>

<div class="mx-form" markdown="1">

```python
u = unique(ori, tol=1*degree)
```

Within 1 degree as one.

</div>

<div class="mx-form" markdown="1">

```python
u = unique(ori, stable=True)
```

In the order of first appearance.

</div>

<div class="mx-form" markdown="1">

```python
u = unique(ori, symmetry=False)
```

The rotations as stored.

</div>

<div class="mx-form" markdown="1">

```python
u, iOri, iu = unique(ori, return_index=True, return_inverse=True)
```

The index maps.

</div>

## Description

Two orientations are one when their misorientation angle, symmetry reduced, is below tol.
Every orientation not yet taken takes the later ones within the tolerance, so the first of
each is kept. They are sorted by the coefficients of their equivalents in the fundamental
region, or with stable kept in the order of first appearance.

## Input

| `ori` | orientation |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `0.001` | the angular tolerance, in radians |
| `symmetry` | `True` | take symmetric equivalents as one; False compares the rotations as stored, MATLAB's 'noSymmetry' |
| `stable` | `False` | keep the order of first appearance instead of sorting |
| `return_index` | `False` | also return iOri |
| `return_inverse` | `False` | also return iu |

## Output

| `u` | orientation, a one-dimensional list |
| `iOri` | indices with u = ori.flatten()[iOri] |
| `iu` | indices with ori.flatten() = u[iu] |

## See also

[quaternion.unique](quaternion.unique_py.html), [orientation.isclose](orientation.isclose_py.html), [orientation.symmetrise](orientation.symmetrise_py.html)

MATLAB's [orientation.unique](orientation.unique.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L687">source</a></font>
{% endraw %}
