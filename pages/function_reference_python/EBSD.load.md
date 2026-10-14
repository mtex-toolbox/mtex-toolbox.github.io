---
title: 'EBSD.load'
sidebar: function_reference_sidebar
permalink: EBSD.load_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.load.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

read an EBSD map from a supported vendor file or a text table

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd = EBSD.load('map.ang')
ebsd = EBSD.load('map.ctf', grid=False)
```

</div>

## Description

This calls loadEBSD with the same arguments. The file format is selected from the extension
unless interface is given. Phase information, orientations, positions and available pixel
properties are read together; complete scans are returned on their grid by default.
For text-table column definitions and import corrections, consult loadEBSD. Use inspectEBSD
to inspect file metadata before importing.

## Input

| `fname` | input filename |
| `args` | positional options accepted by loadEBSD |
| `kwargs` | keyword options accepted by loadEBSD |

## Output

| `ebsd` | EBSD map |

## See also

[loadEBSD](loadEBSD_ang_py.html), [inspectEBSD](inspectEBSD_py.html), [EBSD.export](EBSD.export_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
EBSD.load(fname, *args, **kwargs)
```

</div>

MATLAB's [EBSD.load](EBSD.load.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L640">source</a></font>
{% endraw %}
