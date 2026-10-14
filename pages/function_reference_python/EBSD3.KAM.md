---
title: 'EBSD3.KAM'
sidebar: function_reference_sidebar
permalink: EBSD3.KAM_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.KAM.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

the kernel average misorientation of a volume: the mean misorientation angle of every voxel
to its neighbours; MATLAB's KAM of EBSD3

## Syntax

The six face neighbours:

```python
kam = KAM(ebsd)
```

The neighbours up to the second order:

```python
kam = KAM(ebsd, order=2)
```

Misorientations above 5 degree left out:

```python
kam = KAM(ebsd, threshold=5*degree)
```

The largest angle instead of the mean:

```python
kam = KAM(ebsd, max=True)
```

The neighbours of a voxel are those within order steps along the axes of the grid, of the
same phase. On a volume that carries grain ids (after calcGrains) only the neighbours of the
same grain count, unless a threshold is given; without grain ids the misorientations above
the threshold, 10 degree by default, are left out. A voxel with no neighbour is NaN. The
volume holds one indexed phase. The angles are in radian.

## Input

| | |
|---|---|
| `ebsd` | EBSD3 of one indexed phase |

## Output

| | |
|---|---|
| `kam` | array of the shape of the volume, the angles in radian |

## Keywords

| | default | |
|---|---|---|
| `order` | `1` | the neighbours up to this many steps, the sum of the steps along the axes |
| `threshold` | `None` | a misorientation angle above it is left out, instead of the grains |
| `max` | `False` | the largest misorientation angle instead of the mean |

## See also

[EBSD.KAM](EBSD.KAM_py.html), [EBSD3.gradientX](EBSD3.gradientX_py.html), [calcGrains](EBSD.calcGrains_py.html), [EBSD3Analysis](EBSD3Analysis_py.html)

MATLAB's [EBSD3.KAM](EBSD3.KAM.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/intragranular3d.py#L159">source</a></font>
{% endraw %}
