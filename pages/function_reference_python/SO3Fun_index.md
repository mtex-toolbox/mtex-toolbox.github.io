---
title: 'The class SO3Fun'
sidebar: function_reference_sidebar
permalink: SO3Fun_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun_index.html
status: Reference
---
{% raw %}
the functions on SO(3): SO3FunHarmonic, SO3FunRBF, SO3FunCBF, SO3FunBingham, SO3FunHandle, SO3FunComposition

## Members

| | |
|---|---|
| [calcAngleDistribution](SO3Fun.calcAngleDistribution_py.html) | the distribution of the misorientation angle, MATLAB's order (density, omega):   calcAngleDistribution(cs1, cs2)   the uniform one, the area of the axis sector at each                                     angle times sin^2(omega/2), with mean one over the angles   calcAngleDistribution(mori)       a histogram of the disorientation angles in percent   calcAngleDistribution(f)          the uniform one times the mean of f over the axes at each                                     angle, found by sampling the axes with a count following                                     sin^2(omega/2) and keeping the rotations of minimal angle |
| [calcAxisDistribution](SO3Fun.calcAxisDistribution_py.html) | the axis distribution of an SO(3) function, an S2 function of the rotation axes symmetric under the rotations the two frames share |
| [calcComponents](SO3Fun.calcComponents_py.html) | the modal orientations of an SO(3) function by steepest ascent from seeds, their volumes and which mode each seed flowed into |
| [calcError](SO3Fun.calcError_py.html) | the error between a measurement and a recalculation, or between two SO(3) functions |
| [calcMDF](SO3Fun.calcMDF_py.html) | the misorientation distribution of two ODFs, the density of inv(o1) o2 for independent grains, (inv f1 * f2)(g) = int f1(S g^-1) f2(S) dS, with exchange symmetry for one ODF |
| [calcMIndex](SO3Fun.calcMIndex_py.html) | the M-index: half the total variation between the angle distributions of the uniform and the uncorrelated misorientation distribution |
| [calcPoleFigure](SO3Fun.calcPoleFigure_py.html) | the pole figures of an ODF for the crystal directions h on the specimen directions r |
| [calcTensor](SO3Fun.calcTensor_py.html) | the texture average of a single crystal tensor |
| [centerSpecimen](SO3Fun.centerSpecimen_py.html) | two perpendicular twofold axes of an assumed orthotropic texture, found and rotated onto the nearest specimen axes (MATLAB centerSpecimen): the mismatch of a candidate axis is the norm of the difference between the harmonic series of the density and the series turned by 180 degrees about it |
| [discrepancy](SO3Fun.discrepancy_py.html) | the discrepancy between two densities and/or weighted point sets on the sphere (S2Fun, vector3d) or on SO(3) (SO3Fun, rotation, orientation), in either order |
| [discreteSample](SO3Fun.discreteSample_py.html) | the nodes of a grid drawn with probability proportional to f, moved by a random rotation within the grid resolution and by a random element of each group |
| [dubna](SO3Fun.dubna_py.html) | the ODF of the Dubna quartz pole figures, MTEX's example function |
| [entropy](SO3Fun.entropy_py.html) | -int f log f by the exact rule at a raised bandwidth, since f log f is not bandlimited |
| [export](SO3Fun.export_py.html) | write a map to the file the extension names |
| [export_VPSC](SO3Fun.export_VPSC_py.html) | write a map to the file the extension names |
| [fibreVolume](SO3Fun.fibreVolume_py.html) | the share of crystal directions within a radius of h among those mapped to r: the mean of the inverse pole figure over the cap, times the cap's share of the sphere over the orbit of h the share of the tube about the fibre: the function averaged over the orientations that send h within the radius of r, u = g h on a cap about r and the turn about u equispaced, times the tube's share of orientation space over the copies of h under the group |
| [hist](SO3Fun.hist_py.html) | histogram(grains), histogram(grains, prop, bins): the area weighted distribution of a grain property as one histogram per indexed phase, drawn over each other, or with grouped=True side by side (MATLAB's hist) |
| [load](SO3Fun.load_py.html) | an ODF read from a file, loadODF |
| [max](SO3Fun.max_py.html) | the maximum of a function on SO(3) or the sphere, the value and the position, numLocal local maxima from a grid refined down to the accuracy |
| [min](SO3Fun.min_py.html) | the minimum of a function on SO(3) or the sphere, the value and the position, numLocal local minima |
| [optimalSample](SO3Fun.optimalSample_py.html) | the sample of n nodes that reproduces a density best up to the bandwidth: the nodes, and with optimizeWeights=True the nodes and their weights (volume fractions summing to one) |
| [plot3d](SO3Fun.plot3d_py.html) | plot3d(v), plot3d(v, data), plot3d(sF), plot3d(vF), plot3d(oR), plot3d(ori), plot3d(odf) |
| [plot](SO3Fun.plot_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plotDiff](SO3Fun.plotDiff_py.html) | plotDiff(pf, odf), plotDiff(pf, pf2, 'l1'): the difference between a measured pole figure and a recalculated one, or two measurements, as a pole figure of the error |
| [plotFibre](SO3Fun.plotFibre_py.html) | plotFibre(odf, f): the ODF along the fibre f, as a line over the angle along the fibre |
| [plotIPDF](SO3Fun.plotIPDF_py.html) | plotIPF(ori, r), plotIPF(ori, data, r), plotIPF(odf, r): the inverse pole figures of a list of orientations, the crystal directions along r as markers on the crystal sector, or of an ODF (MATLAB's plotIPDF) |
| [plotPDF](SO3Fun.plotPDF_py.html) | plotPF(ori, h), plotPF(ori, data, h), plotPF(ori, h, points=100, contourf=True, antipodal=True), plotPF(odf, h), plotPF(pf) |
| [plotSection](SO3Fun.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plotSpektra](SO3Fun.plotSpektra_py.html) | plotSpectrum(psi), plotSpectrum(odf): the Chebyshev coefficients of a kernel, or the harmonic power of a function, per degree (MATLAB's plotSpektra) |
| [rotate](SO3Fun.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [SO3Fun](SO3Fun.SO3Fun_py.html) | the functions on SO(3): SO3FunHarmonic, SO3FunRBF, SO3FunCBF, SO3FunBingham, SO3FunHandle, SO3FunComposition |
| [sum](SO3Fun.sum_py.html) | sum(x) of an MTEX object by its own sum, of an array or with an axis as NumPy sums, of any other iterable as Python sums, so that from mtex import * keeps Python's sum |
| [times](SO3Fun.times_py.html) | times(A, B) is A.times(B): the product of corresponding coefficients, MATLAB's A .* B |
| [volume](SO3Fun.volume_py.html) | the share of orientations within a radius of a centre: the mean of f on a local grid in the ball, times the ball's share of the fundamental region (its Haar measure times the number of symmetric copies, at most one) |

MATLAB's [SO3Fun_index](SO3Fun_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3funclass.py#L9">source</a></font>
{% endraw %}
