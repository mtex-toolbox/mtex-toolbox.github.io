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

<div class="mx-form" markdown="1">

```python
omega = maxAngle(cs)
```

The largest angle of an orientation.

</div>

<div class="mx-form" markdown="1">

```python
omega = maxAngle(cs, cs)
```

The largest misorientation angle.

</div>

<div class="mx-form" markdown="1">

```python
omega = maxAngle(cs, cs, antipodal=True)
```

With the misorientations' inverses identified.

</div>

## Description

MATLAB's maxAngle(cs, axis), the largest angle about an axis, is
fundamentalRegion(cs).maxAngle(axis) here.

## Input

| `frA` | crystalFrame |
| `frB` | the second frame, by default the default specimen frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | identify every misorientation with its inverse |

## Output

| `omega` | the angle in radians |

## See also

[orientationRegion.maxAngle](orientationRegion.maxAngle_py.html), [fundamentalRegion](fundamentalRegion_py.html)

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html)

MATLAB's [symmetry.maxAngle](symmetry.maxAngle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L447">source</a></font>
{% endraw %}
