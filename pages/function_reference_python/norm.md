---
title: 'norm'
sidebar: function_reference_sidebar
permalink: norm_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
norm(x, ...) is x.norm(...), the method of the object passed; NumPy's norm for an array

## Syntax

```python
norm(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [embedding](embedding.norm_py.html) | the Euclidean norm of every image |
| [quaternion](quaternion.norm_py.html) | the norm of the quaternions, sqrt(a^2 + b^2 + c^2 + d^2) |
| [S1FunHarmonic](S1FunHarmonic.norm_py.html) | the L2 norm for the normalised measure, the Euclidean norm of the coefficients |
| [S1Kernel](S1Kernel.norm_py.html) | the L2 norm of the kernel, the Euclidean norm of its two sided coefficients |
| [S2FunHarmonic](S2FunHarmonic.norm_py.html) | the L2 norm for the normalised surface measure, or the Sobolev norm, one per function |
| [S2Kernel](S2Kernel.norm_py.html) | the L2 norm of the kernel, sqrt(sum_n A_n^2 / (2n+1)) |
| [S2VectorFieldHarmonic](S2VectorFieldHarmonic.norm_py.html) | the length at every direction, a function on the sphere, as MATLAB's norm |
| [SO3FunCBF](SO3FunCBF.norm_py.html) | the L2 norm of the function, from its harmonic expansion |
| [SO3FunHarmonic](SO3FunHarmonic.norm_py.html) | the L2 norm, or the Sobolev norm sqrt(sum (2n+1)^{2s} \|fhat_n\|^2) |
| [SO3FunRBF](SO3FunRBF.norm_py.html) | the L2 norm of the function, from its harmonic expansion |
| [SO3Kernel](SO3Kernel.norm_py.html) | the L2 norm of the kernel, the Euclidean norm of its coefficients |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.norm_py.html) | the length of the vectors as a function on SO(3), the same as abs |
| [SO3VectorFieldRBF](SO3VectorFieldRBF.norm_py.html) | the length of the vectors as a function on SO(3), the same as abs |
| [spatialTransform](spatialTransform.norm_py.html) | the length of the displacement at every position |
| [strainTensor](strainTensor.norm_py.html) | the Frobenius norm of every tensor, over all its coefficients |
| [tensor](tensor.norm_py.html) | the Frobenius norm of every tensor, over all its coefficients |
| [vector3d](vector3d.norm_py.html) | the length of the vectors |

## Used on

[LatticeMetric](LatticeMetric_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html), [Grains3DProperties](Grains3DProperties_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDSpatialTransform](EBSDSpatialTransform_py.html), [WaveVelocities](WaveVelocities_py.html), [Properties](Properties_py.html), [GrainSmoothingAdvanced](GrainSmoothingAdvanced_py.html), [EllipseBasedParameters](EllipseBasedParameters_py.html), [ProjectionBasedParameters](ProjectionBasedParameters_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
