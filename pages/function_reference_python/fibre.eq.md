---
title: 'fibre.eq'
sidebar: function_reference_sidebar
permalink: fibre.eq_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.eq.html
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

equal when the frames are the same and h and r agree up to the symmetry of the frames
within tol, both flipped counting as well; MATLAB's eq

## Syntax

<div class="mx-form" markdown="1">

```python
b = f1.isclose(f2)
```

Equal up to symmetry.

</div>

<div class="mx-form" markdown="1">

```python
b = f1.isclose(f2, tol=1e-3)
```

Within a wider tolerance.

</div>

## Description

A segment is not the full fibre, and its ends are not compared. f1 == f2 compares h and r
as they are, without the symmetry.

## Input

| `f1, f2` | fibre |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `1e-06` | the tolerance on the dot products of h and of r, 1 - cos of the angle |

## Output

| `b` | bool, of the broadcast shape |

## See also

[fibre.angle](fibre.angle_py.html)

MATLAB's [fibre.eq](fibre.eq.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L331">source</a></font>
{% endraw %}
