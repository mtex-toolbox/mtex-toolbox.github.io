---
title: 'plotSector'
sidebar: function_reference_sidebar
permalink: plotSector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the sector of the frame's group an inverse pole figure shows, that of the Laue group for axes,
turned as MATLAB draws it for 321

## Syntax

<div class="mx-form" markdown="1">

```python
sR = plotSector(cs)
```

The sector of an inverse pole figure.

</div>

<div class="mx-form" markdown="1">

```python
sR = plotSector(crystalFrame('432'), antipodal=True)
```

The sector of m-3m, the Laue group.

</div>

<div class="mx-form" markdown="1">

```python
sR = plotSector(cs, how2plot='x↑→y')
```

Under another plotting convention.

</div>

## Description

The conventional sector of the group, its pole out of the screen and its first edge to the
east of the plotting convention; 321 is turned by 30 degree so that it starts at an m
direction, as MATLAB draws it.

## Input

| `fr` | crystalFrame, or any frame with a point group |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | the sector of the Laue group, for axes |
| `how2plot` | `None` | plottingConvention or its string; by default the convention of the frame |

## Output

| `sR` | sphericalRegion in the frame fr |

## See also

[fundamentalSector](fundamentalSector_py.html), [plotIPF](SO3Fun.plotIPDF_py.html), [makeSphericalProjection](makeSphericalProjection_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L595">source</a></font>
{% endraw %}
