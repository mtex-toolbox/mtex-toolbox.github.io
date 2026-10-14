---
title: 'loadCall'
sidebar: function_reference_sidebar
permalink: loadCall_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the one line load of a file, for the clipboard

## Syntax

Ebsd = EBSD.load('/.../map.ctf'):

```python
line = loadCall('map.ctf')
```

A map of a project file:

```python
line = loadCall('map.h5oina', dataSet=2, dataSets=[1, 2, 3])
```

A volume:

```python
line = loadCall('volume.dream3d', variable='vol', volume=True)
```

The file is written with its absolute path. The import wizard copies it to the clipboard;
buildImportWizardScript writes the whole script.

## Input

| | |
|---|---|
| `path` | the file |

## Output

| | |
|---|---|
| `line` | str |

## Keywords

| | default | |
|---|---|---|
| `dataSet` | `None` | the number of the map of a file with several |
| `dataSets` | `()` | the maps of the file; a dataSet is written only when there are several |
| `variable` | `'ebsd'` | the name of the variable the map is assigned to |
| `volume` | `False` | the file is a volume, read by EBSD3.load |

## See also

[buildImportWizardScript](buildImportWizardScript_py.html), [importWizard](importWizard_py.html), [EBSD.load](EBSD.load_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/importscript.py#L92">source</a></font>
{% endraw %}
