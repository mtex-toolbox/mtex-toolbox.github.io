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
the sample data of the documentation

## Syntax

```python
mtexdata(name=None, root=None, download=True, verbose=True)
```

```python
mtexdata()                       the table of the data sets
mtexdata('forsterite')           a map, read from its file with the recipe its page uses
mtexdata('dubna')                pole figures, read with their directions and coefficients
```

The files are fetched from the data repository mtex-toolbox/mtex-data on first use and
kept under getMTEXpref('mtexDataPath'), MTEX_DATA or ~/.mtex/data; root names another
folder, a local copy of MTEX's data folder for instance, and download=False never
fetches; silent is MATLAB's flag, the loading printing nothing anyway.

## Used on

[CrystalOperations](CrystalOperations_py.html), [CrystalShapes](CrystalShapes_py.html), [OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDDenoising](EBSDDenoising_py.html), [EBSDExport](EBSDExport_py.html), [EBSDFilling](EBSDFilling_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDGrid](EBSDGrid_py.html)

MATLAB's [mtexdata](mtexdata.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/sampledata.py#L167">source</a></font>
{% endraw %}
