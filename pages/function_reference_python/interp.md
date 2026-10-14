---
title: 'interp'
sidebar: function_reference_sidebar
permalink: interp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
interp(x, ...) is x.interp(...), the method of the object passed

## Syntax

<div class="mx-form" markdown="1">

```python
interp(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.interp_py.html) | the map read at positions of one's own choosing, a new map with these positions |
| [EBSD3](EBSD3.interp_py.html) | the voxel holding every position, or none outside the box of voxel centres, as MATLAB's nearest griddedInterpolant without extrapolation |
| [mapImage](mapImage.interp_py.html) | the image values at arbitrary positions |
| [rotation](rotation.interp_py.html) | interp(ori, values, 'harmonic' \| 'bingham'): a function on SO(3) through values at the rotations, by the function spaces above this layer, MATLAB's rotation/interp |
| [vector3d](vector3d.interp_py.html) | interp(v, y, 'linear' \| 'harmonic' \| 'nearest' \| 'inverseDistance'): a function on the sphere through the values y at the directions v, by the function spaces above this layer, vector3d/interp |

## Used on

[EBSDInter](EBSDInter_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html), [HarmonicApproximationTheory](HarmonicApproximationTheory_py.html), [RBFApproximationTheory](RBFApproximationTheory_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html), [S2FunApproximationInterpolation](S2FunApproximationInterpolation_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
