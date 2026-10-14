---
title: 'The class vector3d'
sidebar: function_reference_sidebar
permalink: vector3d_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d_index.html
status: Reference
---
{% raw %}
three dimensional vectors, a container over (..., 3) coordinates carrying antipodal,
isNormalized, the reference frame and the display style; a vector in a crystal frame is a
crystal direction with Miller indices

```python
vector3d(x, y, z)
vector3d(xyz, frame=cs)             coordinates of shape (..., 3) or (3, N)
vector3d.byPolar(theta, rho)
vector3d.X, vector3d.Y, vector3d.Z
```

## Members

| | |
|---|---|
| [angle](vector3d.angle_py.html) | the angle between two vectors, through atan2 for full accuracy near 0 and pi |
| [angle_outer](vector3d.angle_outer_py.html) | the angle between two vectors, through atan2 for full accuracy near 0 and pi |
| [arrow3d](vector3d.arrow3d_py.html) | arrow3d(v): solid arrows from the origin, or from anchor, to the tips v, into the held axes or a new figure in space, the axes widened to hold them (MATLAB @vector3d/arrow3d) |
| [byPolar](vector3d.byPolar_py.html) | the vectors of polar angle theta to z and azimuth rho from x towards y, unit vectors |
| [byXYZ](vector3d.byXYZ_py.html) | an N x 3 or N x 2 matrix, z zero in the second case |
| [calcCluster](vector3d.calcCluster_py.html) | the clusters of directions or orientations: one cluster id per element, counted from zero, and the centre of every cluster |
| [calcDensity](Miller.calcDensity_py.html) | v.calcDensity(): the kernel density estimate of a list of directions, by the function spaces above this layer, vector3d/calcDensity |
| [calcDensity](vector3d.calcDensity_py.html) | v.calcDensity(): the kernel density estimate of a list of directions, by the function spaces above this layer, vector3d/calcDensity |
| [calcKernel](vector3d.calcKernel_py.html) | the de la Vallee Poussin kernel a density estimate of orientations or directions should use (MATLAB calcKernel): 'UCV', the default, and 'conservative' select from the degree energies of the sample and are bounded below by a noise floor unless noiseFloor=False (docs/plans/halfwidth.md) |
| [calcQuadratureWeights](vector3d.calcQuadratureWeights_py.html) | weights that integrate a function from samples at the directions, summing to one |
| [cat](Miller.cat_py.html) | the list of the operands, MATLAB's [a, b] |
| [cat](vector3d.cat_py.html) | the list of the operands, MATLAB's [a, b] |
| [char](vector3d.char_py.html) | the indices in brackets, {111} or [uvw], Miller/char |
| [circle](vector3d.circle_py.html) | circle(v, radius): the small circle of opening angle radius about v, on the axes nextAxis chose or the last one, on every axes with add2all (MATLAB plotting/circle.m) |
| [contour](vector3d.contour_py.html) | contour(sF), contour(v), contour(v, data): contour lines |
| [contourf](vector3d.contourf_py.html) | contourf(sF), contourf(v), contourf(v, data): filled contours |
| [convention](vector3d.convention_py.html) | the convention the vector is written in, its display style: 'xyz', 'hkl', 'hkil', 'uvw' or 'UVTW' |
| [coordinates](vector3d.coordinates_py.html) | the indices in the convention the vector is written in |
| [cross](Miller.cross_py.html) | the cross product of two plane normals is a lattice direction and the one of two directions a plane normal, so the indices switch sides |
| [cross](vector3d.cross_py.html) | the cross product of two plane normals is a lattice direction and the one of two directions a plane normal, so the indices switch sides |
| [CS](vector3d.CS_py.html) | the crystal frame of a crystal direction, None for any other vector |
| [det](vector3d.det_py.html) | the triple product, vector3d/det det(a, b, c) the triple product |
| [discrepancy](vector3d.discrepancy_py.html) | the discrepancy between two densities and/or weighted point sets on the sphere (S2Fun, vector3d) or on SO(3) (SO3Fun, rotation, orientation), in either order |
| [dot](Miller.dot_py.html) | the inner product |
| [dot](vector3d.dot_py.html) | the inner product |
| [dot_outer](Miller.dot_outer_py.html) | the inner product |
| [dot_outer](vector3d.dot_outer_py.html) | the inner product |
| [double](vector3d.double_py.html) | double(e) is e.double(): the coordinates of the images in the orthonormal basis, one row per orientation |
| [dspacing](Miller.dspacing_py.html) | the distance between the lattice planes with this normal, in the units of the cell |
| [dyad](vector3d.dyad_py.html) | the outer product of tensors or vectors |
| [eig](vector3d.eig_py.html) | the principal axes of the moment matrix and its eigenvalues, vector3d/eig |
| [eq](vector3d.eq_py.html) | isclose(v, w), isclose(v, w, antipodal=True, tol=): pointing the same way up to the group of a crystal frame within the tolerance tol of the cosine, and up to sign when antipodal (MATLAB's eq) |
| [exp](Miller.exp_py.html) | the rotation vector to its rotation: at the identity, or at a reference as a tangent vector |
| [exp](vector3d.exp_py.html) | the rotation vector to its rotation: at the identity, or at a reference as a tangent vector |
| [export](vector3d.export_py.html) | v.export('vectors.txt'): the directions written as a text table |
| [find](vector3d.find_py.html) | the closest points of this list to others, the k closest, or all within a radius |
| [frame](vector3d.frame_py.html) | the reference frame this vector is expressed in, None for frame-free data |
| [h](vector3d.h_py.html) | the Miller index h of a plane normal |
| [histogram](vector3d.histogram_py.html) | histogram(grains), histogram(grains, prop, bins): the area weighted distribution of a grain property as one histogram per indexed phase, drawn over each other, or with grouped=True side by side (MATLAB's hist) |
| [hkil](vector3d.hkil_py.html) | the four Miller-Bravais indices of a plane normal, i = -(h + k) |
| [hkl](vector3d.hkl_py.html) | the Miller indices of a plane normal, the coordinates in the dual basis of the crystal frame |
| [horzcat](vector3d.horzcat_py.html) | the list of the operands, MATLAB's [a, b] |
| [how2plot](vector3d.how2plot_py.html) | the plotting convention of the vector, that of its frame or the default |
| [i](vector3d.i_py.html) | the third Miller-Bravais index i = -(h + k) of a plane normal |
| [interp](vector3d.interp_py.html) | interp(v, y, 'linear' \| 'harmonic' \| 'nearest' \| 'inverseDistance'): a function on the sphere through the values y at the directions v, by the function spaces above this layer, vector3d/interp |
| [isCrystalDirection](vector3d.isCrystalDirection_py.html) | whether the vector is given in a crystal frame |
| [isnan](vector3d.isnan_py.html) | whether a vector has a NaN coordinate |
| [k](vector3d.k_py.html) | the Miller index k of a plane normal |
| [l](vector3d.l_py.html) | the Miller index l of a plane normal |
| [lattice](vector3d.lattice_py.html) | the lattice type of the crystal frame, latticeType.none for a vector in no crystal frame |
| [line](vector3d.line_py.html) | line(x, y, lineStyle=':', lineWidth=4, color='w'): a polyline in the coordinates of the current map, drawn under its layout, MATLAB's line |
| [lineIntersect](vector3d.lineIntersect_py.html) | where the segments from a to b cross the planes <n, v> = d, NaN where they do not |
| [load](vector3d.load_py.html) | vector3d.load('vectors.txt', columnNames=[...]): the directions a text table holds, read by the interfaces layer above this one |
| [mean](Miller.mean_py.html) | the mean vector: the arithmetic mean, the normalised weighted sum, or for axes the largest principal axis of the moment matrix |
| [mean](vector3d.mean_py.html) | the mean vector: the arithmetic mean, the normalised weighted sum, or for axes the largest principal axis of the moment matrix |
| [Miller](Miller.Miller_py.html) | three dimensional vectors, a container over (..., 3) coordinates carrying antipodal, isNormalized, the reference frame and the display style |
| [minus](vector3d.minus_py.html) |  |
| [mrdivide](vector3d.mrdivide_py.html) |  |
| [mtimes](vector3d.mtimes_py.html) |  |
| [multiplicity](Miller.multiplicity_py.html) | the number of distinct directions symmetrically equivalent to each vector, of axes under antipodal |
| [nan](vector3d.nan_py.html) | the vectors of a shape with NaN coordinates |
| [ne](vector3d.ne_py.html) | Return self!=value |
| [norm](vector3d.norm_py.html) | the length of the vectors |
| [normalize](vector3d.normalize_py.html) | the vectors scaled to unit length |
| [orth](vector3d.orth_py.html) | an arbitrary orthogonal direction, vector3d/orth |
| [orthProj](vector3d.orthProj_py.html) | the component orthogonal to a normal N, vector3d/orthProj |
| [pcolor](vector3d.pcolor_py.html) | pcolor(sF), pcolor(v), pcolor(v, data): a coloured surface |
| [perp](Miller.perp_py.html) | the axis best orthogonal to a list of directions, the smallest principal axis |
| [perp](vector3d.perp_py.html) | the axis best orthogonal to a list of directions, the smallest principal axis |
| [plot3d](vector3d.plot3d_py.html) | plot3d(v), plot3d(v, data), plot3d(sF), plot3d(vF), plot3d(oR), plot3d(ori), plot3d(odf) |
| [plot](vector3d.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plus](vector3d.plus_py.html) |  |
| [polar](vector3d.polar_py.html) | polar angle to z in [0, pi] and azimuth from x towards y in [0, 2pi), vector3d/polar |
| [project2FundamentalRegion](Miller.project2FundamentalRegion_py.html) | the directions folded into the fundamental sector of their frame, with antipodal=True into that of the Laue group |
| [project2FundamentalRegion](vector3d.project2FundamentalRegion_py.html) | the directions folded into the fundamental sector of their frame, with antipodal=True into that of the Laue group |
| [quiver3](vector3d.quiver3_py.html) | quiver3d(t): a tangent vector as an arrow at its reference in orientation space, in the coordinates of the held axes or axis angle space |
| [quiver](vector3d.quiver_py.html) | quiver(v, w), quiver(vF), quiver(ori, w): arrows at directions, a vector or axis field, or arrows at orientations in the sections of the current figure |
| [rand](vector3d.rand_py.html) | uniformly distributed unit vectors or axes, on the sphere or in a sphericalRegion given last |
| [rdivide](vector3d.rdivide_py.html) |  |
| [refine](vector3d.refine_py.html) | the directions with a new one between every three neighbours: the centroids of the Delaunay triangles of the points on the sphere, none below the lowest point, so a cap stays a cap |
| [resolution](vector3d.resolution_py.html) | the mean distance between the points (MATLAB vector3d.resolution): the whole circle for up to four points, the square root of the median Voronoi cell area up to fifty thousand, the equal area estimate beyond |
| [rho](vector3d.rho_py.html) | the azimuth from x towards y, in [0, 2 pi) |
| [rotate](Miller.rotate_py.html) | the vectors turned by a rotation, rot * v |
| [rotate](vector3d.rotate_py.html) | the vectors turned by a rotation, rot * v |
| [round](Miller.round_py.html) | a crystal direction rounded to integer indices, vector3d/round |
| [round](vector3d.round_py.html) | a crystal direction rounded to integer indices, vector3d/round |
| [scatter3d](vector3d.scatter3d_py.html) | scatter3d(v), plot3d(v, data): directions as markers on the sphere in space |
| [scatter](Miller.scatter_py.html) | scatter(v), scatter(v, data), scatter(v, label=texts): directions as markers |
| [scatter](vector3d.scatter_py.html) | scatter(v), scatter(v, data), scatter(v, label=texts): directions as markers |
| [smooth](Miller.smooth_py.html) | pcolor(sF), pcolor(v), pcolor(v, data): a coloured surface |
| [smooth](vector3d.smooth_py.html) | pcolor(sF), pcolor(v), pcolor(v, data): a coloured surface |
| [subsref](vector3d.subsref_py.html) |  |
| [sum](vector3d.sum_py.html) | the sum of the vectors, over all axes or the given ones |
| [surf](Miller.surf_py.html) | surf(sF): the function as the sphere pushed out to \|f\|, coloured by f, the real part of a complex one |
| [surf](vector3d.surf_py.html) | surf(sF): the function as the sphere pushed out to \|f\|, coloured by f, the real part of a complex one |
| [symmetrise](Miller.symmetrise_py.html) | the symmetrically equivalent directions, numSym x shape, or the distinct ones of one direction with unique=True |
| [symmetrise](vector3d.symmetrise_py.html) | the symmetrically equivalent directions, numSym x shape, or the distinct ones of one direction with unique=True |
| [T](vector3d.T_py.html) | the Miller-Bravais index T = -(U + V) of a lattice direction |
| [text](Miller.text_py.html) | text(v, labels): text at directions, text(v, labeled=True) each direction's own name |
| [text](vector3d.text_py.html) | text(v, labels): text at directions, text(v, labeled=True) each direction's own name |
| [theta](vector3d.theta_py.html) | the polar angle to z, in [0, pi] |
| [times](vector3d.times_py.html) |  |
| [transformReferenceFrame](Miller.transformReferenceFrame_py.html) | the same direction written in another frame |
| [u](vector3d.u_py.html) | the index u of a lattice direction |
| [U](vector3d.U_py.html) | the Miller-Bravais index U of a lattice direction |
| [uminus](vector3d.uminus_py.html) |  |
| [unique](Miller.unique_py.html) | the disjoint list of vectors up to a tolerance, vector3d/unique, up to sign for axes, antipodal=True always, antipodal=False never |
| [unique](vector3d.unique_py.html) | the disjoint list of vectors up to a tolerance, vector3d/unique, up to sign for axes, antipodal=True always, antipodal=False never |
| [UVTW](vector3d.UVTW_py.html) | the Weber indices: U = 2u - v, V = 2v - u, T = -(u + v), W = 3w |
| [uvw](vector3d.uvw_py.html) | the indices of a lattice direction, the coordinates in the basis of the crystal frame |
| [v](vector3d.v_py.html) | the index v of a lattice direction |
| [V](vector3d.V_py.html) | the Miller-Bravais index V of a lattice direction |
| [vector3d](vector3d.vector3d_py.html) | three dimensional vectors, a container over (..., 3) coordinates carrying antipodal, isNormalized, the reference frame and the display style |
| [vertcat](vector3d.vertcat_py.html) | the list of the operands, MATLAB's [a, b] |
| [w](vector3d.w_py.html) | the index w of a lattice direction |
| [W](vector3d.W_py.html) | the Miller-Bravais index W of a lattice direction |
| [x](vector3d.x_py.html) | the x coordinates |
| [xyz](vector3d.xyz_py.html) | the coordinates, an array of shape (..., 3) |
| [y](vector3d.y_py.html) | the y coordinates |
| [z](vector3d.z_py.html) | the z coordinates |
| [zeros](vector3d.zeros_py.html) | the zero vectors of a shape |

## Used on

[CrystalOperations](CrystalOperations_py.html), [QuasiCrystals](QuasiCrystals_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [OrientationFibre](OrientationFibre_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3D](Grains3D_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DOperations](Grains3DOperations_py.html), [NeperInterface](NeperInterface_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDInter](EBSDInter_py.html)

MATLAB's [vector3d_index](vector3d_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L40">source</a></font>
{% endraw %}
