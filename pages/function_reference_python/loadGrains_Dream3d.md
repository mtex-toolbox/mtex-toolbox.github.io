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
the 3D grains read from a file, the surface mesh of a DREAM.3D file or the polyhedra of a
3D Neper tessellation; MATLAB's grain3d.load and loadGrains_Dream3d

## Syntax

<div class="mx-form" markdown="1">

```python
grains = loadGrains3d('grains.dream3d')
```

The surface mesh of DREAM.3D.

</div>

<div class="mx-form" markdown="1">

```python
grains = loadGrains3d('grains.dream3d', orientFaces=False)
```

The faces as stored.

</div>

<div class="mx-form" markdown="1">

```python
grains = loadGrains3d('grains.tess', CS=cs)
```

A Neper tessellation.

</div>

## Description

The format is told by the extension:

- '.dream3d': the surface mesh of DREAM.3D 6 or DREAM3D-NX, whatever its data containers are
called. A file without a surface mesh gives the grains calcGrains forms from the feature ids
of its voxels.
- '.tess': the polyhedra of a 3D Neper tessellation with the orientations it holds. A 2D
tessellation is refused; read it with loadNeperTess.

DREAM.3D stores the faces with random winding, so their normals point into or out of the
grain at random. The faces are therefore oriented on import by grain3d.orientFaces, which
makes the face normals, the grain volumes and boundary.grainId meaningful;
orientFaces=False keeps the winding of the file. grain3d.load is the same function.

## Input

| `fname` | the file name, .dream3d or .tess |

## Keywords

| keyword | default | description |
|---|---|---|
| `interface` | `None` | the format, 'dream3d' or 'neper'; by default told by the extension |
| `CS` | `None` | a crystalFrame or a phaseList replacing the phases of the file; for a Neper file by default the crystal system it states |
| `orientFaces` | `True` | orient the faces of a DREAM.3D mesh consistently, MATLAB's 'noOrientFaces' when False |

## Output

| `grains` | grain3d |

## See also

[grain3d.orientFaces](grain3d.orientFaces_py.html), [loadNeperTess](loadNeperTess_py.html), [loadEBSD3](loadEBSD3_py.html), [calcGrains](EBSD.calcGrains_py.html), [Dream3dGrains](Dream3dGrains_py.html), [NeperInterface](NeperInterface_py.html)

MATLAB's [loadGrains_Dream3d](loadGrains_Dream3d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/loadgrains3d.py#L26">source</a></font>
{% endraw %}
