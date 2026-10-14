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

The sector of an inverse pole figure:

```python
sR = plotSector(cs)
```

The sector of m-3m, the Laue group:

```python
sR = plotSector(crystalFrame('432'), antipodal=True)
```

Under another plotting convention:

```python
sR = plotSector(cs, how2plot='x↑→y')
```

The conventional sector of the group, its pole out of the screen and its first edge to the
east of the plotting convention; 321 is turned by 30 degree so that it starts at an m
direction, as MATLAB draws it.

## Input

| | |
|---|---|
| `fr` | crystalFrame, or any frame with a point group |

## Output

| | |
|---|---|
| `sR` | sphericalRegion in the frame fr |

## Keywords

| | default | |
|---|---|---|
| `antipodal` | `False` | the sector of the Laue group, for axes |
| `how2plot` | `None` | plottingConvention or its string; by default the convention of the frame |

## See also

[fundamentalSector](fundamentalSector_py.html), [plotIPF](SO3Fun.plotIPDF_py.html), [makeSphericalProjection](makeSphericalProjection_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L595">source</a></font>
{% endraw %}
