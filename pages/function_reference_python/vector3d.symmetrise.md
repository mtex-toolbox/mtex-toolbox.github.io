---
title: 'vector3d.symmetrise'
sidebar: function_reference_sidebar
permalink: vector3d.symmetrise_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.symmetrise.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the symmetrically equivalent directions, numSym x shape, or the distinct ones of one
direction with unique=True; MATLAB's second output, the multiplicity, is v.multiplicity(),
its third the rotations of the frame, v.frame.rotations()

## Syntax

<div class="mx-form" markdown="1">

```python
hs = h.symmetrise()
```

Every image, numSym x shape.

</div>

<div class="mx-form" markdown="1">

```python
hs = h.symmetrise(unique=True)
```

The distinct ones of one direction.

</div>

<div class="mx-form" markdown="1">

```python
hs = h.symmetrise(antipodal=True)
```

The negatives too.

</div>

## Description

With antipodal=True the negatives are added, unless the group holds the inversion or h
is an axis; with unique=True an axis, or antipodal=True, takes v and -v as one, and
antipodal=False keeps them apart. A vector in no crystal frame is returned with a leading
axis of one.

## Input

| `h` | Miller |

## Keywords

| keyword | default | description |
|---|---|---|
| `unique` | `False` | the distinct images of a single direction, a flat list |
| `antipodal` | `None` | treat the directions as axes; by default as h says |

## Output

| `hs` | Miller |

## Example

Generate the distinct cubic {100} plane normals, and compare oriented normals with
antipodal plane axes. Opposite normals represent the same axis when antipodal=True.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import crystalFrame, Miller, symmetrise, plot

cs = crystalFrame('m-3m')
h = Miller(1, 0, 0, cs, 'hkl')
normals = symmetrise(h, unique=True, antipodal=False)
axes = symmetrise(h, unique=True, antipodal=True)
print('Oriented normals:', normals.size, 'Antipodal axes:', axes.size)
print('Unit Cartesian normals:', np.round(normals.normalize().data, 3))
plot(normals, upper=True, antipodal=True, markerSize=8)
plt.show()
```

unique=True removes duplicate symmetry images of this single input. The hemisphere plot
identifies opposite poles, while normals retains both signs. Applying symmetrise without
unique to an array keeps the symmetry-image axis so the original array can be tracked.

```text
Oriented normals: 6 Antipodal axes: 3
Unit Cartesian normals: [[ 1.  0.  0.]
 [-1. -0. -0.]
 [-0. -1.  0.]
 [ 0.  1.  0.]
 [-0.  0.  1.]
 [ 0. -0. -1.]]
```

![Example output for Miller.symmetrise](figures/python_reference/Miller.symmetrise-01.png)


## See also

[Miller.multiplicity](Miller.multiplicity_py.html), [symmetry.rotations](symmetry.rotations_py.html)

MATLAB's [vector3d.symmetrise](vector3d.symmetrise.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L1195">source</a></font>
{% endraw %}
