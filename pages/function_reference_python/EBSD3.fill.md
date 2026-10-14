---
title: 'EBSD3.fill'
sidebar: function_reference_sidebar
permalink: EBSD3.fill_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.fill.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

the empty voxels, padding and not indexed, given the phase, orientation and properties of
the nearest measured voxel; without extrapolate only those enclosed by measured voxels, the
ones the outside of the volume reaches over empty voxels staying empty

## Syntax

```python
EBSD3.fill(ebsd, extrapolate=False)
```

MATLAB's [EBSD3.fill](EBSD3.fill.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/intragranular3d.py#L138">source</a></font>
{% endraw %}
