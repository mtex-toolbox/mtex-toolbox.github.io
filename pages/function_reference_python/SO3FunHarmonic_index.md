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
frame

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHarmonic(fhat, cs, ss)
```

From MTEX's coefficients.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHarmonic(odf, bandwidth=32)
```

The harmonic form of another function.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHarmonic(lambda ori: ori.angle(), cs)
```

A callable by quadrature.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHarmonic(lambda ori: ori.angle(), cs, 'GaussLegendre', bandwidth=16)
```

On the Gauss-Legendre grid.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunHarmonic(psi, cs, bandwidth=24)
```

The series of an SO(3) kernel.

</div>

<div class="mx-form" markdown="1">

```python
mdf = SO3FunHarmonic(lambda o: o.angle(), cs, cs, antipodal=True, bandwidth=8)
```

A misorientation function, f(g) = f(g^-1).

</div>

## Description

What the first argument is decides how the coefficients come about:

- coefficients: MTEX's, degree by degree, deg2dim(L + 1) of them for the bandwidth L; a
vector ending inside a degree block is padded with zeros to its end. An array of more axes
is a list of functions, its shape in front of the coefficients.
- another SO(3) function: its harmonic form at the bandwidth given; an SO3FunRBF reaches at
most its kernel's bandwidth.
- an SO(3) kernel: its series.
- a callable of orientations: sampled on a quadrature grid of the bandwidth, by default the
preference defaultSO3Bandwidth, Clenshaw-Curtis unless 'GaussLegendre' is named among the
frames.

The frames are the crystal frame and the specimen frame, the second by default
specimenFrame.default. The coefficients are made invariant under both unless
symmetrise=False.

## Input

| `fhat` | array of MTEX's coefficients, an SO3Fun, an SO3Kernel or a callable of orientations |
| `cs, ss` | crystalFrame and specimenFrame (or a second crystalFrame) |

## Keywords

| keyword | default | description |
|---|---|---|
| `real` |  | whether the function takes real values only; by default read off the coefficients or the sampled values |
| `antipodal` |  | f(g) = f(g^-1), the exchange symmetry of a misorientation function; needs the same frame on both sides |
| `symmetrise` |  | make the coefficients invariant under the two frames' symmetries |
| `bandwidth` |  | the largest degree of the series |
| `dtype` |  | the complex type of the coefficients, complex128 unless given |

## Output

| `SO3F` | SO3FunHarmonic |

## Properties

| `fhat` | Wigner coefficients in MTEX's public basis |
| `bandwidth` | largest harmonic degree; assignment truncates or pads the expansion |
| `CS, SS` | crystal and specimen reference frames |
| `isReal` | whether the function takes real values; setting True projects onto the real part |
| `antipodal` | whether grain exchange symmetry f(g)=f(inv(g)) is imposed |
| `shape` | shape of a function list, excluding the coefficient axis |

## See also

[SO3FunHarmonic.quadrature](SO3FunHarmonic.quadrature_py.html), [SO3FunHarmonic.interpolate](SO3FunHarmonic.interpolate_py.html), [SO3FunRBF](SO3FunRBF_index_py.html), [SO3FunHandle](SO3FunHandle_index_py.html), [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html)

## Members

| [abs](SO3FunHarmonic.abs_py.html) | the absolute value of the function, by quadrature at twice the bandwidth |
| [approximate](SO3FunHarmonic.approximate_py.html) | the harmonic series of a function on SO(3) by quadrature |
| [bandwidth](SO3FunHarmonic.bandwidth_py.html) | the bandwidth, the largest degree of the expansion |
| [calcError](SO3FunHarmonic.calcError_py.html) | the distance between two orientation density functions, or the error of an ODF against pole figures |
| [cat](SO3FunHarmonic.cat_py.html) | the functions joined into one list along an axis, the coefficients padded to the largest bandwidth |
| [conj](SO3FunHarmonic.conj_py.html) | the complex conjugate function |
| [conv](SO3FunHarmonic.conv_py.html) | the convolution with another SO(3) function, a kernel, a function on the sphere or a vector of multipliers per degree, as conv(f, g) |
| [dot](SO3FunHarmonic.dot_py.html) | the inner product int conj(f) g, the first argument conjugated |
| [dtype](SO3FunHarmonic.dtype_py.html) | the dtype of the coefficients |
| [eval](SO3FunHarmonic.eval_py.html) | evaluate a harmonic orientation function at rotations or orientations |
| [example](SO3FunHarmonic.example_py.html) | the harmonic expansion of the Dubna ODF, MTEX's example function |
| [exp](SO3FunHarmonic.exp_py.html) | the exponential of the function, by quadrature at twice the bandwidth, or at the bandwidth given |
| [fhat](SO3FunHarmonic.fhat_py.html) | the coefficients in MTEX's basis, as MATLAB's SO3F.fhat reads and assigns them |
| [frameA](SO3FunHarmonic.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](SO3FunHarmonic.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [grad](SO3FunHarmonic.grad_py.html) | the gradient, a harmonic vector field on SO(3), left or with side='right' right |
| [horzcat](SO3FunHarmonic.horzcat_py.html) | the functions joined into one list along an axis, the coefficients padded to the largest bandwidth |
| [interpolate](SO3FunHarmonic.interpolate_py.html) | the harmonic function fitted to values at orientations, by regularised least squares, as interpolate(nodes, values, ...) |
| [inv](SO3FunHarmonic.inv_py.html) | form the function evaluated at inverse rotations |
| [isclose](SO3FunHarmonic.isclose_py.html) | the same coefficients up to a tolerance |
| [isReal](SO3FunHarmonic.isReal_py.html) | SO3F.isReal = True makes the coefficients those of the real part, as MATLAB's does |
| [laplace](SO3FunHarmonic.laplace_py.html) | the Laplace-Beltrami operator applied to the function, degree n scaled by -n(n+1) |
| [log](SO3FunHarmonic.log_py.html) | the logarithm of the function, by quadrature at twice the bandwidth, or at the bandwidth given |
| [max](SO3FunHarmonic.max_py.html) | the maximum of a function on SO(3) or the sphere, the value and the position, numLocal local maxima from a grid refined down to the accuracy |
| [mean](SO3FunHarmonic.mean_py.html) | the mean of every function |
| [norm](SO3FunHarmonic.norm_py.html) | the L2 norm, or the Sobolev norm sqrt(sum (2n+1)^{2s} \|fhat_n\|^2) |
| [plot3d](SO3FunHarmonic.plot3d_py.html) | plot3d(v), plot3d(v, data), plot3d(sF), plot3d(vF), plot3d(oR), plot3d(ori), plot3d(odf) |
| [plot](SO3FunHarmonic.plot_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plotFibre](SO3FunHarmonic.plotFibre_py.html) | the ODF along the fibre f, as a line over the angle along the fibre |
| [plotIPDF](SO3FunHarmonic.plotIPDF_py.html) | plotIPF(odf, r): the inverse pole figures of an ODF, one axes per specimen direction (MATLAB's plotIPDF) |
| [plotPDF](SO3FunHarmonic.plotPDF_py.html) | the pole figures of an ODF, one axes per crystal direction |
| [plotSection](SO3FunHarmonic.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plus](SO3FunHarmonic.plus_py.html) |  |
| [power](SO3FunHarmonic.power_py.html) | the harmonic power per degree, the norm of the coefficients of that degree |
| [quadrature](SO3FunHarmonic.quadrature_py.html) | the harmonic series of a function on SO(3) by quadrature |
| [radon](SO3FunHarmonic.radon_py.html) | the Radon transform of a function on SO(3): its pole figures, inverse pole figures, or their values (MATLAB's radon, calcPDF and calcIPDF) |
| [rdivide](SO3FunHarmonic.rdivide_py.html) |  |
| [reshape](SO3FunHarmonic.reshape_py.html) | the list of functions in another shape |
| [rotate](SO3FunHarmonic.rotate_py.html) | the function turned by a rotation, from the left or with side='right' from the right, as rotate(f, rot, side) |
| [shape](SO3FunHarmonic.shape_py.html) | the shape of a list of functions, () for one |
| [size](SO3FunHarmonic.size_py.html) | the number of functions of the list, one for a single function |
| [SO3FunHarmonic](SO3FunHarmonic.SO3FunHarmonic_py.html) | a function on SO(3) as a series of Wigner functions, symmetric under its crystal and specimen frame |
| [sqrt](SO3FunHarmonic.sqrt_py.html) | the square root of the function, by quadrature at twice the bandwidth, or at the bandwidth given |
| [subsref](SO3FunHarmonic.subsref_py.html) |  |
| [sum](SO3FunHarmonic.sum_py.html) | the integral over SO(3), 8 pi^2 times the mean |
| [symmetrise](SO3FunHarmonic.symmetrise_py.html) | project the coefficients onto the symmetries carried by the two frames |
| [T](SO3FunHarmonic.T_py.html) | the list transposed, a row of n functions becoming a column |
| [textureIndex](SO3FunHarmonic.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |
| [times](SO3FunHarmonic.times_py.html) |  |
| [truncate](SO3FunHarmonic.truncate_py.html) | cut or pad a harmonic orientation function to maximum degree L |
| [uminus](SO3FunHarmonic.uminus_py.html) |  |
| [vertcat](SO3FunHarmonic.vertcat_py.html) | the functions joined into one list along an axis, the coefficients padded to the largest bandwidth |
| [volume](SO3FunHarmonic.volume_py.html) | the share of orientations within a radius of a centre: the integral of f over the ball, int_{angle(g, c) < r} f(g) dg, relative to the integral over all orientations |
| [withExchange](SO3FunHarmonic.withExchange_py.html) | the function with the exchange symmetry f(g) = f(g^-1) imposed, by the mean with its inverse |

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html), [ODFInversePoleFigure](ODFInversePoleFigure_py.html), [RandomSampling](RandomSampling_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html), [SingleSlipModel](SingleSlipModel_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunDefinition](SO3FunDefinition_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3FunQuadrature](SO3FunQuadrature_py.html), [SO3FunSymmetricFunctions](SO3FunSymmetricFunctions_py.html)

MATLAB's [SO3FunHarmonic_index](SO3FunHarmonic_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L67">source</a></font>
{% endraw %}
