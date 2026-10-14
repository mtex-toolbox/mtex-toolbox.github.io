---
title: 'localS2Grid'
sidebar: function_reference_sidebar
permalink: localS2Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
an equispaced grid of directions in a spherical cap about a centre

## Syntax

A cap of 10 degree:

```python
v = localS2Grid(center, maxTheta=10*degree)
```

Finer:

```python
v = localS2Grid(center, 10*degree, resolution=1*degree)
```

Every point of the cap:

```python
v = localS2Grid(center, 60*degree, respectSymmetry=False)
```

The directions lie on rings about the centre, resolution apart. For a crystal direction in
a frame with symmetry the grid keeps one representative of every direction the cap holds up
to the symmetry, those nearer the centre than to any of its symmetric copies.

## Input

| | |
|---|---|
| `center` | vector3d or Miller, the centre of the cap |
| `maxTheta` | the radius of the cap |

## Output

| | |
|---|---|
| `v` | vector3d in the frame of the centre |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `5*degree` | the spacing of the grid |
| `respectSymmetry` | `True` | keep one representative of the directions symmetrically equivalent |

## See also

[equispacedS2Grid](equispacedS2Grid_py.html), [localOrientationGrid](localOrientationGrid_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/localgrids.py#L106">source</a></font>
{% endraw %}
