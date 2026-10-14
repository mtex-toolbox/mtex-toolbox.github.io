---
title: 'fibre.angle'
sidebar: function_reference_sidebar
permalink: fibre.angle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.angle.html
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the angle by which ori * h misses r, the least over both orbits, from the chord of the
closest pair; MATLAB's fibre.angle

## Syntax

<div class="mx-form" markdown="1">

```python
omega = angle(f, ori)
```

The angle of orientations to the fibre.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(f, ori, symmetry=False)
```

Ignore the symmetric equivalents.

</div>

<div class="mx-form" markdown="1">

```python
omega, oriF = angle(f, ori, return_nearest=True)
```

And the orientations on the fibre.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(f1, f2)
```

The angle between two fibres.

</div>

## Description

The angle of an orientation to the fibre h || r is the angle between ori * h and r, the least
over the crystal symmetric equivalents of h and the specimen symmetric ones of r. With
another fibre it is the largest angle of 1000 of its orientations to this one. The fibre is
taken as the full fibre, its ends o1 and o2 do not count.

## Input

| `f` | fibre, a single one |
| `ori` | orientation, or a fibre |

## Keywords

| keyword | default | description |
|---|---|---|
| `symmetry` | `True` | take the least over the symmetric equivalents; False compares h and r only |
| `return_nearest` | `False` | also return oriF, MATLAB's second output; not with a fibre |

## Output

| `omega` | the angles, of the shape of ori |
| `oriF` | the orientations on the fibre nearest ori, which turn the closest image of h onto r (return_nearest) |

## See also

[orientation.angle](orientation.angle_py.html), [fibre.isclose](fibre.eq_py.html)

MATLAB's [fibre.angle](fibre.angle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L225">source</a></font>
{% endraw %}
