---
title: 'vector3d.char'
sidebar: function_reference_sidebar
permalink: vector3d.char_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the Miller indices of a crystal direction in brackets, as text

## Syntax

{111}, <uvw> where the frame has symmetry, else (111), [uvw]:

```python
s = m.char()
```

In another convention: 'hkl', 'hkil', 'uvw', 'UVTW':

```python
s = m.char('uvw')
```

One plane or direction, (hkl) or [uvw]:

```python
s = m.char(family=False)
```

As mathematics, a bar over the negative indices:

```python
s = m.char('LaTex')
```

A minus sign instead of the bar:

```python
s = m.char(utf8=False)
```

A point group makes the indices stand for the whole symmetrically equivalent set, so they
are written in the family brackets {hkl} and <uvw>, while the trivial group leaves one plane
or one direction, (hkl) and [uvw]. A list of directions is written one after another.
MATLAB's flags no_scopes and commasep are not taken.

## Input

| | |
|---|---|
| `m` | vector3d in a crystal frame |

## Output

| | |
|---|---|
| `s` | str |

## Keywords

| | default | |
|---|---|---|
| `style` | `None` | the convention, 'hkl', 'hkil', 'uvw', 'UVTW' or 'xyz', or 'LaTex'; by default the display's |
| `utf8` | `None` | a negative index as a digit with a bar over it rather than a minus sign; by default the preference 'UTF8Output' |
| `family` | `None` | the family brackets {hkl} and <uvw>; by default where the frame has symmetry |

## See also

[vector3d.round](vector3d.round_py.html), [Miller](Miller_py.html), [CrystalDirections](CrystalDirections_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L337">source</a></font>
{% endraw %}
