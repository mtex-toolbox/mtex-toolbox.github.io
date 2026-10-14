---
title: 'loadEBSD_osc'
sidebar: function_reference_sidebar
permalink: loadEBSD_osc_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: loadEBSD_osc.html
status: Reference
---
{% raw %}
the map a file holds, read by the loader its extension names; MATLAB's loadEBSD and its
interfaces loadEBSD_ang, loadEBSD_ctf, ...

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd = loadEBSD('map.ang')
```

An EDAX file, its phases from the header.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = loadEBSD('map.ang', setting=1)
```

Another alignment of the Euler angles and the map.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = loadEBSD('map.ang', crystalFrame('m-3m', mineral='Iron bcc'))
```

The phases of the file replaced.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = loadEBSD('map.txt', cs, columnNames=['phi1', 'Phi', 'phi2', 'x', 'y'], radians=True)
```

A table.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = loadEBSD('map.dat', interface='ang')
```

The format named rather than read off the name.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = loadEBSD('map.ang', grid=False)
```

The measurements as a list.

</div>

<div class="mx-form" markdown="1">

```python
maps = loadEBSD(['a.ang', 'b.ctf'])
```

One map per file.

</div>

## Description

The extension chooses the loader: .ang (EDAX, EMSphInx, the ACOM export of NanoMEGAS), .ctf
(Oxford), .cpr/.crc, .osc and the vendors' HDF5 files (.h5, .h5oina, .oh5, .dream3d, ...);
any other file is read as a table of named columns. A vendor file declares its phases; a
table states none, so CS is required for one.

Every other keyword goes to the format's loader. An .ang file takes setting, the alignment
of the Euler angles and the map, 1 to 4 (2 by default, 4 for an ACOM file), 0 for no
correction, or eulerCorrection, the rotation itself; scanUnit, the unit of the positions
('nm' for an ACOM file); and EDAX=True or EMSphInx=True, how the phase column is numbered,
which the header otherwise tells (EMSphInx names no material). A table takes columnNames,
columns, radians, delimiter, header and the Euler convention as a positional string.

A complete scan comes back gridified, its arrays in map shape, unless grid=False or the
preference gridifyOnImport is off; a scan whose positions do not form a grid stays a list
and says why. MATLAB's headerOnly is inspectEBSD here.

## Input

| `fname` | str or path, the file; or a list of them, read one by one |
| `CS` | crystalFrame or a list of them, the phases, the not indexed one first or left out; required for a table, for a vendor file one frame per phase it declares |

## Keywords

| keyword | default | description |
|---|---|---|
| `interface` | `None` | the format, 'ang', 'ctf', 'crc', 'osc', 'h5', ..., instead of the extension |
| `grid` | `True` | put a complete scan on its grid while it is read |

## Output

| `ebsd` | EBSD, or a list of EBSD for a list of files |

## See also

[EBSD.load](EBSD.load_py.html), [inspectEBSD](inspectEBSD_py.html), [importWizard](importWizard_py.html), [export](SO3Fun.export_py.html), [EBSDImport](EBSDImport_py.html), [EBSDReferenceFrame](EBSDReferenceFrame_py.html), [EBSDInterfaceHDF5](EBSDInterfaceHDF5_py.html)

MATLAB's [loadEBSD_osc](loadEBSD_osc.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/load.py#L460">source</a></font>
{% endraw %}
