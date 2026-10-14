---
title: 'localOrientationGrid'
sidebar: function_reference_sidebar
permalink: localOrientationGrid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: localOrientationGrid.html
status: Reference
---
{% raw %}
an equispaced grid of orientations in a ball about a centre

## Syntax

The frames and the ball:

```python
ori = localOrientationGrid(CS, SS, maxAngle=20*degree, center=ori0)
```

About the identity:

```python
ori = localOrientationGrid(CS, SS, 20*degree)
```

About an orientation:

```python
ori = localOrientationGrid(ori0, 10*degree, resolution=2*degree)
```

Every point of the ball:

```python
ori = localOrientationGrid(ori0, 10*degree, respectSymmetry=False)
```

The orientations lie on shells about the centre, resolution apart in angle, and on every
shell the axes are spaced so that neighbouring orientations are resolution apart. With
respectSymmetry the grid keeps one representative of every orientation the ball holds up to
the symmetries of the frames, those nearer the centre than to any of its symmetric copies,
so that a ball larger than the fundamental region holds no orientation twice.

## Input

| | |
|---|---|
| `CS` | crystalFrame |
| `SS` | specimenFrame, by default the default specimen frame |
| `ori0` | orientation, the centre, whose frames are taken |

## Output

| | |
|---|---|
| `ori` | orientation |

## Keywords

| | default | |
|---|---|---|
| `maxAngle` | `None` | the radius of the ball, also given positionally |
| `resolution` | `5*degree` | the spacing of the grid |
| `center` | `None` | orientation, the centre of the ball, by default the identity |
| `respectSymmetry` | `True` | keep one representative of the orientations symmetrically equivalent |

## See also

[equispacedSO3Grid](equispacedSO3Grid_py.html), [localS2Grid](localS2Grid_py.html), [regularSO3Grid](regularSO3Grid_py.html)

## Used on

[OrientationGrid](OrientationGrid_py.html)

MATLAB's [localOrientationGrid](localOrientationGrid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/localgrids.py#L27">source</a></font>
{% endraw %}
