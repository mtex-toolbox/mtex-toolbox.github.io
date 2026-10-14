---
title: 'The class S2Fun'
sidebar: function_reference_sidebar
permalink: S2Fun_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Fun_index.html
status: Reference
---
{% raw %}
base class for scalar functions of a direction on the unit sphere

## Description

Use S2FunHarmonic for spherical harmonic coefficients, S2FunHandle for a callable,
S2FunTri for values on a triangulation, or S2FunBingham for an axial density.
Evaluate a concrete function with f(v), where v is vector3d or Miller directions.
A frame can impose crystal symmetry; antipodal functions satisfy f(v)=f(-v).

Directional densities from calcDensity and S2FunBingham have spherical mean one,
equivalent to integral `4*pi` with surface-area measure. General S2Fun objects may also
represent signed or complex functions and are not automatically normalised densities.

This base class supplies the common interface; construct one of its representations.

## See also

[S2FunHarmonic](S2FunHarmonic_index_py.html), [S2FunHandle](S2FunHandle_index_py.html), [S2FunTri](S2FunTri_index_py.html), [S2FunBingham](S2FunBingham_index_py.html), [calcDensity](calcDensity_py.html)

## Members

| [contour](S2Fun.contour_py.html) | contour(sF), contour(v), contour(v, data): contour lines |
| [contourf](S2Fun.contourf_py.html) | contourf(sF), contourf(v), contourf(v, data): filled contours |
| [discrepancy](S2Fun.discrepancy_py.html) | the discrepancy between two densities and/or weighted point sets on the sphere (S2Fun, vector3d) or on SO(3) (SO3Fun, rotation, orientation), in either order |
| [discreteSample](S2Fun.discreteSample_py.html) | a random sample of n orientations drawn from an orientation density, of directions from a density on the sphere, of numbers from a density on an interval, or n random members of a list |
| [interpolate](S2Fun.interpolate_py.html) | a function on the sphere through the values at the nodes, a regularised least squares fit |
| [max](S2Fun.max_py.html) | the maximum of a function on SO(3) or the sphere, the value and the position, numLocal local maxima from a grid refined down to the accuracy |
| [min](S2Fun.min_py.html) | the minimum of a function on SO(3) or the sphere, the value and the position, numLocal local minima |
| [optimalSample](S2Fun.optimalSample_py.html) | the sample of n nodes that reproduces a density best up to the bandwidth, on the sphere or the rotation group |
| [pcolor](S2Fun.pcolor_py.html) | pcolor(sF), pcolor(v), pcolor(v, data): a coloured surface |
| [plot3d](S2Fun.plot3d_py.html) | plot3d(v), plot3d(v, data), plot3d(sF), plot3d(vF), plot3d(oR), plot3d(ori), plot3d(odf) |
| [plot](S2Fun.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plotSection](S2Fun.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [quiver3](S2Fun.quiver3_py.html) | arrows in space: tangent vectors in orientation space, a field on the sphere or SO(3), or arrows at positions |
| [quiverSection](S2Fun.quiverSection_py.html) | arrows on a section plot: of a function on the sphere along one of its circles, or at orientations in the sections of orientation space |
| [rotate](S2Fun.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [S2Fun](S2Fun.S2Fun_py.html) | base class for scalar functions of a direction on the unit sphere |
| [smiley](S2Fun.smiley_py.html) | the smiley, a test function on the sphere whose face shows where a plot puts the axes |
| [sum](S2Fun.sum_py.html) | sum(x) of an MTEX object by its own sum, of an array or with an axis as NumPy sums, of any other iterable as Python sums, so that from mtex import * keeps Python's sum |
| [surf](S2Fun.surf_py.html) | a function on the sphere as a surface in space, the sphere pushed out to \|f\| and coloured by f |
| [times](S2Fun.times_py.html) | times(A, B) is A.times(B): the product of corresponding coefficients, MATLAB's A .* B |
| [unimodal](S2Fun.unimodal_py.html) | a unimodal function on the sphere, a radial kernel about one direction, as a harmonic expansion |
| [volume](S2Fun.volume_py.html) | the share of orientations within a radius of a centre: the integral of f over the ball, int_{angle(g, c) < r} f(g) dg, relative to the integral over all orientations |

MATLAB's [S2Fun_index](S2Fun_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funclass.py#L38">source</a></font>
{% endraw %}
