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
base class for scalar functions on orientation space SO(3)

## Description

Represent an orientation distribution or another orientation-dependent property with
SO3FunHarmonic coefficients, SO3FunRBF kernel sums, SO3FunCBF fibre sums,
SO3FunBingham distributions or SO3FunHandle callables. Evaluate a concrete function
at rotations or orientations using f(ori). Its crystal and specimen frames define the
symmetry-equivalent orientations at which values agree.

An orientation distribution of mean one uses multiples of a uniform distribution as its
units: a value of two means twice the uniform density. General SO3Fun objects can also
represent signed or complex functions and are not automatically normalised densities.

This base class provides the common interface; construct one of its representations.

## See also

[SO3FunHarmonic](SO3FunHarmonic_index_py.html), [SO3FunRBF](SO3FunRBF_index_py.html), [SO3FunHandle](SO3FunHandle_index_py.html), [calcDensity](calcDensity_py.html), [unimodalODF](unimodalODF_py.html)

## Members

| [calcAngleDistribution](SO3Fun.calcAngleDistribution_py.html) | the distribution of the misorientation angle: of a misorientation density, of a list of misorientations, or of the uniform density of two crystal frames |
| [calcAxisDistribution](SO3Fun.calcAxisDistribution_py.html) | the axis distribution of an SO(3) function, an S2 function of the rotation axes symmetric under the rotations the two frames share |
| [calcComponents](SO3Fun.calcComponents_py.html) | the modal orientations of an orientation density, the components: their orientations, their volumes and the mode every seed flowed into |
| [calcError](SO3Fun.calcError_py.html) | the error between a measurement and a recalculation, or between two SO(3) functions |
| [calcMDF](SO3Fun.calcMDF_py.html) | the uncorrelated misorientation distribution function of one or two ODFs |
| [calcMIndex](SO3Fun.calcMIndex_py.html) | the M-index of an ODF by Skemer et al., computed from the ODF instead of a discrete number of orientations |
| [calcPoleFigure](SO3Fun.calcPoleFigure_py.html) | the pole figures an ODF predicts: simulated diffraction intensities, superposed pole figures and any specimen directions |
| [calcTensor](SO3Fun.calcTensor_py.html) | the texture average of a single crystal tensor over an ODF, a list of orientations or a map |
| [centerSpecimen](SO3Fun.centerSpecimen_py.html) | an orientation density of an assumed orthotropic texture rotated so that its two fold axes lie on the specimen axes |
| [discrepancy](SO3Fun.discrepancy_py.html) | the discrepancy between two densities and/or weighted point sets on the sphere (S2Fun, vector3d) or on SO(3) (SO3Fun, rotation, orientation), in either order |
| [discreteSample](SO3Fun.discreteSample_py.html) | a random sample of n orientations drawn from an orientation density, of directions from a density on the sphere, of numbers from a density on an interval, or n random members of a list |
| [dubna](SO3Fun.dubna_py.html) | the ODF of the Dubna quartz pole figures, MTEX's example function |
| [entropy](SO3Fun.entropy_py.html) | the entropy -int f log f of a function on SO(3) or on the sphere |
| [export](SO3Fun.export_py.html) | write a map to the file the extension names |
| [export_VPSC](SO3Fun.export_VPSC_py.html) | write a map to the file the extension names |
| [fibreVolume](SO3Fun.fibreVolume_py.html) | the volume of a fibre: the share of an orientation density within a radius of the fibre of the orientations that map the crystal direction h onto the specimen direction r |
| [hist](SO3Fun.hist_py.html) | histogram(grains), histogram(grains, prop, bins): the area weighted distribution of a grain property as one histogram per indexed phase, drawn over each other, or with grouped=True side by side (MATLAB's hist) |
| [load](SO3Fun.load_py.html) | an ODF read from a file, loadODF |
| [max](SO3Fun.max_py.html) | the maximum of a function on SO(3) or the sphere, the value and the position, numLocal local maxima from a grid refined down to the accuracy |
| [min](SO3Fun.min_py.html) | the minimum of a function on SO(3) or the sphere, the value and the position, numLocal local minima |
| [optimalSample](SO3Fun.optimalSample_py.html) | the sample of n nodes that reproduces a density best up to the bandwidth, on the sphere or the rotation group |
| [plot3d](SO3Fun.plot3d_py.html) | plot3d(v), plot3d(v, data), plot3d(sF), plot3d(vF), plot3d(oR), plot3d(ori), plot3d(odf) |
| [plot](SO3Fun.plot_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plotDiff](SO3Fun.plotDiff_py.html) | the difference between measured pole figures and recalculated ones, or two measurements, drawn as pole figures of the error |
| [plotFibre](SO3Fun.plotFibre_py.html) | the ODF along the fibre f, as a line over the angle along the fibre |
| [plotIPDF](SO3Fun.plotIPDF_py.html) | inverse pole figures, one per specimen direction: of an ODF or of a list of orientations |
| [plotPDF](SO3Fun.plotPDF_py.html) | pole figures, one per crystal direction: of an ODF, of a list of orientations or of a measured PoleFigure |
| [plotSection](SO3Fun.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plotSpektra](SO3Fun.plotSpektra_py.html) | the Chebyshev coefficients of a kernel, or the harmonic power of a function, per degree |
| [rotate](SO3Fun.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [SO3Fun](SO3Fun.SO3Fun_py.html) | base class for scalar functions on orientation space SO(3) |
| [sum](SO3Fun.sum_py.html) | sum(x) of an MTEX object by its own sum, of an array or with an axis as NumPy sums, of any other iterable as Python sums, so that from mtex import * keeps Python's sum |
| [times](SO3Fun.times_py.html) | times(A, B) is A.times(B): the product of corresponding coefficients, MATLAB's A .* B |
| [volume](SO3Fun.volume_py.html) | the share of orientations within a radius of a centre: the integral of f over the ball, int_{angle(g, c) < r} f(g) dg, relative to the integral over all orientations |

MATLAB's [SO3Fun_index](SO3Fun_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3funclass.py#L9">source</a></font>
{% endraw %}
