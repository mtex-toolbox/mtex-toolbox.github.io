---
title: 'fibre.rotation'
sidebar: function_reference_sidebar
permalink: fibre.rotation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.rotation.html
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the rotations along the fibre, points x shape, turning about h from o1 to o2, MATLAB's
fibre.rotation

## Syntax

<div class="mx-form" markdown="1">

```python
rot = f.rotation()
```

1000 rotations along the fibre.

</div>

<div class="mx-form" markdown="1">

```python
rot = f.rotation(points=100)
```

100 of them.

</div>

<div class="mx-form" markdown="1">

```python
rot, omega = f.rotation(return_angles=True)
```

And the angles from o1.

</div>

## Description

The points are equispaced in the angle about h, from o1 (omega = 0) to o2; a full fibre runs
once around.

## Input

| `f` | fibre |

## Keywords

| keyword | default | description |
|---|---|---|
| `points` | `1000` | the number of rotations per fibre |
| `return_angles` | `False` | also return omega, MATLAB's second output |

## Output

| `rot` | rotation, of shape (points,) + f.shape |
| `omega` | the angles the rotations are turned from o1 by, of the same shape (return_angles) |

## See also

[fibre.orientation](fibre.orientation_py.html), [fibre.arcAngle](fibre.arcAngle_py.html)

MATLAB's [fibre.rotation](fibre.rotation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L179">source</a></font>
{% endraw %}
