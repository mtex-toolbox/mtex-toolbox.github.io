---
title: 'crystalShape.olivine'
sidebar: function_reference_sidebar
permalink: crystalShape.olivine_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

the olivine crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.olivine

## Syntax

In the catalogue's own frame:

```python
cS = crystalShape.olivine()
```

In the crystal frame cs:

```python
cS = crystalShape.olivine(cs)
```

The faces are the catalogue's lattice planes at their distances from the centre, or with a
habitus and extension. Without cs the shape is in the catalogue's own crystal frame, its point
group, axes and mineral; a frame cs given has to be of the catalogue's Laue class.

## Input

| | |
|---|---|
| `CS` | crystalFrame, the frame of the shape |

## Output

| | |
|---|---|
| `cS` | crystalShape |

## Keywords

| | default | |
|---|---|---|
| `simple` | `False` | the simple shape, which the catalogue does not have for olivine: True is refused |

## See also

[crystalShape](crystalShape_index_py.html), [crystalShape.plot](crystalShape.plot_py.html), [CrystalShapes](CrystalShapes_py.html)

## Used on

[CrystalShapes](CrystalShapes_py.html), [EBSDIPFMap](EBSDIPFMap_py.html), [EBSDReferenceFrame](EBSDReferenceFrame_py.html), [TransparencyDemo](TransparencyDemo_py.html), [EBSDTutorial](EBSDTutorial_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L1323">source</a></font>
{% endraw %}
