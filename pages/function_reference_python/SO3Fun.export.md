---
title: 'SO3Fun.export'
sidebar: function_reference_sidebar
permalink: SO3Fun.export_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.export.html
status: Reference
---
{% raw %}
write a map to the file the extension names

## Syntax

```python
export(ebsd, 'map.ang')                   TSL / EDAX, the correction of setting 2 undone
export(ebsd, 'map.ctf')                   Oxford / Channel, the half turn about y undone
export(ebsd, 'map.h5oina')                into a copy of the file the map came from
export(ebsd, 'map.txt', 'ABG', radians=True)   a table of x y, the Euler angles, the phase and the properties
export(v, 'vectors.txt')                  a list of directions as a table, see exportVector3d
export(pf, 'dubna', degree=True)          a pole figure data set, one table per pole figure
```

## Signature

```python
export(ebsd, fname, *args, **kwargs)
```

## Used on

[OrientationExport](OrientationExport_py.html), [EBSDExport](EBSDExport_py.html), [GrainExport](GrainExport_py.html), [ODFExport](ODFExport_py.html), [PoleFigureExport](PoleFigureExport_py.html), [VectorsExport](VectorsExport_py.html)

MATLAB's [SO3Fun.export](SO3Fun.export.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/exportebsd.py#L164">source</a></font>
{% endraw %}
