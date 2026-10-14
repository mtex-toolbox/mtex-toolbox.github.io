---
title: 'EBSD.EBSD'
sidebar: function_reference_sidebar
permalink: EBSD.EBSD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.EBSD.html
status: Reference
---
{% raw %}
an EBSD map: positions, rotations and phase ids with the list of the phases' frames and the
properties, a scattered list or, gridified, arrays in map shape; nan positions are dropped and
the lattice is read off the positions or a unit cell

## Syntax

```python
EBSD(pos, rotations, phaseId, CSList, prop=None, unitCell=None, scanUnit='um', frame=None, lattice=None, meta=None, phaseMap=None, id=None, isPadding=None)
```

```python
EBSD(pos, rotations, phaseId, CSList, prop)
EBSD(pos, rotations, phaseId, CSList, prop, unitCell=uC)
```

## Used on

[EBSDKAM](EBSDKAM_py.html)

MATLAB's [EBSD.EBSD](EBSD.EBSD.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L41">source</a></font>
{% endraw %}
