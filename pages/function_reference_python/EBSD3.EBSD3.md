---
title: 'EBSD3.EBSD3'
sidebar: function_reference_sidebar
permalink: EBSD3.EBSD3_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.EBSD3.html
status: Reference
---
{% raw %}
the measurements of a volume, a list or an (n1, n2, n3) array of voxels with their positions,
rotations and phases, the voxel lattice inferred from the positions when not given

## Syntax

```python
EBSD3(pos, rotations, phaseId, CSList, prop=None, scanUnit='um', frame=None, lattice=None, meta=None, phaseMap=None, id=None, isPadding=None, D=None)
```

```python
ebsd = EBSD3(pos, rot, phaseId, CSList)
ebsd = EBSD3(pos, rot, phaseId, CSList, prop={'ci': ci})
```

MATLAB's [EBSD3.EBSD3](EBSD3.EBSD3.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/ebsd3.py#L28">source</a></font>
{% endraw %}
