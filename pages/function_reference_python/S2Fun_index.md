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
the functions on the sphere: S2FunHarmonic, S2FunHandle, S2FunBingham

## Members

| | |
|---|---|
| [contour](S2Fun.contour_py.html) | contour(sF), contour(v), contour(v, data): contour lines |
| [contourf](S2Fun.contourf_py.html) | contourf(sF), contourf(v), contourf(v, data): filled contours |
| [discrepancy](S2Fun.discrepancy_py.html) | the discrepancy between two densities and/or weighted point sets on the sphere (S2Fun, vector3d) or on SO(3) (SO3Fun, rotation, orientation), in either order |
| [discreteSample](S2Fun.discreteSample_py.html) | the nodes of a grid drawn with probability proportional to f, moved by a random rotation within the grid resolution and by a random element of each group |
| [interpolate](S2Fun.interpolate_py.html) | a function on the sphere through the values at the nodes, a regularised least squares fit |
| [max](S2Fun.max_py.html) | the maximum of a function on SO(3) or the sphere, the value and the position, numLocal local maxima from a grid refined down to the accuracy |
| [min](S2Fun.min_py.html) | the minimum of a function on SO(3) or the sphere, the value and the position, numLocal local minima |
| [optimalSample](S2Fun.optimalSample_py.html) | the sample of n nodes that reproduces a density best up to the bandwidth: the nodes, and with optimizeWeights=True the nodes and their weights (volume fractions summing to one) |
| [pcolor](S2Fun.pcolor_py.html) | pcolor(sF), pcolor(v), pcolor(v, data): a coloured surface |
| [plot3d](S2Fun.plot3d_py.html) | plot3d(v), plot3d(v, data), plot3d(sF), plot3d(vF), plot3d(oR), plot3d(ori), plot3d(odf) |
| [plot](S2Fun.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plotSection](S2Fun.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [quiver3](S2Fun.quiver3_py.html) | quiver3d(t): a tangent vector as an arrow at its reference in orientation space, in the coordinates of the held axes or axis angle space |
| [quiverSection](S2Fun.quiverSection_py.html) | quiver(ori, w) on a section plot: an arrow along w at every orientation, w a specimen direction per orientation |
| [rotate](S2Fun.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [S2Fun](S2Fun.S2Fun_py.html) | the functions on the sphere: S2FunHarmonic, S2FunHandle, S2FunBingham |
| [smiley](S2Fun.smiley_py.html) | the smiley test function on the sphere |
| [sum](S2Fun.sum_py.html) | sum(x) of an MTEX object by its own sum, of an array or with an axis as NumPy sums, of any other iterable as Python sums, so that from mtex import * keeps Python's sum |
| [surf](S2Fun.surf_py.html) | surf(sF): the function as the sphere pushed out to \|f\|, coloured by f, the real part of a complex one |
| [times](S2Fun.times_py.html) | times(A, B) is A.times(B): the product of corresponding coefficients, MATLAB's A .* B |
| [unimodal](S2Fun.unimodal_py.html) | a de la Vallee Poussin bump of the halfwidth given, or the kernel psi, about the direction v (the north pole by default), as a harmonic expansion |
| [volume](S2Fun.volume_py.html) | the share of orientations within a radius of a centre: the mean of f on a local grid in the ball, times the ball's share of the fundamental region (its Haar measure times the number of symmetric copies, at most one) |

MATLAB's [S2Fun_index](S2Fun_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funclass.py#L38">source</a></font>
{% endraw %}
