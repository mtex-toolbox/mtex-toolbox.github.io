---
title: 'EBSD3.gradientY'
sidebar: function_reference_sidebar
permalink: EBSD3.gradientY_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

the derivative of the orientation along the second axis of the volume per unit length;
MATLAB's gradientY of EBSD3square

## Syntax

<div class="mx-form" markdown="1">

```python
g = ebsd3['Iron'].gradientY()
```

A vector3d per voxel.

</div>

## Description

gradientDim(ebsd, 1): the logarithm of the next voxel's orientation at this one's, a left
tangent vector in specimen coordinates, over the voxel spacing; the forward difference,
backwards in the last layer, and NaN across a grain boundary when the volume stores
grainId. The volume is gridded first and must hold one indexed phase.

## Input

| `ebsd` | EBSD3 of one indexed phase |

## Keywords

| keyword | default | description |
|---|---|---|
| `stencil` | `'oneSided'` | 'oneSided', the one sided difference, the one a volume takes; another is refused |

## Output

| `g` | vector3d of the shape of the gridded volume, in the inverse scan unit |

## See also

[EBSD3.gradientX](EBSD3.gradientX_py.html), [EBSD3.gradientY](EBSD3.gradientY_py.html), [EBSD3.gradientZ](EBSD3.gradientZ_py.html), [EBSD3.curvature](EBSD3square.curvature_py.html), [EBSD.gradientY](EBSD.gradientY_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/intragranular3d.py#L92">source</a></font>
{% endraw %}
