---
title: 'mtexdatafile'
sidebar: function_reference_sidebar
permalink: mtexdatafile_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the file of a sample data set, or its files, fetched on first use

## Syntax

```python
mtexdatafile(name, root=None, download=True)
```

Besides the data sets mtexdata reads, every data set of the data repository has its
files here, the Neper tessellation 'my100grains' for instance. root= is the folder the
files are kept in, mtexDataPath() by default; download=False raises for a missing one
instead of fetching it.


```python
fname = mtexdatafile('forsterite')
tess, oris = mtexdatafile('my100grains')      # a data set of several files
fname = mtexdatafile('forsterite', root=mtexDataPath(), download=False)
```

## Used on

[SymmetryAlignment](SymmetryAlignment_py.html), [OrientationImport](OrientationImport_py.html), [Grains3D](Grains3D_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DOperations](Grains3DOperations_py.html), [Grains3DProperties](Grains3DProperties_py.html), [Grains3DReconstruction](Grains3DReconstruction_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [NeperInterface](NeperInterface_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDImport](EBSDImport_py.html), [EBSDInterfaceHDF5](EBSDInterfaceHDF5_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/sampledata.py#L109">source</a></font>
{% endraw %}
