---
title: 'The class SO3FunRBF'
sidebar: function_reference_sidebar
permalink: SO3FunRBF_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF_index.html
status: Reference
---
{% raw %}
a function on SO(3) as a sum of radial kernels at centre orientations, plus a constant: a
radial basis function ODF

## Syntax

Kernels psi at the orientations ori:

```python
SO3F = SO3FunRBF(ori, psi, weights)
```

Plus the constant c0:

```python
SO3F = SO3FunRBF(ori, psi, weights, c0)
```

10 degree kernels, the weights giving a mean of one:

```python
SO3F = SO3FunRBF(ori)
```

The function is c0 + sum_i w_i psi(angle(g, ori_i)), every centre taken with all its
symmetrically equivalent orientations, in the crystal and specimen frames of the centres.
It stays a kernel sum under scaling, adding a constant, adding another kernel sum of the
same kernel, rotation, inversion and convolution with a kernel on SO(3); the harmonic form
it is evaluated through is kept until a centre, the kernel, the weights or the constant
are set. unimodalODF and calcDensity build one; SO3FunRBF.interpolate fits one through
values. MATLAB's SO3FunRBF(F) approximating another SO3Fun is not ported.

## Input

| | |
|---|---|
| `center` | orientation, the centres of the kernels |
| `psi` | SO3Kernel; by default the de la Vallee Poussin kernel of halfwidth 10 degree |
| `weights` | one weight per centre; by default equal, giving a mean of one |
| `c0` | the constant added |

## Output

| | |
|---|---|
| `SO3F` | SO3FunRBF |

## See also

[unimodalODF](unimodalODF_py.html), [SO3FunCBF](SO3FunCBF_index_py.html), [SO3FunRBF.interpolate](SO3FunRBF.interpolate_py.html), [calcDensity](calcDensity_py.html), [SO3FunRBF.radon](SO3FunRBF.radon_py.html), [RadialODFs](RadialODFs_py.html)

## Members

| | |
|---|---|
| [abs](SO3FunRBF.abs_py.html) | the absolute value of the function, pointwise, as a function handle |
| [antipodal](SO3FunRBF.antipodal_py.html) | whether the function is antipodal, symmetric under inversion, as its centres are |
| [bandwidth](SO3FunRBF.bandwidth_py.html) | the harmonic bandwidth of the kernel |
| [c0](SO3FunRBF.c0_py.html) | the constant added to the sum of kernels |
| [calcError](SO3FunRBF.calcError_py.html) | the distance between two orientation density functions, or the error of an ODF against pole figures |
| [cat](SO3FunRBF.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [center](SO3FunRBF.center_py.html) | the centres of the kernels, a flat list of orientations |
| [conv](SO3FunRBF.conv_py.html) | the convolution with a kernel psi, again a kernel sum when psi is an SO(3) kernel, otherwise through the harmonic expansion |
| [CS](SO3FunRBF.CS_py.html) | the crystal frame of the function, that of its centres |
| [discreteSample](SO3FunRBF.discreteSample_py.html) | a random sample of n orientations drawn from an orientation density, of directions from a density on the sphere, of numbers from a density on an interval, or n random members of a list |
| [eval](SO3FunRBF.eval_py.html) | the kernel sum over the centres and their symmetric copies |
| [exp](SO3FunRBF.exp_py.html) | the exponential of the function, pointwise, as a function handle |
| [frameA](SO3FunRBF.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](SO3FunRBF.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [grad](SO3FunRBF.grad_py.html) | the gradient: minus the kernel's angular derivative along the geodesic to every equivalent within its support |
| [interpolate](SO3FunRBF.interpolate_py.html) | the sum of kernels through values at orientations, MATLAB's SO3FunRBF.interpolate |
| [inv](SO3FunRBF.inv_py.html) | the inverse function f(g^-1), the centres inverted, crystal and specimen sides exchanged |
| [log](SO3FunRBF.log_py.html) | the logarithm of the function, pointwise, as a function handle |
| [mean](SO3FunRBF.mean_py.html) | the mean of the function over SO(3), c0 plus the sum of the weights times the kernel's mean |
| [norm](SO3FunRBF.norm_py.html) | the L2 norm of the function, from its harmonic expansion |
| [plot3d](SO3FunRBF.plot3d_py.html) | plot3d(v), plot3d(v, data), plot3d(sF), plot3d(vF), plot3d(oR), plot3d(ori), plot3d(odf) |
| [plot](SO3FunRBF.plot_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plotFibre](SO3FunRBF.plotFibre_py.html) | plotFibre(odf, f): the ODF along the fibre f, as a line over the angle along the fibre |
| [plotIPDF](SO3FunRBF.plotIPDF_py.html) | plotIPF(odf, r): the inverse pole figures of an ODF, one axes per specimen direction (MATLAB's plotIPDF) |
| [plotPDF](SO3FunRBF.plotPDF_py.html) | plotPF(odf, h): the pole figures of an ODF, one axes per crystal direction (MATLAB's plotPDF) |
| [plotSection](SO3FunRBF.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plus](SO3FunRBF.plus_py.html) |  |
| [psi](SO3FunRBF.psi_py.html) | the kernel |
| [radon](SO3FunRBF.radon_py.html) | the Radon transform of a kernel sum: the pole figure of a crystal direction, the inverse pole figure of a specimen direction, or the pole density of both |
| [rotate](SO3FunRBF.rotate_py.html) | the function rotated by r on the left, the specimen side, or with side='right' on the crystal side |
| [SO3FunRBF](SO3FunRBF.SO3FunRBF_py.html) | a function on SO(3) as a sum of radial kernels at centre orientations, plus a constant: a radial basis function ODF |
| [sqrt](SO3FunRBF.sqrt_py.html) | the square root of the function, pointwise, as a function handle |
| [SS](SO3FunRBF.SS_py.html) | the specimen frame of the function, that of its centres |
| [sum](SO3FunRBF.sum_py.html) | the integral over orientation space, 8 pi^2 times the mean |
| [textureIndex](SO3FunRBF.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |
| [times](SO3FunRBF.times_py.html) |  |
| [uminus](SO3FunRBF.uminus_py.html) |  |
| [volume](SO3FunRBF.volume_py.html) | the share of orientations within a radius of a centre: the mean of f on a local grid in the ball, times the ball's share of the fundamental region (its Haar measure times the number of symmetric copies, at most one) |
| [weights](SO3FunRBF.weights_py.html) | the weight of every centre |

## Used on

[SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3FunRBF_index](SO3FunRBF_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L141">source</a></font>
{% endraw %}
