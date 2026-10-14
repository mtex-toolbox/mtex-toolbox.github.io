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

## Input

| `M` | 6-by-6 Voigt matrix, full (..., 3, 3, 3, 3) coefficients, or another tensor |
| `args` | optional reference frame |
| `kwargs` | tensor constructor options, including density, frame, unit and Kelvin; unit defaults to 'GPa' |

## Members

| [bulkModulus](stiffnessTensor.bulkModulus_py.html) | the bulk modulus of an isotropic polycrystal, the Voigt and Reuss bounds |
| [ChristoffelTensor](stiffnessTensor.ChristoffelTensor_py.html) | the elastic Christoffel tensor for a wave propagation direction |
| [colon](stiffnessTensor.colon_py.html) | the double contraction A : B, the last two indices of A against the first two of B, MATLAB's A:B |
| [energyVector](stiffnessTensor.energyVector_py.html) | the energy velocity of a lossless elastic plane wave, the vector C_ijkl p_j n_k p_l / (rho v) |
| [hashinShtrikmanBounds](stiffnessTensor.hashinShtrikmanBounds_py.html) | the Hashin-Shtrikman bounds of the isotropic moduli, the tightest pair for a quasihomogeneous polycrystal: (lower=(K, G), upper=(K, G)), each the extreme estimate over the references whose residual is semidefinite, found on the boundary of that convex set by a golden section over the shear and a bisection over the bulk modulus |
| [HashinShtrikmanModulus](stiffnessTensor.HashinShtrikmanModulus_py.html) | the Hashin-Shtrikman estimate of the isotropic moduli of a polycrystal from a reference medium K0, G0, over arrays of references: the bulk and shear moduli, and the definiteness of C - C0 (1 where the estimate is a lower bound, -1 an upper one, 0 where it is neither and the moduli are NaN) |
| [inv](stiffnessTensor.inv_py.html) | the inverse: rank two by the matrix, rank four through the Voigt matrix, which swaps the convention and with it the class, a stiffness inverting to a compliance |
| [linearCompressibility](stiffnessTensor.linearCompressibility_py.html) | the linear compressibility, the length change per pressure in the direction v, S_ijkk v_i v_j |
| [mtimes](stiffnessTensor.mtimes_py.html) | scale a tensor, multiply rank-two tensors, or contract an elastic tensor with a strain |
| [plotSeismicVelocities](stiffnessTensor.plotSeismicVelocities_py.html) | the overview of the seismic wave velocities of a stiffness tensor, six pole figures |
| [PoissonRatio](stiffnessTensor.PoissonRatio_py.html) | the Poisson ratio of the tension direction x and the transverse direction y, minus the transverse over the longitudinal strain, -S_ijkl x_i x_j y_k y_l / S_mnop x_m x_n x_o x_p |
| [rand](stiffnessTensor.rand_py.html) | a random tensor with the symmetries its class and frame ask for |
| [shearModulus](stiffnessTensor.shearModulus_py.html) | the shear modulus of the plane h and the shear direction u, 1 / (4 S_ijkl h_i u_j h_k u_l) |
| [stiffnessTensor](stiffnessTensor.stiffnessTensor_py.html) | the elastic stiffness C, sigma = C : eps |
| [velocity](stiffnessTensor.velocity_py.html) | the speeds of the three elastic plane waves in a direction and their polarisations, the eigenvalues and eigenvectors of the Christoffel tensor |
| [volumeCompressibility](stiffnessTensor.volumeCompressibility_py.html) | the volume change per pressure, S_iikk |
| [YoungsModulus](stiffnessTensor.YoungsModulus_py.html) | Young's modulus in the direction v, the reciprocal of S_ijkl v_i v_j v_k v_l |

## Used on

[DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [CPOSeismicProperties](CPOSeismicProperties_py.html), [IsotropicTheory](IsotropicTheory_py.html), [TensorAverage](TensorAverage_py.html), [TensorDefinition](TensorDefinition_py.html)

MATLAB's [stiffnessTensor_index](stiffnessTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1280">source</a></font>
{% endraw %}
