---
title: 'The class SO3FunHarmonic'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic_index.html
status: Reference
---
{% raw %}
a function on SO(3) as a series of Wigner functions, symmetric under its crystal and specimen
frame: from MTEX's coefficients fhat, another SO(3) function, a kernel or a callable (by
quadrature); a list of functions carries its shape in front of the coefficients

```python
SO3FunHarmonic(fhat, cs, ss)
SO3FunHarmonic(odf, bandwidth=32)               the harmonic form of another function
SO3FunHarmonic(lambda ori: ori.angle(), cs)     by quadrature
```

## Members

| | |
|---|---|
| [abs](SO3FunHarmonic.abs_py.html) | the absolute value of the function, by quadrature at twice the bandwidth |
| [approximate](SO3FunHarmonic.approximate_py.html) | from weighted samples at nodes, projected onto the invariant functions |
| [bandwidth](SO3FunHarmonic.bandwidth_py.html) | the bandwidth, the largest degree of the expansion |
| [calcError](SO3FunHarmonic.calcError_py.html) | the distance of two SO(3) functions on the equispaced grid of the resolution: 'l1' (the default, as MATLAB's) is half the mean absolute difference, for densities the fraction of the volume that would have to move to turn one into the other |
| [cat](SO3FunHarmonic.cat_py.html) | the functions joined into one list along an axis, the coefficients padded to the largest bandwidth |
| [conj](SO3FunHarmonic.conj_py.html) | the complex conjugate function |
| [conv](SO3FunHarmonic.conv_py.html) | the convolution with another SO(3) function, a kernel, a function on the sphere or a vector of multipliers per degree, as conv(f, g) |
| [dot](SO3FunHarmonic.dot_py.html) | the inner product int conj(f) g, the first argument conjugated |
| [dtype](SO3FunHarmonic.dtype_py.html) | the dtype of the coefficients |
| [eval](SO3FunHarmonic.eval_py.html) | the coefficients are invariant under the groups of the frames, so the transform may run on the reduced index set of their z folds |
| [example](SO3FunHarmonic.example_py.html) | the harmonic expansion of the Dubna ODF, MTEX's example function |
| [exp](SO3FunHarmonic.exp_py.html) | the exponential of the function, by quadrature at twice the bandwidth, or at the bandwidth given |
| [fhat](SO3FunHarmonic.fhat_py.html) | the coefficients in MTEX's basis, as MATLAB's SO3F.fhat reads and assigns them |
| [frameA](SO3FunHarmonic.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](SO3FunHarmonic.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [grad](SO3FunHarmonic.grad_py.html) | the gradient, a harmonic vector field on SO(3), left or with side='right' right |
| [horzcat](SO3FunHarmonic.horzcat_py.html) | the functions joined into one list along an axis, the coefficients padded to the largest bandwidth |
| [interpolate](SO3FunHarmonic.interpolate_py.html) | the harmonic function fitted to values at orientations, by regularised least squares, as interpolate(nodes, values, ...) |
| [inv](SO3FunHarmonic.inv_py.html) | the function of the inverse rotations, f(g^-1), its crystal and specimen frame exchanged |
| [isclose](SO3FunHarmonic.isclose_py.html) | the same coefficients up to a tolerance |
| [isReal](SO3FunHarmonic.isReal_py.html) | SO3F.isReal = True makes the coefficients those of the real part, as MATLAB's does |
| [laplace](SO3FunHarmonic.laplace_py.html) | the Laplace-Beltrami operator applied to the function, degree n scaled by -n(n+1) |
| [log](SO3FunHarmonic.log_py.html) | the logarithm of the function, by quadrature at twice the bandwidth, or at the bandwidth given |
| [max](SO3FunHarmonic.max_py.html) | the maximum of a function on SO(3) or the sphere, the value and the position, numLocal local maxima from a grid refined down to the accuracy |
| [mean](SO3FunHarmonic.mean_py.html) | the mean of every function |
| [norm](SO3FunHarmonic.norm_py.html) | the L2 norm, or the Sobolev norm sqrt(sum (2n+1)^{2s} \|fhat_n\|^2) |
| [plot3d](SO3FunHarmonic.plot3d_py.html) | plot3d(v), plot3d(v, data), plot3d(sF), plot3d(vF), plot3d(oR), plot3d(ori), plot3d(odf) |
| [plot](SO3FunHarmonic.plot_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plotFibre](SO3FunHarmonic.plotFibre_py.html) | plotFibre(odf, f): the ODF along the fibre f, as a line over the angle along the fibre |
| [plotIPDF](SO3FunHarmonic.plotIPDF_py.html) | plotIPF(odf, r): the inverse pole figures of an ODF, one axes per specimen direction (MATLAB's plotIPDF) |
| [plotPDF](SO3FunHarmonic.plotPDF_py.html) | plotPF(odf, h): the pole figures of an ODF, one axes per crystal direction (MATLAB's plotPDF) |
| [plotSection](SO3FunHarmonic.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plus](SO3FunHarmonic.plus_py.html) |  |
| [power](SO3FunHarmonic.power_py.html) | the harmonic power per degree, the norm of the coefficients of that degree |
| [quadrature](SO3FunHarmonic.quadrature_py.html) | from weighted samples at nodes, projected onto the invariant functions |
| [radon](SO3FunHarmonic.radon_py.html) | the Radon transform: the pole figure of h, the inverse pole figure of r, or with both the values |
| [rdivide](SO3FunHarmonic.rdivide_py.html) |  |
| [reshape](SO3FunHarmonic.reshape_py.html) | the list of functions in another shape |
| [rotate](SO3FunHarmonic.rotate_py.html) | the function turned by a rotation, from the left or with side='right' from the right, as rotate(f, rot, side) |
| [shape](SO3FunHarmonic.shape_py.html) | the shape of a list of functions, () for one |
| [size](SO3FunHarmonic.size_py.html) | the number of functions of the list, one for a single function |
| [SO3FunHarmonic](SO3FunHarmonic.SO3FunHarmonic_py.html) | a function on SO(3) as a series of Wigner functions, symmetric under its crystal and specimen frame: from MTEX's coefficients fhat, another SO(3) function, a kernel or a callable (by quadrature) |
| [sqrt](SO3FunHarmonic.sqrt_py.html) | the square root of the function, by quadrature at twice the bandwidth, or at the bandwidth given |
| [subsref](SO3FunHarmonic.subsref_py.html) |  |
| [sum](SO3FunHarmonic.sum_py.html) | the integral over SO(3), 8 pi^2 times the mean |
| [symmetrise](SO3FunHarmonic.symmetrise_py.html) | the projection of H5 on both sides, and the exchange symmetry f(g) = f(g^-1) |
| [T](SO3FunHarmonic.T_py.html) | the list transposed, a row of n functions becoming a column |
| [textureIndex](SO3FunHarmonic.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |
| [times](SO3FunHarmonic.times_py.html) |  |
| [truncate](SO3FunHarmonic.truncate_py.html) | the coefficient vector cut or padded to a bandwidth |
| [uminus](SO3FunHarmonic.uminus_py.html) |  |
| [vertcat](SO3FunHarmonic.vertcat_py.html) | the functions joined into one list along an axis, the coefficients padded to the largest bandwidth |
| [volume](SO3FunHarmonic.volume_py.html) | the share of orientations within a radius of a centre: the mean of f on a local grid in the ball, times the ball's share of the fundamental region (its Haar measure times the number of symmetric copies, at most one) |
| [withExchange](SO3FunHarmonic.withExchange_py.html) | the function with the exchange symmetry f(g) = f(g^-1) imposed, by the mean with its inverse |

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html), [ODFInversePoleFigure](ODFInversePoleFigure_py.html), [RandomSampling](RandomSampling_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html), [SingleSlipModel](SingleSlipModel_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunDefinition](SO3FunDefinition_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3FunQuadrature](SO3FunQuadrature_py.html), [SO3FunSymmetricFunctions](SO3FunSymmetricFunctions_py.html)

MATLAB's [SO3FunHarmonic_index](SO3FunHarmonic_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L66">source</a></font>
{% endraw %}
