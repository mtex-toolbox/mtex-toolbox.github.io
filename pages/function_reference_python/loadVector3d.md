---
title: 'loadVector3d'
sidebar: function_reference_sidebar
permalink: loadVector3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the directions a text table holds, and the other columns it names

## Syntax

```python
loadVector3d(fname, columnNames=None, columns=None, radians=False, delimiter=None, header=None)
```

```python
loadVector3d('vectors.txt', columnNames=['polar angle', 'azimuth angle'])
loadVector3d('vectors.txt', columnNames=['x', 'y', 'z', 'weight'])   S['weight'] alongside
loadVector3d('vectors.txt', columnNames=[...], columns=[1, 0])       the columns the names sit in, from zero
loadVector3d('vectors.txt')                                          the names on the line above the block
```

The coordinates are x, y, z, kept at their length; polar and azimuth, colatitude and
longitude, or latitude and longitude, angles in degrees unless radians=True, read as unit
directions.

## Used on

[S2FunApproximationInterpolation](S2FunApproximationInterpolation_py.html), [VectorsExport](VectorsExport_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/vectors.py#L29">source</a></font>
{% endraw %}
