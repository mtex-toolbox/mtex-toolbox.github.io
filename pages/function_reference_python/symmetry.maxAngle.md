---
title: 'symmetry.maxAngle'
sidebar: function_reference_sidebar
permalink: symmetry.maxAngle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.maxAngle.html
status: Reference
---
{% raw %}
maxAngle(cs), maxAngle(cs1, cs2): the largest rotation angle of the fundamental region of
the frames, MATLAB's maxAngle of a symmetry

## Syntax

The largest angle of an orientation:

```python
omega = maxAngle(cs)
```

The largest misorientation angle:

```python
omega = maxAngle(cs, cs)
```

With the misorientations' inverses identified:

```python
omega = maxAngle(cs, cs, antipodal=True)
```

MATLAB's maxAngle(cs, axis), the largest angle about an axis, is
fundamentalRegion(cs).maxAngle(axis) here.

## Input

| | |
|---|---|
| `frA` | crystalFrame |
| `frB` | the second frame, by default the default specimen frame |

## Output

| | |
|---|---|
| `omega` | the angle in radians |

## Keywords

| | default | |
|---|---|---|
| `antipodal` | `False` | identify every misorientation with its inverse |

## See also

[orientationRegion.maxAngle](orientationRegion.maxAngle_py.html), [fundamentalRegion](fundamentalRegion_py.html)

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html)

MATLAB's [symmetry.maxAngle](symmetry.maxAngle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L447">source</a></font>
{% endraw %}
