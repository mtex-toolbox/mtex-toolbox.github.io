---
title: 'grain3d.grain3d'
sidebar: function_reference_sidebar
permalink: grain3d.grain3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d.grain3d.html
status: Reference
---
{% raw %}
the grains of a volume as closed polyhedra, given by the incidence I_GF of grains and the
faces of a grain3Boundary: what calcGrains returns for a volume, the counterpart of grain2d

## Syntax

```python
grains = calcGrains(ebsd3)
grain3d.fromFaces(V, F, I_GF, ori, CSList, phaseId)
grain3d.load('grains.dream3d')
```

## Signature

```python
grain3d(id, phaseId, CSList, numPixel, meanRotation, GOS, I_GF, boundary, frame, prop=None, phaseMap=None)
```

MATLAB's [grain3d.grain3d](grain3d.grain3d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3d.py#L33">source</a></font>
{% endraw %}
