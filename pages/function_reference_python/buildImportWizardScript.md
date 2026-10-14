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
the Python script of an import as the import wizard sets it up: the file, the plotting
convention, the correction of the Euler angles, the phases and a first plot

## Syntax

The plain load:

```python
script = buildImportWizardScript('map.ctf')
```

A map of a project file:

```python
script = buildImportWizardScript('map.h5oina', dataSet=2, dataSets=sets)
```

Phases edited:

```python
script = buildImportWizardScript('map.ang', phases=csList, headerPhases=info.phases)
```

A correction:

```python
script = buildImportWizardScript('map.ctf', mapConvention='y↑→x', eulerConvention='y↓→x')
```

A volume, read by EBSD3.load:

```python
script = buildImportWizardScript('volume.dream3d', volume=True)
```

The script sets the plotting convention of the map, loads the file with EBSD.load or
EBSD3.load, turns the Euler angles where their frame differs from the map's, replaces the
phases where they differ from what the file declares, and plots the orientations of the
largest phase. It runs as it is and reproduces the import. The window's Script tab shows
it; loadCall gives the one line load.

## Input

| | |
|---|---|
| `path` | the file |

## Output

| | |
|---|---|
| `script` | str |

## Keywords

| | default | |
|---|---|---|
| `phases` | `None` | phaseList, the phases as edited, written out where they differ from headerPhases |
| `headerPhases` | `None` | the phases the file declares, a phaseList or the snapshot frameKeys took |
| `dataSet` | `None` | the number of the map of a file with several |
| `dataSets` | `()` | the maps of the file; a dataSet is written only when there are several |
| `mapConvention` | `'y↑→x'` | the plotting convention of the map |
| `eulerConvention` | `None` | the convention the Euler angles are written in; a correction is written where it differs from the map's |
| `vendorCorrection` | `None` | the correction the reader applies anyway, which is then not written |
| `variable` | `'ebsd'` | the name of the variable the map is assigned to |
| `drawn` | `None` | the phases the plot may show, by index, True or False or a pixel count |
| `volume` | `False` | the file is a volume, read by EBSD3.load |

## See also

[importWizard](importWizard_py.html), [loadCall](loadCall_py.html), [inspectEBSD](inspectEBSD_py.html), [EBSD.load](EBSD.load_py.html), [EBSDImport](EBSDImport_py.html)

MATLAB's [buildImportWizardScript](buildImportWizardScript.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/importscript.py#L23">source</a></font>
{% endraw %}
