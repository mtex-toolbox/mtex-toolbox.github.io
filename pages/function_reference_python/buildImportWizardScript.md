---
title: 'buildImportWizardScript'
sidebar: function_reference_sidebar
permalink: buildImportWizardScript_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: buildImportWizardScript.html
status: Reference
---
{% raw %}
the script of an import: the file, the plotting convention, the correction, the phases, a plot

## Syntax

```python
buildImportWizardScript(path, phases=None, headerPhases=None, dataSet=None, dataSets=(), mapConvention='y↑→x', eulerConvention=None, vendorCorrection=None, variable='ebsd', drawn=None, volume=False)
```

```python
buildImportWizardScript('map.ctf')                             the plain load
buildImportWizardScript('map.oh5', dataSet=1, dataSets=sets)   a map of a project file
buildImportWizardScript('map.ang', phases=csList, headerPhases=info.phases)
buildImportWizardScript('volume.dream3d', volume=True)         a volume, read by EBSD3.load
```

MATLAB's [buildImportWizardScript](buildImportWizardScript.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/importscript.py#L23">source</a></font>
{% endraw %}
