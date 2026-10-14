---
title: 'crystalShape.quartz'
sidebar: function_reference_sidebar
permalink: crystalShape.quartz_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [crystalShape](crystalShape_index_py.html).

the Quartz crystal shape of the catalogue, in cs when given, MATLAB's crystalShape.quartz

## Syntax

<div class="mx-form" markdown="1">

```python
cS = crystalShape.quartz()
```

In the catalogue's own frame.

</div>

<div class="mx-form" markdown="1">

```python
cS = crystalShape.quartz(cs)
```

In the crystal frame cs.

</div>

<div class="mx-form" markdown="1">

```python
cS = crystalShape.quartz(simple=True)
```

The simple shape, fewer faces.

</div>

## Description

The faces are the catalogue's lattice planes at their distances from the centre, or with a
habitus and extension. Without cs the shape is in the catalogue's own crystal frame, its point
group, axes and mineral; a frame cs given has to be of the catalogue's Laue class.

## Input

| `CS` | crystalFrame, the frame of the shape |

## Keywords

| keyword | default | description |
|---|---|---|
| `simple` | `False` | the simple shape of the catalogue, with fewer faces, MATLAB's 'simple' |

## Output

| `cS` | crystalShape |

## See also

[crystalShape](crystalShape_index_py.html), [crystalShape.plot](crystalShape.plot_py.html), [CrystalShapes](CrystalShapes_py.html)

## Used on

[CrystalReferenceSystem](CrystalReferenceSystem_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalshape.py#L1463">source</a></font>
{% endraw %}
