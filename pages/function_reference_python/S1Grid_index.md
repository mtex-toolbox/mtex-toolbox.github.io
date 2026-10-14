---
title: 'The class S1Grid'
sidebar: function_reference_sidebar
permalink: S1Grid_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Grid_index.html
status: Reference
---
{% raw %}
a sorted list of angles on an interval [min, max], periodic or not, the nearest neighbour and
radius search of the tensor product grids S2Grid and SO3Grid

```python
S1G = S1Grid(points, 0, 2*pi, periodic=True)
```

## Members

| | |
|---|---|
| [dist](S1Grid.dist_py.html) | the periodic distance of two angles |
| [double](S1Grid.double_py.html) | double(e) is e.double(): the coordinates of the images in the orthonormal basis, one row per orientation |
| [fold](S1Grid.fold_py.html) | an angle moved into [min, min + period) |
| [ladderIndex](S1Grid.ladderIndex_py.html) | the index of the nearest point of an equispaced ladder, arithmetic |
| [max](S1Grid.max_py.html) | the maximum of a function on SO(3) or the sphere, the value and the position, numLocal local maxima from a grid refined down to the accuracy |
| [min](S1Grid.min_py.html) | the minimum of a function on SO(3) or the sphere, the value and the position, numLocal local minima |
| [nearest](S1Grid.nearest_py.html) | the index of the nearest point, for any array of angles |
| [neighbours](S1Grid.neighbours_py.html) | the indices of the points within eps of one angle, in order |
| [period](S1Grid.period_py.html) | the length max - min of a periodic grid, zero for one that is not periodic |
| [plot](S1Grid.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [refine](S1Grid.refine_py.html) | the directions with a new one between every three neighbours: the centroids of the Delaunay triangles of the points on the sphere, none below the lowest point, so a cap stays a cap |
| [S1Grid](S1Grid.S1Grid_py.html) | a sorted list of angles on an interval [min, max], periodic or not, the nearest neighbour and radius search of the tensor product grids S2Grid and SO3Grid |
| [subGrid](S1Grid.subGrid_py.html) | the points selected by a mask, the range kept |

MATLAB's [S1Grid_index](S1Grid_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s1grid.py#L10">source</a></font>
{% endraw %}
