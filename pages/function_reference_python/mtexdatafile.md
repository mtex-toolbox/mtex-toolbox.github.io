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

<div class="mx-form" markdown="1">

```python
fname = mtexdatafile('forsterite')
```

The file of a map.

</div>

<div class="mx-form" markdown="1">

```python
tess, oris = mtexdatafile('my100grains')
```

A data set of several files.

</div>

<div class="mx-form" markdown="1">

```python
fname = mtexdatafile('forsterite', root=mtexDataPath(), download=False)
```

Only a file already there.

</div>

<div class="mx-form" markdown="1">

```python
fnames = mtexdatafile('dubna', verbose=False)
```

Fetched without saying so.

</div>

## Description

Besides the data sets mtexdata reads, every data set of the data repository has its
files here, the Neper tessellation 'my100grains' for instance. A data set of one file gives
its path, one of several the list of paths. A missing file is downloaded from the data
repository into the folder root.

## Input

| `name` | the name of a data set, as mtexdata() lists them, or of a data set of the repository |

## Keywords

| keyword | default | description |
|---|---|---|
| `root` | `None` | the folder the files are kept in, mtexDataPath() by default |
| `download` | `True` | fetch a missing file; False raises for it instead |
| `verbose` | `True` | say when a file is fetched |

## Output

| `fname` | the path of the file, or a list of paths |

## See also

[mtexdata](mtexdata_py.html), [mtexDataPath](mtexDataPath_py.html)

## Used on

[SymmetryAlignment](SymmetryAlignment_py.html), [OrientationImport](OrientationImport_py.html), [Grains3D](Grains3D_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DOperations](Grains3DOperations_py.html), [Grains3DProperties](Grains3DProperties_py.html), [Grains3DReconstruction](Grains3DReconstruction_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [NeperInterface](NeperInterface_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDImport](EBSDImport_py.html), [EBSDInterfaceHDF5](EBSDInterfaceHDF5_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/sampledata.py#L112">source</a></font>
{% endraw %}
