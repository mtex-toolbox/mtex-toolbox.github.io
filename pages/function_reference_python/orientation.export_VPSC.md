---
title: 'orientation.export_VPSC'
sidebar: function_reference_sidebar
permalink: orientation.export_VPSC_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.export_VPSC.html
status: Reference
---
{% raw %}
write a map to the file the extension names

## Syntax

<div class="mx-form" markdown="1">

```python
export(ebsd, 'map.ang')
```

TSL / EDAX, the correction of setting 2 undone.

</div>

<div class="mx-form" markdown="1">

```python
export(ebsd, 'map.ctf')
```

Oxford / Channel, the half turn about y undone.

</div>

<div class="mx-form" markdown="1">

```python
export(ebsd, 'map.h5oina')
```

Into a copy of the file the map came from.

</div>

<div class="mx-form" markdown="1">

```python
export(ebsd, 'map.txt', 'ABG', radians=True)
```

A table of x y, the Euler angles, the phase and the properties.

</div>

<div class="mx-form" markdown="1">

```python
export(v, 'vectors.txt')
```

A list of directions as a table, see exportVector3d.

</div>

<div class="mx-form" markdown="1">

```python
export(pf, 'dubna', degree=True)
```

A pole figure data set, one table per pole figure.

</div>

## Signature

<div class="mx-form" markdown="1">

```python
export(ebsd, fname, *args, **kwargs)
```

</div>

## Used on

[OrientationExport](OrientationExport_py.html), [EBSDExport](EBSDExport_py.html), [GrainExport](GrainExport_py.html), [ODFExport](ODFExport_py.html), [PoleFigureExport](PoleFigureExport_py.html), [VectorsExport](VectorsExport_py.html)

MATLAB's [orientation.export_VPSC](orientation.export_VPSC.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/exportebsd.py#L164">source</a></font>
{% endraw %}
