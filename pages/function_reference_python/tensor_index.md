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

frame= gives the frame as a keyword, name=, unit= and density= are carried along, and
Kelvin=True reads a 6 x 6 matrix in the Kelvin (Mandel) notation.


```python
T = tensor(M, cs)                         # the coefficients, the list dimensions in front
T = tensor(M, cs, rank=2, name='strain', unit='%')
T = tensor(v), tensor(rot)                # a vector as a rank one, a rotation as a rank two
T = tensor(V, rank=4)                     # a 6 x 6 Voigt matrix
T = tensor(V, rank=4, doubleConvention=True)   # with the factors of two of the compliance
T.M, T.rank, T.frame, T.CS, T.isSymmetric
```

## Members

| | |
|---|---|
| [antiSym](tensor.antiSym_py.html) | the antisymmetric part (T - T^t) / 2 of a rank two tensor |
| [cat](tensor.cat_py.html) | the list of tensors of different densities keeps one density per tensor, as MATLAB's [C1, C2] does, which is what a weighted mean averages |
| [checkSymmetry](tensor.checkSymmetry_py.html) | whether the tensor is invariant under every element of the group of its frame, up to atol relative to the largest norm |
| [colon](tensor.colon_py.html) | the double contraction A : B, the last two indices of A against the first two of B, MATLAB's A:B |
| [CS](tensor.CS_py.html) | the frame the tensor is written in, MATLAB's T.CS |
| [ctranspose](tensor.ctranspose_py.html) | the transpose swaps the indices of a rank two and the pairs of a rank four |
| [det](tensor.det_py.html) | the determinant of a rank two tensor |
| [directionalMagnitude](tensor.directionalMagnitude_py.html) | the tensor contracted with the unit direction on every index |
| [double](tensor.double_py.html) | double(e) is e.double(): the coordinates of the images in the orthonormal basis, one row per orientation |
| [eig](tensor.eig_py.html) | the eigenvalues in ascending order and the eigenvectors as axes of the frame |
| [eigvals](tensor.eigvals_py.html) | the eigenvalues in ascending order, of a rank two tensor or of the Voigt matrix of a rank four |
| [EinsteinSum](tensor.EinsteinSum_py.html) | the contraction of tensors, vectors, rotations or arrays over the indices they share |
| [eq](tensor.eq_py.html) | whether two tensors of one rank and shape agree coefficientwise within rtol and atol |
| [expm](tensor.expm_py.html) | the matrix exponential of a rank two tensor, or of a rank four one through its Kelvin matrix, the class kept |
| [export](tensor.export_py.html) | write a map to the file the extension names |
| [eye](tensor.eye_py.html) | the identity tensor, rank two the unit matrix, rank four the symmetric identity on rank two tensors |
| [frame](tensor.frame_py.html) | the frame the tensor is written in, a crystal frame or the specimen frame |
| [horzcat](tensor.horzcat_py.html) | the list of tensors of different densities keeps one density per tensor, as MATLAB's [C1, C2] does, which is what a weighted mean averages |
| [inv](tensor.inv_py.html) | the inverse: rank two by the matrix, rank four through the Voigt matrix, which swaps the convention and with it the class, a stiffness inverting to a compliance |
| [isSkewSymmetric](tensor.isSkewSymmetric_py.html) | whether every tensor equals minus its transpose, up to a relative 1e-6 |
| [isSymmetric](tensor.isSymmetric_py.html) | whether every tensor of rank two or four equals its transpose, up to a relative 1e-6 |
| [leviCivita](tensor.leviCivita_py.html) | a property of the class itself, vector3d.X |
| [load](tensor.load_py.html) | stiffnessTensor.load(fname): the tensor of a file as the class it is called on |
| [logm](tensor.logm_py.html) | the matrix logarithm of a rank two tensor, or of a rank four one through its Kelvin matrix, the class kept |
| [M](tensor.M_py.html) | the coefficients as an array of shape (..., 3, ..., 3), the rank's indices last |
| [mean](tensor.mean_py.html) | the mean over the list, or along axes of it, weighted or not |
| [minus](tensor.minus_py.html) |  |
| [mrdivide](tensor.mrdivide_py.html) |  |
| [mtimes](tensor.mtimes_py.html) |  |
| [ne](tensor.ne_py.html) | Return self!=value |
| [norm](tensor.norm_py.html) | the Frobenius norm of every tensor, over all its coefficients |
| [normalize](tensor.normalize_py.html) | the tensors divided by their Frobenius norms |
| [ones](tensor.ones_py.html) | a tensor of ones of the rank of the class, or of rank=, the list shape given by the numbers |
| [plot](tensor.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plus](tensor.plus_py.html) |  |
| [polar](tensor.polar_py.html) | the polar decomposition T = R SR = SL R of a rank two tensor, R orthogonal, SL and SR symmetric |
| [rand](tensor.rand_py.html) | a random tensor with the symmetries its class and frame ask for: a plain tensor of entries drawn uniformly from [0, 1], as MATLAB's, a symmetric one the symmetric part of such a tensor, symmetrised in its frame, a stiffness or compliance one positive definite besides |
| [rdivide](tensor.rdivide_py.html) |  |
| [rotate](tensor.rotate_py.html) | the tensor turned by a rotation, an orthogonal transform or an orientation |
| [sqrtm](tensor.sqrtm_py.html) | the matrix square root of a rank two tensor, or of a rank four one through its Kelvin matrix, the class kept |
| [subsref](tensor.subsref_py.html) |  |
| [sum](tensor.sum_py.html) | the sum of all tensors, or along axes of the array, MATLAB's sum(T, 2) |
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
| [vertcat](tensor.vertcat_py.html) | the list of tensors of different densities keeps one density per tensor, as MATLAB's [C1, C2] does, which is what a weighted mean averages |
| [Voigt](tensor.Voigt_py.html) | the Voigt matrix of a tensor: 6 x 6 for rank four, 3 x 6 for rank three, six components for rank two, the off diagonal entries doubled where the class prescribes it |
| [zeros](tensor.zeros_py.html) | a tensor of zeros of the rank of the class, or of rank=, the list shape given by the numbers |

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [TensorArithmetics](TensorArithmetics_py.html), [TensorDefinition](TensorDefinition_py.html), [TensorVisualisation](TensorVisualisation_py.html)

MATLAB's [tensor_index](tensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L134">source</a></font>
{% endraw %}
