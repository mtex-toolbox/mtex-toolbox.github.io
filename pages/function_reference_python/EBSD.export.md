---
title: 'EBSD.export'
sidebar: function_reference_sidebar
permalink: EBSD.export_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.export.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

write the EBSD map to a vendor format or a text table

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd.export('map.ang')
ebsd.export('map.ctf')
ebsd.export('map.txt')
```

</div>

## Description

The filename extension chooses the exporter. Orientations, positions, phase information
and supported pixel properties are written together. Export reverses the import correction
for the target vendor convention. HDF5 export uses a copy of the original vendor file;
consult export for supported formats, required source metadata and options.

## Input

| `fname` | output filename |
| `args` | positional export options |
| `kwargs` | keyword export options |

## See also

[export](SO3Fun.export_py.html), [EBSD.load](EBSD.load_py.html), [loadEBSD](loadEBSD_ang_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
EBSD.export(self, fname, *args, **kwargs)
```

</div>

MATLAB's [EBSD.export](EBSD.export.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L688">source</a></font>
{% endraw %}
