---
title: 'quaternion.scatter'
sidebar: function_reference_sidebar
permalink: quaternion.scatter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.scatter.html
status: Reference
---
{% raw %}
directions or crystal directions drawn as markers on a spherical plot, coloured by data
or labelled

## Syntax

The directions as markers:

```python
scatter(v)
```

Coloured by values, with a colour bar:

```python
scatter(v, data, colorbar=True)
```

An RGB colour per direction:

```python
scatter(v, rgb)
```

A text below every marker:

```python
scatter(v, label=texts)
```

The text above:

```python
scatter(v, label=texts, textAboveMarker=True)
```

Every equivalent, named by its indices:

```python
scatter(h, symmetrised=True, labeled=True)
```

The markers styled:

```python
scatter(v, marker='s', markerSize=8, markerFaceColor='r', markerEdgeColor='k')
```

The smallest and largest value marked:

```python
scatter(v, data, minmax=True)
```

Orientations in axis angle space:

```python
scatter(ori)
```

Points of two coordinate lists on the current map:

```python
scatter(x, y, 50, 'r')
```

The plot is new, or the one held; its projection, hemisphere and region follow the frame
and the keywords of the spherical plots (upper, lower, fundamentalRegion, ...). A Miller
direction or plane with symmetrised=True is drawn at all its distinct symmetric equivalents.
Orientations go to scatter3d's axis angle space, two lists of coordinates to the map
held. MATLAB's numbered flag is not there.

## Input

| | |
|---|---|
| `v` | vector3d or Miller |
| `data` | one value per direction, or an (n, 3) array of RGB colours |
| `ori` | orientation |
| `x, y` | the coordinates of points on a map |

## Output

| | |
|---|---|
| `h` | the matplotlib collections, one per spherical plot |

## Keywords

| | default | |
|---|---|---|
| `minmax` | `False` | mark the smallest and the largest value |
| `symmetrised` | `False` | draw every distinct symmetric equivalent of a crystal direction |
| `colorbar` | `False` | add a colour bar for the data |

## See also

[plot](S1Grid.plot_py.html), [text](EBSD.text_py.html), [circle](vector3d.circle_py.html), [plotPF](SO3Fun.plotPDF_py.html), [plotIPF](SO3Fun.plotIPDF_py.html), [vector3d.scatter3d](vector3d.scatter3d_py.html), [SphericalProjections](SphericalProjections_py.html)

## Used on

[EBSDOrientationPlots](EBSDOrientationPlots_py.html), [ClusterDemo](ClusterDemo_py.html), [BoundaryIntersections](BoundaryIntersections_py.html), [TwinningBoundaries](TwinningBoundaries_py.html), [Annotations](Annotations_py.html), [CombinedPlots](CombinedPlots_py.html), [PlotTypes](PlotTypes_py.html), [RotationPlotting](RotationPlotting_py.html), [S2FunApproximationInterpolation](S2FunApproximationInterpolation_py.html), [S2FunSampling](S2FunSampling_py.html), [VectorsImport](VectorsImport_py.html), [VectorsOperations](VectorsOperations_py.html)

MATLAB's [quaternion.scatter](quaternion.scatter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L883">source</a></font>
{% endraw %}
