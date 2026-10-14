---
title: 'loadVector3d'
sidebar: function_reference_sidebar
permalink: loadVector3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the directions a text table holds, read by the names of its coordinate columns, and the
other columns it names

## Syntax

<div class="mx-form" markdown="1">

```python
v, S = loadVector3d('vectors.txt')
```

The names on the line above the numbers.

</div>

<div class="mx-form" markdown="1">

```python
v, S = loadVector3d('vectors.txt', columnNames=['polar angle', 'azimuth angle'])
```

Polar angles in degrees.

</div>

<div class="mx-form" markdown="1">

```python
v, S = loadVector3d('vectors.txt', columnNames=['x', 'y', 'z', 'weight'])
```

Cartesian, with a weight in S.

</div>

<div class="mx-form" markdown="1">

```python
v, S = loadVector3d('vectors.txt', columnNames=['latitude', 'longitude'], columns=[1, 0])
```

The columns the names sit in.

</div>

<div class="mx-form" markdown="1">

```python
v = vector3d.load('vectors.txt')
```

The directions alone.

</div>

## Description

The coordinates are x, y, z, kept at their length, or two angles read as unit directions:
the polar angle (colatitude) from z and the azimuth (longitude) in the xy plane, or the
latitude from the xy plane and the longitude. A name is matched without regard to case.
Every other named column comes back in S, a dict of one array per name.

Without columnNames the last header line names the columns, when it names coordinates;
the header ends at the first row of numbers.

## Input

| `fname` | str, the name of a text file |

## Keywords

| keyword | default | description |
|---|---|---|
| `columnNames` | `None` | the names of the columns, in their order in the file or in columns |
| `columns` | `None` | the positions of the named columns, counted from zero |
| `radians` | `False` | the angles are in radians, not degrees |
| `delimiter` | `None` | the delimiter between the numbers, blank space by default |
| `header` | `None` | the number of header lines, found from the first row of numbers by default |

## Output

| `v` | vector3d, the directions |
| `S` | dict, the columns that are not coordinates, by name |

## See also

[exportVector3d](exportVector3d_py.html), [vector3d.byPolar](vector3d.byPolar_py.html), [loadPoleFigure](loadPoleFigure_aachen_py.html), [loadOrientation](loadOrientation_py.html)

## Used on

[S2FunApproximationInterpolation](S2FunApproximationInterpolation_py.html), [VectorsExport](VectorsExport_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/vectors.py#L29">source</a></font>
{% endraw %}
