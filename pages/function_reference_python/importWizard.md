---
title: 'importWizard'
sidebar: function_reference_sidebar
permalink: importWizard_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the import wizard: a window that browses the files of a folder, shows what a file holds,
lets the phases, the conventions and the reference frames be chosen and writes the Python of
the import; MATLAB's import_wizard

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd = importWizard()
```

Browse the current folder.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = importWizard('/data/ebsd')
```

A folder, or a file to open on start.

</div>

<div class="mx-form" markdown="1">

```python
w = importWizard(show=False, exec=False)
```

The window, without its event loop.

</div>

## Description

The window blocks until it is closed and returns the map imported, unless a Qt event loop
runs already, as under IPython's %gui qt, where it returns the window. From a terminal,
mtex-wizard [path] or python -m mtex.wizard [path] opens the same. It needs PySide6, the
wizard extra (pip install mtex[wizard]), and on Linux the system libraries of Qt, which it
names when they are missing. The keywords go to runWizard: show=False keeps the window
hidden, exec=False returns it without running the event loop.

## Input

| `path` | a folder to browse or a file to open, by default the current folder |

## Output

| `ebsd` | the map imported, None when nothing was; or the window |

## See also

[loadEBSD](loadEBSD_ang_py.html), [inspectEBSD](inspectEBSD_py.html), [buildImportWizardScript](buildImportWizardScript_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
importWizard(path=None, **kwargs)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/wizard/__init__.py#L48">source</a></font>
{% endraw %}
