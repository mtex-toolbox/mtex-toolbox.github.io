---
title: 'vector3d.scatter3d'
sidebar: function_reference_sidebar
permalink: vector3d.scatter3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.scatter3d.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

directions as markers on the sphere in space; MATLAB's vector3d/scatter3d

## Syntax

<div class="mx-form" markdown="1">

```python
scatter3d(v)
```

The directions on the sphere.

</div>

<div class="mx-form" markdown="1">

```python
scatter3d(v, data, colorbar=True)
```

Coloured by a value each, with a colour bar.

</div>

<div class="mx-form" markdown="1">

```python
scatter3d(v, label='a', color='r')
```

Red markers with a text beside them.

</div>

## Description

The markers sit just outside the unit sphere, which is drawn first with its grid and the
axes of the frame when the axes are new. An antipodal vector is drawn with its antipode.
plot3d(v) of directions is the same.

## Input

| `v` | vector3d, the directions, normalised for drawing |

## Keywords

| keyword | default | description |
|---|---|---|
| `data` | `None` | one value per direction, the colour of its marker |
| `markerSize` | `6` | the size of the markers in points |
| `color` | `(0.0, 0.447, 0.741)` | the colour of the markers without data |
| `colormap` | `'viridis'` | the colour map of the data |
| `colorRange` | `None` | (lo, hi), the values of the ends of the colour map; by default the range of the data |
| `grid` | `True` | draw the parallels and meridians on a new sphere |
| `axisLabels` | `True` | draw the axes of the frame on a new sphere |
| `label` | `None` | a text beside every marker, one for all or a list with one per direction |
| `colorbar` | `False` | add a colour bar of the data |

## Output

| `h` | the matplotlib Path3DCollection of the markers |

## See also

[arrow3d](vector3d.arrow3d_py.html), [plot3d](S2Fun.plot3d_py.html), [scatter](quaternion.scatter_py.html), [VectorDefinition](VectorDefinition_py.html)

MATLAB's [vector3d.scatter3d](vector3d.scatter3d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spaceplot.py#L275">source</a></font>
{% endraw %}
