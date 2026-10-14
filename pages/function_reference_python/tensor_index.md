---
title: 'The class tensor'
sidebar: function_reference_sidebar
permalink: tensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor_index.html
status: Reference
---
{% raw %}
a tensor of rank R in a reference frame, or a list of them

## Syntax

The coefficients in a crystal frame:

```python
T = tensor(M, cs)
```

The rank, a name and a unit:

```python
T = tensor(M, cs, rank=2, name='strain', unit='%')
```

A vector as a tensor of rank one:

```python
T = tensor(v)
```

A rotation as its matrix, rank two:

```python
T = tensor(rot)
```

A 6 x 6 Voigt matrix:

```python
C = tensor(V, rank=4)
```

With the factors of two of the compliance:

```python
S = tensor(V, rank=4, doubleConvention=True)
```

A matrix in the Kelvin notation:

```python
C = tensor(V, rank=4, Kelvin=True)
```

The coefficients M are an array whose last R indices have dimension three, the dimensions
in front of them the shape of the list; the rank, when not given, is the number of trailing
dimensions of size three. A 6 x 6 matrix is read as the Voigt matrix of a rank four tensor,
a 3 x 6 matrix as that of a rank three one. Rotating the tensor, or an orientation acting on
it, ori * T, transforms the coefficients, which is what the texture averages build on.

The frame is a crystalFrame or a specimenFrame, given positionally or as frame=; without one
the tensor is in the default specimen frame. T.M gives the coefficients back, T.rank,
T.frame (T.CS) and T.isSymmetric what they say. The physical tensors, stiffnessTensor,
complianceTensor, strainTensor, stressTensor, ..., are subclasses fixing the rank and the
Voigt convention.

## Input

| | |
|---|---|
| `M` | array of the coefficients, (..., 3, ..., 3), a Voigt matrix (..., 6, 6), a vector3d or a rotation |
| `cs` | crystalFrame or specimenFrame the coefficients refer to |

## Output

| | |
|---|---|
| `T` | tensor |

## Keywords

| | default | |
|---|---|---|
| `rank` |  | the rank of the tensor, read from the shape of M when not given |
| `doubleConvention` |  | read and write a Voigt matrix with the factors of two off the diagonal, as is usual for the compliance |
| `frame` |  | the reference frame of the coefficients, instead of giving it positionally |
| `density` |  | the mass density of the material, carried along (the wave velocities use it) |
| `unit` |  | the physical unit of the coefficients, a string carried along |
| `name` |  | the name of the tensor, carried along |
| `Kelvin` |  | read a 6 x 6 matrix in the Kelvin (Mandel) notation |
| `dtype` |  | the NumPy type of the coefficients |

## See also

[stiffnessTensor](stiffnessTensor_index_py.html), [strainTensor](strainTensor_index_py.html), [stressTensor](stressTensor_index_py.html), [tensor.rotate](tensor.rotate_py.html), [TensorDefinition](TensorDefinition_py.html)

## Members

| | |
|---|---|
| [antiSym](tensor.antiSym_py.html) | the antisymmetric part (T - T^t) / 2 of a rank two tensor |
| [cat](tensor.cat_py.html) | the list of the tensors, MATLAB's [T1, T2] |
| [checkSymmetry](tensor.checkSymmetry_py.html) | whether the tensor is invariant under every element of the group of its frame |
| [colon](tensor.colon_py.html) | the double contraction A : B, the last two indices of A against the first two of B, MATLAB's A:B |
| [CS](tensor.CS_py.html) | the frame the tensor is written in, MATLAB's T.CS |
| [ctranspose](tensor.ctranspose_py.html) | the transpose swaps the indices of a rank two and the pairs of a rank four |
| [det](tensor.det_py.html) | the determinant of a rank two tensor |
| [directionalMagnitude](tensor.directionalMagnitude_py.html) | the magnitude of a tensor in the direction v, the tensor contracted with the unit direction on every index, T_i1...iR v_i1 .. |
| [double](tensor.double_py.html) | the coordinates of the images of an embedding in their orthonormal basis, one row per orientation, e.double() |
| [eig](tensor.eig_py.html) | the eigenvalues in ascending order and the eigenvectors as axes of the frame |
| [eigvals](tensor.eigvals_py.html) | the eigenvalues in ascending order, of a rank two tensor or of the Voigt matrix of a rank four |
| [EinsteinSum](tensor.EinsteinSum_py.html) | the contraction of tensors, vectors, rotations or arrays over the indices they share |
| [eq](tensor.eq_py.html) | whether two tensors of one rank and shape agree coefficientwise within rtol and atol |
| [expm](tensor.expm_py.html) | the matrix exponential of a rank two tensor, or of a rank four one through its Kelvin matrix, the class kept |
| [export](tensor.export_py.html) | write a map to the file the extension names |
| [eye](tensor.eye_py.html) | the identity tensor, of rank two the unit matrix, of rank four the symmetric identity on rank two tensors |
| [frame](tensor.frame_py.html) | the frame the tensor is written in, a crystal frame or the specimen frame |
| [horzcat](tensor.horzcat_py.html) | the list of the tensors, MATLAB's [T1, T2] |
| [inv](tensor.inv_py.html) | the inverse: rank two by the matrix, rank four through the Voigt matrix, which swaps the convention and with it the class, a stiffness inverting to a compliance |
| [isSkewSymmetric](tensor.isSkewSymmetric_py.html) | whether every tensor equals minus its transpose, up to a relative 1e-6 |
| [isSymmetric](tensor.isSymmetric_py.html) | whether every tensor of rank two or four equals its transpose, up to a relative 1e-6 |
| [leviCivita](tensor.leviCivita_py.html) | a property of the class itself, vector3d.X |
| [load](tensor.load_py.html) | stiffnessTensor.load(fname): the tensor of a file as the class it is called on |
| [logm](tensor.logm_py.html) | the matrix logarithm of a rank two tensor, or of a rank four one through its Kelvin matrix, the class kept |
| [M](tensor.M_py.html) | the coefficients as an array of shape (..., 3, ..., 3), the rank's indices last |
| [mean](tensor.mean_py.html) | the mean of a list of tensors, over all of them or along axes, weighted or not |
| [minus](tensor.minus_py.html) |  |
| [mrdivide](tensor.mrdivide_py.html) |  |
| [mtimes](tensor.mtimes_py.html) |  |
| [ne](tensor.ne_py.html) | Return self!=value |
| [norm](tensor.norm_py.html) | the Frobenius norm of every tensor, over all its coefficients |
| [normalize](tensor.normalize_py.html) | the tensors divided by their Frobenius norms |
| [ones](tensor.ones_py.html) | a tensor of ones of the rank of the class, or a list of them |
| [plot](tensor.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plus](tensor.plus_py.html) |  |
| [polar](tensor.polar_py.html) | the polar decomposition T = R SR = SL R of a rank two tensor, R orthogonal, SL and SR symmetric |
| [rand](tensor.rand_py.html) | a random tensor with the symmetries its class and frame ask for |
| [rdivide](tensor.rdivide_py.html) |  |
| [rotate](tensor.rotate_py.html) | the tensor turned by a rotation, an orthogonal transform or an orientation |
| [sqrtm](tensor.sqrtm_py.html) | the matrix square root of a rank two tensor, or of a rank four one through its Kelvin matrix, the class kept |
| [subsref](tensor.subsref_py.html) |  |
| [sum](tensor.sum_py.html) | the sum of a list of tensors, over all of them or along axes |
| [svd](tensor.svd_py.html) | the singular value decomposition: of a rank two tensor the left singular vectors, the singular values from the largest and the right singular vectors, T v_k = s_k u_k |
| [sym](tensor.sym_py.html) | the symmetric and the antisymmetric part, the mean over the permutations of the indices |
| [symmetrise](tensor.symmetrise_py.html) | the mean over the group of the frame, and whether the tensor is invariant under it |
| [T](tensor.T_py.html) | the transpose, the indices of a rank two and the index pairs of a rank four swapped |
| [tensor](tensor.tensor_py.html) | a tensor of rank R in a reference frame, or a list of them |
| [times](tensor.times_py.html) | MATLAB's .*: the product of corresponding coefficients, the rank kept |
| [trace](tensor.trace_py.html) | the trace of a rank two tensor, or of the Voigt matrix of a rank four one |
| [transformReferenceFrame](tensor.transformReferenceFrame_py.html) | the same coefficients read in another frame, the numbers changed by the rigid part of the transition between the two bases |
| [transpose](tensor.transpose_py.html) | the transpose swaps the indices of a rank two and the pairs of a rank four |
| [uminus](tensor.uminus_py.html) |  |
| [vertcat](tensor.vertcat_py.html) | the list of the tensors, MATLAB's [T1, T2] |
| [Voigt](tensor.Voigt_py.html) | the Voigt matrix of a tensor: 6 x 6 for rank four, 3 x 6 for rank three, six components for rank two, the off diagonal entries doubled where the class prescribes it |
| [zeros](tensor.zeros_py.html) | a tensor of zeros of the rank of the class, or a list of them |

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [TensorArithmetics](TensorArithmetics_py.html), [TensorDefinition](TensorDefinition_py.html), [TensorVisualisation](TensorVisualisation_py.html)

MATLAB's [tensor_index](tensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L134">source</a></font>
{% endraw %}
