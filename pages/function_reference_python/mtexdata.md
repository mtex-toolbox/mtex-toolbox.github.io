---
title: 'mtexdata'
sidebar: function_reference_sidebar
permalink: mtexdata_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mtexdata.html
status: Reference
---
{% raw %}
the sample data of the documentation, read from the data repository

## Syntax

<div class="mx-form" markdown="1">

```python
mtexdata()
```

The table of the data sets.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = mtexdata('forsterite')
```

A map, read with the recipe its page uses.

</div>

<div class="mx-form" markdown="1">

```python
pf = mtexdata('dubna')
```

Pole figures, with their directions and coefficients.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = mtexdata('forsterite', root=mtexDataPath(), download=False)
```

From the local folder only.

</div>

## Description

The files are fetched from the data repository mtex-toolbox/mtex-data on first use and
kept under getMTEXpref('mtexDataPath'), MTEX_DATA or ~/.mtex/data; root names another
folder, a local copy of MTEX's data folder for instance. Every data set is read as its
documentation page does, in the plotting convention of the session: a page that wants a
particular alignment sets it itself. mtexdatafile gives the files without reading them.

## Input

| `name` | the name of the data set, case does not matter |

## Keywords

| keyword | default | description |
|---|---|---|
| `root` | `None` | the folder the files are kept in, instead of mtexDataPath() |
| `download` | `True` | fetch a missing file; False raises instead |
| `verbose` | `True` | report a download, its source and where the file is kept; False is MATLAB's silent |

## Output

| `ebsd` | EBSD, grain2d, PoleFigure, EBSD3, SO3Fun, S2Fun or tensor, by the data set; the table of the data sets without a name |

## See also

[mtexdatafile](mtexdatafile_py.html), [loadEBSD](loadEBSD_ang_py.html), [loadPoleFigure](loadPoleFigure_aachen_py.html)

## Used on

[CrystalOperations](CrystalOperations_py.html), [CrystalShapes](CrystalShapes_py.html), [OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDDenoising](EBSDDenoising_py.html), [EBSDExport](EBSDExport_py.html), [EBSDFilling](EBSDFilling_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDGrid](EBSDGrid_py.html)

MATLAB's [mtexdata](mtexdata.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/sampledata.py#L182">source</a></font>
{% endraw %}
