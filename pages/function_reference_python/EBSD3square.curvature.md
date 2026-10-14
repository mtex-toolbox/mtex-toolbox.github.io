---
title: 'EBSD3square.curvature'
sidebar: function_reference_sidebar
permalink: EBSD3square.curvature_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3square.curvature.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

the curvature tensor of every voxel; MATLAB's curvature of EBSD3square

## Syntax

<div class="mx-form" markdown="1">

```python
kappa = ebsd3['Iron'].curvature()
```

A curvatureTensor per voxel.

</div>

## Description

A volume measures the orientation gradient along all three axes of its voxels, so its
curvature tensor is complete: the dyads of the gradients gradientX, gradientY, gradientZ
with the unit steps d1, d2, d3 they are taken along, in the specimen frame and in the
inverse scan unit. The volume is gridded first and must hold one indexed phase.

## Input

| `ebsd` | EBSD3 of one indexed phase |

## Keywords

| keyword | default | description |
|---|---|---|
| `stencil` | `'oneSided'` | 'oneSided', the one sided difference, the one a volume takes; another is refused |

## Output

| `kappa` | curvatureTensor of the shape of the gridded volume |

## See also

[EBSD3.gradientX](EBSD3.gradientX_py.html), [EBSD3.calcGND](EBSD3square.calcGND_py.html), [EBSD.curvature](EBSD.curvature_py.html), [curvatureTensor](curvatureTensor_index_py.html)

MATLAB's [EBSD3square.curvature](EBSD3square.curvature.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/intragranular3d.py#L138">source</a></font>
{% endraw %}
