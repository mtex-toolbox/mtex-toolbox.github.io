---
title: 'loadGrains_Dream3d'
sidebar: function_reference_sidebar
permalink: loadGrains_Dream3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: loadGrains_Dream3d.html
status: Reference
---
{% raw %}
the 3D grains of a file, MATLAB's grain3d.load: the surface mesh of a DREAM.3D file, the
grains of its feature ids where it holds no mesh, or the polyhedra of a 3D Neper tessellation;
the faces of a mesh are oriented unless orientFaces=False

## Syntax

```python
loadGrains3d(fname, *args, interface=None, CS=None, orientFaces=True, **kwargs)
```

```python
loadGrains3d('grains.dream3d')
loadGrains3d('grains.tess', CS=cs)
```

MATLAB's [loadGrains_Dream3d](loadGrains_Dream3d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/loadgrains3d.py#L26">source</a></font>
{% endraw %}
