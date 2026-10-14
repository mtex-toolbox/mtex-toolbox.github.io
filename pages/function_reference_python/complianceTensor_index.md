---
title: 'The class complianceTensor'
sidebar: function_reference_sidebar
permalink: complianceTensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: complianceTensor_index.html
status: Reference
---
{% raw %}
the elastic compliance S = inv(C), its Voigt matrix carrying the factors of the double convention

## Members

| | |
|---|---|
| [bulkModulus](complianceTensor.bulkModulus_py.html) | the bulk modulus of a polycrystal: the Voigt bound, or 'Reuss', 'Hill' or 'all' three |
| [ChristoffelTensor](complianceTensor.ChristoffelTensor_py.html) | ChristoffelTensor(C, n): E_ik = C_ijkl n_j n_l of a stiffness and a direction |
| [colon](complianceTensor.colon_py.html) | the double contraction A : B, the last two indices of A against the first two of B, MATLAB's A:B |
| [complianceTensor](complianceTensor.complianceTensor_py.html) | the elastic compliance S = inv(C), its Voigt matrix carrying the factors of the double convention |
| [hashinShtrikmanBounds](complianceTensor.hashinShtrikmanBounds_py.html) | the Hashin-Shtrikman bounds of the isotropic moduli, the tightest pair for a quasihomogeneous polycrystal: (lower=(K, G), upper=(K, G)), each the extreme estimate over the references whose residual is semidefinite, found on the boundary of that convex set by a golden section over the shear and a bisection over the bulk modulus |
| [inv](complianceTensor.inv_py.html) | the inverse: rank two by the matrix, rank four through the Voigt matrix, which swaps the convention and with it the class, a stiffness inverting to a compliance |
| [linearCompressibility](complianceTensor.linearCompressibility_py.html) | the length change per pressure in the direction v, S_ijkk v_i v_j |
| [mtimes](complianceTensor.mtimes_py.html) |  |
| [PoissonRatio](complianceTensor.PoissonRatio_py.html) | the Poisson ratio of the pulling direction x and the transverse direction y, minus the transverse over the longitudinal strain |
| [rand](complianceTensor.rand_py.html) | a random tensor with the symmetries its class and frame ask for: a plain tensor of entries drawn uniformly from [0, 1], as MATLAB's, a symmetric one the symmetric part of such a tensor, symmetrised in its frame, a stiffness or compliance one positive definite besides |
| [shearModulus](complianceTensor.shearModulus_py.html) | the shear modulus of the plane h and the direction u, 1 / (4 S_ijkl h_i u_j h_k u_l) |
| [velocity](complianceTensor.velocity_py.html) | the speeds of the three elastic plane waves in a direction and their polarisations, the eigenvalues and eigenvectors of the Christoffel tensor |
| [volumeCompressibility](complianceTensor.volumeCompressibility_py.html) | the volume change per pressure, S_iikk |
| [YoungsModulus](complianceTensor.YoungsModulus_py.html) | Young's modulus in the direction v, the reciprocal of S_ijkl v_i v_j v_k v_l |

## Used on

[IsotropicTheory](IsotropicTheory_py.html)

MATLAB's [complianceTensor_index](complianceTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1077">source</a></font>
{% endraw %}
