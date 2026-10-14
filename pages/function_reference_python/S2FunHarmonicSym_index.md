---
title: 'The class S2FunHarmonic'
sidebar: function_reference_sidebar
permalink: S2FunHarmonicSym_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonicSym_index.html
status: Reference
---
{% raw %}
a function on the sphere by its spherical harmonic coefficients, or a list of such functions;
symmetrised by the group of its frame, even when antipodal

```python
S2FunHarmonic(fhat)                         MTEX's coefficients
S2FunHarmonic(fhat, cs, antipodal=True)
S2FunHarmonic(lambda v: v.z**2, bandwidth=16)     a callable expanded by quadrature
S2FunHarmonic(psi)                          a kernel on the sphere
```

## Members

| | |
|---|---|
| [abs](S2FunHarmonic.abs_py.html) | the absolute value \|f\| as a handle, evaluated when asked |
| [adjoint](S2FunHarmonic.adjoint_py.html) | S2FunHarmonic.adjointNFSFT(v, values, bandwidth=32): the adjoint transform, the coefficients sum_j w_j y_j conj(Y(v_j)) with unit weights unless given, a grid's own on a grid |
| [adjointNFSFT](S2FunHarmonic.adjointNFSFT_py.html) | S2FunHarmonic.adjointNFSFT(v, values, bandwidth=32): the adjoint transform, the coefficients sum_j w_j y_j conj(Y(v_j)) with unit weights unless given, a grid's own on a grid |
| [approximate](S2FunHarmonic.approximate_py.html) | from weighted samples |
| [bandwidth](S2FunHarmonic.bandwidth_py.html) | the bandwidth, the highest degree of the coefficients |
| [cat](S2FunHarmonic.cat_py.html) | the functions joined into one list along an axis, cut or padded to the largest bandwidth |
| [conj](S2FunHarmonic.conj_py.html) | the complex conjugate function |
| [conv](S2FunHarmonic.conv_py.html) | the convolution with a kernel or another function on the sphere |
| [CS](S2FunHarmonic.CS_py.html) | the frame of the function, MATLAB's sF.CS |
| [dot](S2FunHarmonic.dot_py.html) | the inner product with another function of the same frame, for the normalised surface measure: int conj(f) g dS / 4 pi |
| [eig](S2FunHarmonic.eig_py.html) | eig(T) is T.eig(): the eigenvalues in ascending order and the eigenvectors |
| [entropy](S2FunHarmonic.entropy_py.html) | -int f log f by the exact rule at a raised bandwidth, since f log f is not bandlimited |
| [eval](S2FunHarmonic.eval_py.html) | the function at directions, or at the nodes of a quadrature grid |
| [even](S2FunHarmonic.even_py.html) | the even part, f(v) + f(-v) over two |
| [exp](S2FunHarmonic.exp_py.html) | the exponential of the function, expanded by quadrature, or at the bandwidth given |
| [fhat](S2FunHarmonic.fhat_py.html) | the coefficients in MTEX's basis, as MATLAB's sF.fhat reads and assigns them |
| [grad](S2FunHarmonic.grad_py.html) | the surface gradient: a vector field, or its values at the directions x |
| [horzcat](S2FunHarmonic.horzcat_py.html) | the functions joined into one list along an axis, cut or padded to the largest bandwidth |
| [how2plot](S2FunHarmonic.how2plot_py.html) | the plotting convention of the frame, or the session's |
| [interpolate](S2FunHarmonic.interpolate_py.html) | S2FunHarmonic.interpolate(v, y) is interpolate(v, y): the function of least squares through the values y at the directions v |
| [invRadon](S2FunHarmonic.invRadon_py.html) | the inverse of the Funk transform: the even function whose Funk transform this is |
| [isclose](S2FunHarmonic.isclose_py.html) | whether the coefficients agree with those of g within the tolerances, relative to the norm of g |
| [laplace](S2FunHarmonic.laplace_py.html) | the Laplace-Beltrami operator applied to the function, the degree l scaled by -l(l+1) |
| [log](S2FunHarmonic.log_py.html) | the logarithm of the function, expanded by quadrature, or at the bandwidth given |
| [mean](S2FunHarmonic.mean_py.html) | the mean over the sphere, int f dS / 4 pi, one per function |
| [mtimes](S2FunHarmonic.mtimes_py.html) |  |
| [norm](S2FunHarmonic.norm_py.html) | the L2 norm for the normalised surface measure, or the Sobolev norm, one per function |
| [plot](S2FunHarmonicSym.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plotSpektra](S2FunHarmonic.plotSpektra_py.html) | plotSpectrum(psi), plotSpectrum(odf): the Chebyshev coefficients of a kernel, or the harmonic power of a function, per degree (MATLAB's plotSpektra) |
| [plus](S2FunHarmonic.plus_py.html) |  |
| [plus](S2FunHarmonicSym.plus_py.html) |  |
| [power](S2FunHarmonic.power_py.html) | the power of every degree, the norm of the coefficients of that degree, as an array of length bandwidth + 1 per function |
| [power](S2FunHarmonicSym.power_py.html) | the power of every degree, the norm of the coefficients of that degree, as an array of length bandwidth + 1 per function |
| [quadrature](S2FunHarmonic.quadrature_py.html) | from weighted samples |
| [quadrature](S2FunHarmonicSym.quadrature_py.html) | from weighted samples |
| [radon](S2FunHarmonic.radon_py.html) | the Funk transform, the mean over the great circle perpendicular to every direction |
| [rdivide](S2FunHarmonic.rdivide_py.html) |  |
| [rdivide](S2FunHarmonicSym.rdivide_py.html) |  |
| [reshape](S2FunHarmonic.reshape_py.html) | the list of functions in another shape |
| [rotate](S2FunHarmonic.rotate_py.html) | the function rotated, f(rot^-1 v) |
| [S2FunHarmonic](S2FunHarmonic.S2FunHarmonic_py.html) | a function on the sphere by its spherical harmonic coefficients, or a list of such functions |
| [S2FunHarmonicSym](S2FunHarmonicSym.S2FunHarmonicSym_py.html) | a function on the sphere by its spherical harmonic coefficients, or a list of such functions |
| [shape](S2FunHarmonic.shape_py.html) | the shape of a list of functions, () for one |
| [size](S2FunHarmonic.size_py.html) | the number of functions in a list, 1 for one function |
| [sqrt](S2FunHarmonic.sqrt_py.html) | the square root of the function, expanded by quadrature, or at the bandwidth given |
| [subsref](S2FunHarmonic.subsref_py.html) |  |
| [sum](S2FunHarmonic.sum_py.html) | the integral over the sphere, int f dS, S2Fun/sum |
| [symmetrise](S2FunHarmonic.symmetrise_py.html) | the projection onto the functions invariant under the group of the frame, or under a list of rotations forming a group the frame does not name |
| [T](S2FunHarmonic.T_py.html) | the list transposed, a row of n functions becoming a column, and MATLAB's ' as sF.conj().T |
| [textureIndex](S2FunHarmonic.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |
| [times](S2FunHarmonic.times_py.html) |  |
| [times](S2FunHarmonicSym.times_py.html) |  |
| [truncate](S2FunHarmonic.truncate_py.html) | the coefficients up to degree L |
| [uminus](S2FunHarmonic.uminus_py.html) |  |
| [unimodal](S2FunHarmonic.unimodal_py.html) | S2FunHarmonic.unimodal(v, halfwidth=w): MATLAB's other name of S2Fun.unimodal |
| [vertcat](S2FunHarmonic.vertcat_py.html) | the functions joined into one list along an axis, cut or padded to the largest bandwidth |
| [volume](S2FunHarmonic.volume_py.html) | the share of orientations within a radius of a centre: the mean of f on a local grid in the ball, times the ball's share of the fundamental region (its Haar measure times the number of symmetric copies, at most one) |

## Used on

[SO3FunConvolution](SO3FunConvolution_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunSampling](S2FunSampling_py.html), [S2FunVectorValued](S2FunVectorValued_py.html), [SphericalHarmonics](SphericalHarmonics_py.html)

MATLAB's [S2FunHarmonicSym_index](S2FunHarmonicSym_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L71">source</a></font>
{% endraw %}
