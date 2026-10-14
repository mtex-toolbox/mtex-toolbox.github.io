---
title: 'The class stiffnessTensor'
sidebar: function_reference_sidebar
permalink: stiffnessTensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor_index.html
status: Reference
---
{% raw %}
the elastic stiffness C, sigma = C : eps; a 6 x 6 Voigt matrix in GPa or the full array

## Members

| | |
|---|---|
| [bulkModulus](stiffnessTensor.bulkModulus_py.html) | the bulk modulus of a polycrystal: the Voigt bound, or 'Reuss', 'Hill' or 'all' three |
| [ChristoffelTensor](stiffnessTensor.ChristoffelTensor_py.html) | ChristoffelTensor(C, n): E_ik = C_ijkl n_j n_l of a stiffness and a direction |
| [colon](stiffnessTensor.colon_py.html) | the double contraction A : B, the last two indices of A against the first two of B, MATLAB's A:B |
| [energyVector](stiffnessTensor.energyVector_py.html) | the energy velocity of a lossless wave, C_ijkl p_j n_k p_l / (rho v), whose projection on the propagation direction is the phase speed |
| [hashinShtrikmanBounds](stiffnessTensor.hashinShtrikmanBounds_py.html) | the Hashin-Shtrikman bounds of the isotropic moduli, the tightest pair for a quasihomogeneous polycrystal: (lower=(K, G), upper=(K, G)), each the extreme estimate over the references whose residual is semidefinite, found on the boundary of that convex set by a golden section over the shear and a bisection over the bulk modulus |
| [HashinShtrikmanModulus](stiffnessTensor.HashinShtrikmanModulus_py.html) | the Hashin-Shtrikman estimate of the isotropic moduli of a polycrystal from a reference medium K0, G0, over arrays of references: the bulk and shear moduli, and the definiteness of C - C0 (1 where the estimate is a lower bound, -1 an upper one, 0 where it is neither and the moduli are NaN) |
| [inv](stiffnessTensor.inv_py.html) | the inverse: rank two by the matrix, rank four through the Voigt matrix, which swaps the convention and with it the class, a stiffness inverting to a compliance |
| [linearCompressibility](stiffnessTensor.linearCompressibility_py.html) | the length change per pressure in the direction v, S_ijkk v_i v_j |
| [mtimes](stiffnessTensor.mtimes_py.html) |  |
| [plotSeismicVelocities](stiffnessTensor.plotSeismicVelocities_py.html) | plotSeismicVelocities(C): the overview of the wave velocities of a stiffness tensor |
| [PoissonRatio](stiffnessTensor.PoissonRatio_py.html) | the Poisson ratio of the pulling direction x and the transverse direction y, minus the transverse over the longitudinal strain |
| [rand](stiffnessTensor.rand_py.html) | a random tensor with the symmetries its class and frame ask for: a plain tensor of entries drawn uniformly from [0, 1], as MATLAB's, a symmetric one the symmetric part of such a tensor, symmetrised in its frame, a stiffness or compliance one positive definite besides |
| [shearModulus](stiffnessTensor.shearModulus_py.html) | the shear modulus of the plane h and the direction u, 1 / (4 S_ijkl h_i u_j h_k u_l) |
| [stiffnessTensor](stiffnessTensor.stiffnessTensor_py.html) | the elastic stiffness C, sigma = C : eps |
| [velocity](stiffnessTensor.velocity_py.html) | the elastic wave velocities and their polarisations from the Christoffel tensor |
| [volumeCompressibility](stiffnessTensor.volumeCompressibility_py.html) | the volume change per pressure, S_iikk |
| [YoungsModulus](stiffnessTensor.YoungsModulus_py.html) | Young's modulus in the direction v, the reciprocal of S_ijkl v_i v_j v_k v_l |

## Used on

[DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [CPOSeismicProperties](CPOSeismicProperties_py.html), [IsotropicTheory](IsotropicTheory_py.html), [TensorAverage](TensorAverage_py.html), [TensorDefinition](TensorDefinition_py.html)

MATLAB's [stiffnessTensor_index](stiffnessTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L993">source</a></font>
{% endraw %}
