---
title: 'The class SO3VectorFieldRBF'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldRBF_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a vector field on SO(3) as a sum of radial kernels at centre orientations with weight vectors,
exactly equivariant; from tangent vectors at orientations or another field it is fitted

```python
SO3VectorFieldRBF(center, weights, psi)
SO3VectorFieldRBF(t, kernel=psi)                  through tangent vectors t
SO3VectorFieldRBF(F, resolution=5*degree)         another field on a grid
```

## Members

| | |
|---|---|
| [bandwidth](SO3VectorFieldRBF.bandwidth_py.html) | the bandwidth of the kernel |
| [CS](SO3VectorFieldRBF.CS_py.html) | the crystal frame of the field, that of the centres |
| [dot](SO3VectorFieldRBF.dot_py.html) | the pointwise inner product: with another field a function on SO(3), with a constant vector a function on the component frames |
| [eval](SO3VectorFieldRBF.eval_py.html) | the tangent vectors of the field at orientations, the kernel sums over the symmetric equivalents of the centres |
| [frameA](SO3VectorFieldRBF.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](SO3VectorFieldRBF.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [interpolate](SO3VectorFieldRBF.interpolate_py.html) | the function of least squares through values at nodes, on SO(3) for orientations, on the sphere for directions, a vector field for vector values, fitted by LSQR with a Sobolev penalty lambda_ of order s |
| [norm](SO3VectorFieldRBF.norm_py.html) | the length of the vectors as a function on SO(3), the same as abs |
| [normalize](SO3VectorFieldRBF.normalize_py.html) | the field of unit vectors in the directions of the field, by quadrature at twice the bandwidth |
| [plus](SO3VectorFieldRBF.plus_py.html) |  |
| [rotate](SO3VectorFieldRBF.rotate_py.html) | the field turned by a rotation, from the left or with side='right' from the right, the centres and weights moved |
| [SO3VectorFieldRBF](SO3VectorFieldRBF.SO3VectorFieldRBF_py.html) | a vector field on SO(3) as a sum of radial kernels at centre orientations with weight vectors, exactly equivariant |
| [SS](SO3VectorFieldRBF.SS_py.html) | the specimen frame of the field, that of the centres |
| [times](SO3VectorFieldRBF.times_py.html) |  |
| [uminus](SO3VectorFieldRBF.uminus_py.html) |  |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L748">source</a></font>
{% endraw %}
