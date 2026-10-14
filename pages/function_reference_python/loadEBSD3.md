---
title: 'loadEBSD3'
sidebar: function_reference_sidebar
permalink: loadEBSD3_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the 3D EBSD map of a volume file, MATLAB's EBSD3.load: the voxel data of a DREAM.3D file, the
LabDCT volume of an xnovo file, or a stack of 2D maps at the heights z; CS replaces the
phases of the file

## Syntax

```python
loadEBSD3(fname, *args, interface=None, z=None, CS=None, **kwargs)
```

```python
loadEBSD3('volume.dream3d')
loadEBSD3('volume.h5', interface='xnovo')
loadEBSD3(['s0.ang', 's1.ang'], z=[0, 1])
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/load3d.py#L40">source</a></font>
{% endraw %}
