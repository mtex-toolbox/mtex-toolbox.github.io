---
title: 'mean'
sidebar: function_reference_sidebar
permalink: mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
average objects using the mean defined for their type.

## Syntax

<div class="mx-form" markdown="1">

```python
average = mean(x)
```

</div>

## Description

For an MTEX object, mean(x, ...) calls x.mean(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.mean.

## Example

Average orientations that straddle a cubic symmetry boundary. The Euler angles
1 and 89 degrees represent orientations only two degrees apart under cubic symmetry.


```python
import numpy as np
from mtex import crystalFrame, orientation, degree, mean

cs = crystalFrame('m-3m')
ori = orientation.byEuler(np.array([1, 89])*degree, 0, 0, cs)
centre, projected = mean(ori, return_projected=True)
print('Input Euler phi1 (degrees):', [1, 89])
print('Misorientation to mean (degrees):', np.round(ori.angle(centre)/degree, 3))
print('Projected rotations to mean (degrees):', np.round(projected.angle(centre, symmetry=False)/degree, 3))
```

The symmetry-aware mean lies near a cubic equivalent of zero degrees. Arithmetic averaging
of the Euler angles would give 45 degrees. Use a mean for a localized orientation cluster;
a broad or multimodal texture generally cannot be represented by one mean orientation.

```text
Input Euler phi1 (degrees): [1, 89]
Misorientation to mean (degrees): [1. 1.]
Projected rotations to mean (degrees): [1. 1.]
```


## Signature

<div class="mx-form" markdown="1">

```python
mean(x, *args, **kwargs)
```

</div>

## Methods it calls

| [embedding](embedding.mean_py.html) | the arithmetic mean of the images |
| [orientation](orientation.mean_py.html) | the mean of a list of orientations, with the principal moments and axes of inertia |
| [PoleFigure](PoleFigure.mean_py.html) | the mean intensity of each pole figure, the integral over the sphere |
| [quaternion](quaternion.mean_py.html) | the mean of a list of quaternions, with the principal moments and axes of inertia |
| [S1FunHandle](S1FunHandle.mean_py.html) | the mean over the circle, through the harmonic form |
| [S1FunHarmonic](S1FunHarmonic.mean_py.html) | the mean over the circle, the coefficient c_0 |
| [S2FunBingham](S2FunBingham.mean_py.html) | the mean value over the sphere, one: the distribution is normalised |
| [S2FunHandle](S2FunHandle.mean_py.html) | the mean over the sphere, through the harmonic form |
| [S2FunHarmonic](S2FunHarmonic.mean_py.html) | the mean over the sphere, int f dS / 4 pi, one per function |
| [S2FunSum](S2FunSum.mean_py.html) | the sum of the means of the summands |
| [S2FunTri](S2FunTri.mean_py.html) | estimate the spherical mean using Voronoi areas around the sample vertices |
| [S2VectorFieldHarmonic](S2VectorFieldHarmonic.mean_py.html) | the mean vector of the field over the sphere, read off the coefficients of degree zero |
| [SO3FunBingham](SO3FunBingham.mean_py.html) | the mean value of the function over SO(3), its weight |
| [SO3FunCBF](SO3FunCBF.mean_py.html) | the mean of the function over SO(3), the sum of the weights times the kernel's mean |
| [SO3FunComposition](SO3FunComposition.mean_py.html) | the sum of the means of the components |
| [SO3FunHarmonic](SO3FunHarmonic.mean_py.html) | the mean of every function |
| [SO3FunRBF](SO3FunRBF.mean_py.html) | the mean of the function over SO(3), c0 plus the sum of the weights times the kernel's mean |
| [SO3TangentVector](SO3TangentVector.mean_py.html) | the mean of tangent vectors at one shared reference, weighted when weights are given |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.mean_py.html) | the mean over SO(3), and the length of the vectors as a function, MATLAB's norm |
| [tensor](tensor.mean_py.html) | the mean of a list of tensors, over all of them or along axes, weighted or not |
| [vector3d](vector3d.mean_py.html) | the mean direction of a list of vectors, of axes, or of crystal directions |

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [CPOSeismicProperties](CPOSeismicProperties_py.html), [IsotropicTheory](IsotropicTheory_py.html), [WaveVelocities](WaveVelocities_py.html), [TwinningBoundaries](TwinningBoundaries_py.html), [Grain_dispersion_axes](Grain_dispersion_axes_py.html), [FibreODFs](FibreODFs_py.html), [ODFCharacteristics](ODFCharacteristics_py.html), [ODFImport](ODFImport_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
