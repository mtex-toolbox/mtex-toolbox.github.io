---
title: 'Function reference'
sidebar: function_reference_sidebar
permalink: FunctionReference_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: FunctionReference.html
status: Reference
---
{% raw %}
Every class and function of mtex, by the layer it belongs to; a class page lists its methods and properties.

## Geometry

### Classes

| [crystalFrame](crystalFrame_index_py.html) | the reference frame glued to the lattice basis of a phase, with the point group of the crystal |
| [crystalShape](crystalShape_index_py.html) | a crystal shape, the polyhedron bounded by the lattice planes of the face normals N |
| [dislocationSystem](dislocationSystem_index_py.html) | a Burgers vector with a line vector, edge when orthogonal and screw when parallel |
| [fibonacciS2Grid](fibonacciS2Grid_index_py.html) | the spherical Fibonacci grid: N = 2n + 1 points along a spiral, z linear in the index and the azimuth advancing by the golden angle |
| [fibre](fibre_index_py.html) | a fibre in orientation space: the orientations mapping the crystal direction h onto the specimen direction r, or the arc of them between two orientations |
| [gridLayout](gridLayout_index_py.html) | the order a grid is stored in: the directions of the specimen its row index and its column index advance along |
| [latticeType](latticeType_index_py.html) | the Bravais lattice systems, an enumeration whose members carry the conventions that follow from them: the default axis angles, the independent axis lengths, the orthogonal axes |
| [notIndexedFrame](notIndexedFrame_index_py.html) | the frame of the measurements that could not be indexed, a phase of a map without basis, group or colour |
| [orientation](orientation_index_py.html) | orientations and misorientations, rotations taking coordinates in the frame CS to coordinates in the frame SS |
| [orientationRegion](orientationRegion_index_py.html) | a region of orientation space bounded by planes in the quaternions, mostly the fundamental region of a pair of frames |
| [orthogonalTransform](orthogonalTransform_index_py.html) | orthogonal transforms, a rotation and a parity as a fifth coordinate, -1 for an improper one, the rotation followed by the inversion |
| [plane3d](plane3d_index_py.html) | a plane <N, v> = d, or a list of them |
| [plottingConvention](plottingConvention_index_py.html) | how a reference frame is laid out on screen: one rotation taking the screen axes to the reference axes, east = rot * x, north = rot * y, outOfScreen = rot * z |
| [quaternion](quaternion_index_py.html) | quaternions a + b i + c j + d k, the coefficients along the last axis |
| [referenceFrame](referenceFrame_index_py.html) | a reference frame, the coordinate system data is expressed in: an identity, a basis, the point group the data is invariant under and the default plotting convention |
| [rotation](rotation_index_py.html) | rotations, unit quaternions with q and -q one rotation |
| [S1Grid](S1Grid_index_py.html) | a sorted list of angles on an interval [min, max], periodic or not, the nearest neighbour and radius search of the tensor product grids S2Grid and SO3Grid |
| [S2Grid](S2Grid_index_py.html) | a grid on the sphere with ring structure, a ladder of polar angles theta and one azimuth grid per ring, whose nearest and radius searches use that structure |
| [S2Triangulation](S2Triangulation_index_py.html) | the Delaunay triangulation of directions on the sphere, their convex hull: the triangles T, counterclockwise from outside, and the triangle opposite each vertex |
| [slipSystem](slipSystem_index_py.html) | slip systems: slip directions b with plane normals n orthogonal to them and a critical resolved shear stress each, in crystal coordinates while Miller indexed, in specimen coordinates once an orientation has rotated them |
| [SO3FibonacciGrid](SO3FibonacciGrid_index_py.html) | the super-Fibonacci grid of orientations, a low-discrepancy quaternion spiral trimmed to one fundamental region of the frame pair, searched through the quaternion k-d tree |
| [SO3Grid](SO3Grid_index_py.html) | the equispaced grid of orientations over one fundamental region of its frame pair, MATLAB's SO3Grid: an S2 grid of the images of z with a ladder of gamma per node, so a search costs three binary searches |
| [SO3TangentVector](SO3TangentVector_index_py.html) | a tangent vector of SO(3), a rotation vector v at a reference rotation or orientation, on the left, exp(v) * oriRef, or on the right, oriRef * exp(v) |
| [spatialTransform](spatialTransform_index_py.html) | the base of the spatial transforms, maps of the plane of a scan onto itself that move x and y and leave z |
| [spatialTransformComposite](spatialTransformComposite_index_py.html) | stages applied in order, the first given first |
| [spatialTransformDrift](spatialTransformDrift_index_py.html) | a displacement along the slow scan direction: linear between the knots s, the displacements u one row each, NaN beyond them unless extrapolate=True continues the end segments |
| [spatialTransformField](spatialTransformField_index_py.html) | a displacement interpolated between points: linear over their triangulation, the nearest point's beyond it, where MATLAB takes natural neighbours and extrapolates linearly |
| [spatialTransformHandle](spatialTransformHandle_index_py.html) | a transform given by a function of the positions and, for the inverse, a second one |
| [spatialTransformId](spatialTransformId_index_py.html) | the identity transform, which leaves every position where it is |
| [spatialTransformInverse](spatialTransformInverse_index_py.html) | the inverse of a transform that knows none in closed form, each preimage found by fixed point iteration to the tolerance tol relative to the extent of the positions |
| [spatialTransformList](spatialTransformList_index_py.html) | a list of transforms, one hop each, displayed as MATLAB's table of a spatialTransform array |
| [spatialTransformPoly](spatialTransformPoly_index_py.html) | a polynomial displacement of degree 1 or 2, the coefficients c one column per coordinate over the basis [1 x y] or [1 x y x^2 xy y^2] |
| [spatialTransformProjective](spatialTransformProjective_index_py.html) | a projective transform of the plane, a homography given by a 3 x 3 matrix normalised to H[2, 2] = 1 |
| [spatialTransformRigid](spatialTransformRigid_index_py.html) | a translation of the plane by the vector3d u |
| [spatialTransformShift](spatialTransformShift_index_py.html) | an affine transform of the plane, given by a 3 x 3 homogeneous matrix with last row [0 0 1] |
| [spatialTransformTilt](spatialTransformTilt_index_py.html) | specimen tilt, fitted in stages against a re-measured residual: a projective stage takes the bulk, then an affine and a quadratic polynomial what is left |
| [specimenFrame](specimenFrame_index_py.html) | the reference frame a sample is expressed in, with the sample symmetry it claims |
| [sphericalRegion](sphericalRegion_index_py.html) | a region on the sphere bounded by small circles: all directions v with dot(v, N_i) >= alpha_i for every normal N_i |
| [symmetry](symmetry_index_py.html) | a point group: the closure of the generators its Hermann-Mauguin symbol names, written in given axes |
| [vector3d](vector3d_index_py.html) | three dimensional vectors, a container over (..., 3) coordinates carrying antipodal, isNormalized, the reference frame and the display style |

### Functions

| [align](align_py.html) | the orientation two frames stand in by their axes, MATLAB's orientation.align |
| [alignment](alignment_py.html) | alignment(x, ...) is x.alignment(...), the method of the object passed |
| [alignmentSetups](alignmentSetups_py.html) | the twelve alignment pairs ['X\|\|a', 'Z\|\|b*'], .. |
| [allHKL](allHKL_py.html) | every index triple up to maxIndex, coprime, without (0, 0, 0) |
| [angle](angle_py.html) | angle(x, ...) is x.angle(...), the method of the object passed |
| [aspectRatio](aspectRatio_py.html) | aspectRatio(x, ...) is x.aspectRatio(...), the method of the object passed |
| [axis](axis_py.html) | axis(x, ...) is x.axis(...), the method of the object passed |
| [bainPlanes](bainPlanes_py.html) | the three {100} directions of the parent phase cs that the Bain groups of the variants are sorted by |
| [byScreenAlignment](byScreenAlignment_py.html) | the orientation implied by two frames rendering alike: a point at v renders at inv(rot) * v in screen coordinates, so vB = rotB * inv(rotA) * vA |
| [calcDistortion](calcDistortion_py.html) | calcDistortion(x, ...) is x.calcDistortion(...), the method of the object passed |
| [calcFourier](calcFourier_py.html) | calcFourier(x, ...) is x.calcFourier(...), the method of the object passed |
| [calcGND](calcGND_py.html) | calcGND(x, ...) is x.calcGND(...), the method of the object passed |
| [calcGROD](calcGROD_py.html) | calcGROD(x, ...) is x.calcGROD(...), the method of the object passed |
| [calcMisorientation](calcMisorientation_py.html) | calcMisorientation(x, ...) is x.calcMisorientation(...), the method of the object passed |
| [calcParent](calcParent_py.html) | the parent orientations of child orientations under a parent to child orientation relationship, with their fit |
| [calcParent2Child](calcParent2Child_py.html) | the parent to child orientation relationship that fits child to child misorientations best, refined from an initial guess |
| [calcVariantId](calcVariantId_py.html) | the variant, packet and Bain group of every child orientation with respect to its parent, MATLAB's calcVariantId |
| [caliper](caliper_py.html) | caliper(x, ...) is x.caliper(...), the method of the object passed |
| [cat](S1FunHarmonic.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [characteristicShape](characteristicShape_py.html) | characteristicShape(x, ...) is x.characteristicShape(...), the method of the object passed |
| [checkInside](checkInside_py.html) | whether x lies in the region, region.checkInside(x) |
| [closestAlignment](closestAlignment_py.html) | the alignment setup a crystal frame is reported in: of the twelve setups the one whose frame lies nearest its basis |
| [closestConvention](closestConvention_py.html) | the entry of AXIS_CONVENTIONS nearest a rotation, and how far it is from it in radians |
| [conj](conj_py.html) | conj(x, ...) is x.conj(...), the method of the object passed |
| [conv](conv_py.html) | conv(x, ...) is x.conv(...), the method of the object passed |
| [conventionalSector](conventionalSector_py.html) | conventionalSector(x, ...) is x.conventionalSector(...), the method of the object passed |
| [conventionNames](conventionNames_py.html) | the eight written in the axis names of a frame, 'Y1↑→X1' for an Oxford file |
| [convexHull](convexHull_py.html) | the indices of the convex hull of points in the plane, anticlockwise, by Andrew's monotone chain |
| [convexHullLoops](convexHullLoops_py.html) | the convex hulls of many loops of indices into the (n, 2) vertices V in one pass, a list of index arrays into V |
| [convexity](convexity_py.html) | convexity(x, ...) is x.convexity(...), the method of the object passed |
| [cross](cross_py.html) | cross(x, ...) is x.cross(...), the method of the object passed |
| [crystalAxes](crystalAxes_py.html) | the crystal axes a, b, c in Cartesian coordinates, from the cell of a lattice |
| [CSL](CSL_py.html) | the coincidence site lattice misorientations of order sigma of the lattice of the crystal frame cs, MATLAB's CSL |
| [cubo2homo](cubo2homo_py.html) | cubo2homo |
| [cubochoric](cubochoric_py.html) | cubochoric(x, ...) is x.cubochoric(...), the method of the object passed |
| [curvature](curvature_py.html) | curvature(x, ...) is x.curvature(...), the method of the object passed |
| [det](det_py.html) | det(x, ...) is x.det(...), the method of the object passed |
| [diff](diff_py.html) | diff(x, ...) is x.diff(...), the method of the object passed |
| [dirichletSector](dirichletSector_py.html) | the Dirichlet domain of a point group about a centre, a fundamental domain for every group, whatever axes it is written in |
| [discretize](discretize_py.html) | discretize(x, ...) is x.discretize(...), the method of the object passed |
| [disjoint](disjoint_py.html) | disjoint(x, ...) is x.disjoint(...), the method of the object passed |
| [displacement](displacement_py.html) | displacement(x, ...) is x.displacement(...), the method of the object passed |
| [dist](dist_py.html) | dist(plane, v), dist(plane, plane2): the signed distance to the plane |
| [dot](dot_py.html) | dot(x, ...) is x.dot(...), the method of the object passed |
| [dspacing](dspacing_py.html) | dspacing(x, ...) is x.dspacing(...), the method of the object passed |
| [equispacedS2Grid](equispacedS2Grid_py.html) | an equispaced spherical grid, nearly equidistant directions on rings of constant polar angle |
| [equispacedSO3Grid](equispacedSO3Grid_py.html) | nearly equidistant orientations covering one fundamental region of the frame pair |
| [Euler](Euler_py.html) | Euler(x, ...) is x.Euler(...), the method of the object passed |
| [eulerRegion](eulerRegion_py.html) | the ranges (phi1, Phi, phi2) of the Bunge Euler angles covering the fundamental region of two frames, the specimen frame the default second |
| [even](even_py.html) | even(x, ...) is x.even(...), the method of the object passed |
| [exp](exp_py.html) | exp(x, ...) is x.exp(...), the method of the object passed |
| [extent](extent_py.html) | extent(x, ...) is x.extent(...), the method of the object passed |
| [factor](factor_py.html) | factor(x, ...) is x.factor(...), the method of the object passed |
| [fibonacciSO3Grid](fibonacciSO3Grid_py.html) | a low discrepancy grid of orientations from a super-Fibonacci spiral, restricted to the fundamental region of the frame pair |
| [fill](fill_py.html) | fill(x, ...) is x.fill(...), the method of the object passed |
| [fillByGrainId](fillByGrainId_py.html) | fillByGrainId(x, ...) is x.fillByGrainId(...), the method of the object passed |
| [find](find_py.html) | find(x, ...) is x.find(...), the method of the object passed |
| [findByLocation](findByLocation_py.html) | findByLocation(x, ...) is x.findByLocation(...), the method of the object passed |
| [findByOrientation](findByOrientation_py.html) | findByOrientation(x, ...) is x.findByOrientation(...), the method of the object passed |
| [findPointGroup](findPointGroup_py.html) | the symbol a name stands for, findsymmetry: an exact name, then a space group symbol, then a name contained in the string, later entries first |
| [fitEllipse](fitEllipse_py.html) | fitEllipse(x, ...) is x.fitEllipse(...), the method of the object passed |
| [fitStage](fitStage_py.html) | fitStage(x, ...) is x.fitStage(...), the method of the object passed |
| [flip](flip_py.html) | flip(x, ...) is x.flip(...), the method of the object passed |
| [fullSym](fullSym_py.html) | fullSym(x, ...) is x.fullSym(...), the method of the object passed |
| [fundamentalRegion](fundamentalRegion_py.html) | fundamentalRegion(x, ...) is x.fundamentalRegion(...), the method of the object passed |
| [fundamentalRegionEuler](symmetry.fundamentalRegionEuler_py.html) | the box in Euler angles that carries every orientation at least once (fundamentalRegionEuler): the two-folds perpendicular to z halve Phi, and one of the reflections they make on phi1 or phi2 halves that angle when it folds its turn about zero fundamentalRegionEuler(cs, ss): MATLAB's name of the Euler plotting box |
| [fundamentalSector](fundamentalSector_py.html) | fundamentalSector(x, ...) is x.fundamentalSector(...), the method of the object passed |
| [geodesic](geodesic_py.html) | the geodesic from a to b: exp(s * log(b, a)), s in [0, 1] |
| [getMTEXpref](getMTEXpref_py.html) | one preference, or with no name all of them as a new dict, MATLAB's struct |
| [grad](grad_py.html) | grad(x, ...) is x.grad(...), the method of the object passed |
| [gradient](gradient_py.html) | gradient(x, ...) is x.gradient(...), the method of the object passed |
| [gradientX](gradientX_py.html) | gradientX(x, ...) is x.gradientX(...), the method of the object passed |
| [gradientY](gradientY_py.html) | gradientY(x, ...) is x.gradientY(...), the method of the object passed |
| [gradientZ](gradientZ_py.html) | gradientZ(x, ...) is x.gradientZ(...), the method of the object passed |
| [grainMean](grainMean_py.html) | grainMean(x, ...) is x.grainMean(...), the method of the object passed |
| [gridify](gridify_py.html) | gridify(x, ...) is x.gridify(...), the method of the object passed |
| [halfwidth](halfwidth_py.html) | halfwidth(x, ...) is x.halfwidth(...), the method of the object passed |
| [HEALPixS2Grid](HEALPixS2Grid_py.html) | the HEALPix nodes of the sphere as a list of directions |
| [hm2point](hm2point_py.html) | a Hermann-Mauguin space group symbol reduced to its point group, hms2point |
| [homo2cubo](homo2cubo_py.html) | homo2cubo |
| [homochoric](homochoric_py.html) | homochoric(x, ...) is x.homochoric(...), the method of the object passed |
| [homochoricRadius](homochoricRadius_py.html) | the radius (3 pi / 4)^(1/3) of the homochoric ball, the image of the rotations of angle pi |
| [hull](hull_py.html) | hull(x, ...) is x.hull(...), the method of the object passed |
| [identifyGroup](identifyGroup_py.html) | the symbol of a list of elements written in the given axes, '' when it names no group |
| [innerFace](innerFace_py.html) | innerFace(cS, n): the section of the shape by the plane through its centre |
| [inpolygon](inpolygon_py.html) | inpolygon(x, ...) is x.inpolygon(...), the method of the object passed |
| [interp](interp_py.html) | interp(x, ...) is x.interp(...), the method of the object passed |
| [intersect](intersect_py.html) | intersect(plane, v1, v2): where the segments cross the plane |
| [inv](inv_py.html) | inv(x, ...) is x.inv(...), the method of the object passed |
| [invRadon](invRadon_py.html) | invRadon(x, ...) is x.invRadon(...), the method of the object passed |
| [isAligned](isAligned_py.html) | isAligned(x, ...) is x.isAligned(...), the method of the object passed |
| [isclose](isclose_py.html) | isclose(x, ...) is x.isclose(...), the method of the object passed |
| [isCompatible](isCompatible_py.html) | isCompatible(x, ...) is x.isCompatible(...), the method of the object passed |
| [isCrystalDirection](isCrystalDirection_py.html) | whether v is a vector given in a crystal frame |
| [isnan](isnan_py.html) | isnan(x, ...) is x.isnan(...), the method of the object passed |
| [isPointGroupName](isPointGroupName_py.html) | whether a string names a point group exactly, by one of its symbols or names, never a substring: the specimen frame 'measurement' is no group m |
| [KAM](KAM_py.html) | KAM(x, ...) is x.KAM(...), the method of the object passed |
| [laplace](laplace_py.html) | laplace(x, ...) is x.laplace(...), the method of the object passed |
| [Laue](Laue_py.html) | Laue(x, ...) is x.Laue(...), the method of the object passed |
| [LaueName](LaueName_py.html) | LaueName(x, ...) is x.LaueName(...), the method of the object passed |
| [layoutIndex](gridLayout.layoutIndex_py.html) | the index that lays out an array whose first and second index run along d = (d1, d2) as gL asks, new[r, c] = old.flat[lin[r, c]] |
| [left](left_py.html) | left(t) is t.left(): the tangent vectors on the left side |
| [lineIntersect](vector3d.lineIntersect_py.html) | where the segments from a to b cross the planes <n, v> = d, NaN where they do not, MATLAB's lineIntersect |
| [loadSettings](loadSettings_py.html) | applies the saved settings to the session: the key plottingConvention sets the default convention, every other key the preference of that name |
| [localOrientationGrid](localOrientationGrid_py.html) | an equispaced grid of orientations in a ball about a centre |
| [localS2Grid](localS2Grid_py.html) | an equispaced grid of directions in a spherical cap about a centre |
| [log](log_py.html) | log(x, ...) is x.log(...), the method of the object passed |
| [longAxis](longAxis_py.html) | longAxis(x, ...) is x.longAxis(...), the method of the object passed |
| [matrix](matrix_py.html) | matrix(x, ...) is x.matrix(...), the method of the object passed |
| [maxAngle](symmetry.maxAngle_py.html) | maxAngle(cs), maxAngle(cs1, cs2): the largest rotation angle of the fundamental region of the frames, MATLAB's maxAngle of a symmetry |
| [mean](mean_py.html) | mean(x, ...) is x.mean(...), the method of the object passed |
| [merge](merge_py.html) | merge(x, ...) is x.merge(...), the method of the object passed |
| [Miller](Miller_py.html) | crystal directions and lattice plane normals, a vector3d in a crystal frame |
| [misfit](misfit_py.html) | misfit(mori, p2c): the angle of every child to child misorientation to the nearest one the relationship predicts |
| [monoclinicSetting](monoclinicSetting_py.html) | '2', 'm', '2/m' with lattice angles: the unique axis is the one whose angle is not 90 degree |
| [mPrime](mPrime_py.html) | mPrime(sS1, sS2) is sS1.mPrime(sS2): the Luster-Morris parameter \|(n1  |
| [multiplicity](multiplicity_py.html) | multiplicity(x, ...) is x.multiplicity(...), the method of the object passed |
| [nfold](nfold_py.html) | nfold(x, ...) is x.nfold(...), the method of the object passed |
| [norm](norm_py.html) | norm(x, ...) is x.norm(...), the method of the object passed |
| [normalize](normalize_py.html) | normalize(x, ...) is x.normalize(...), the method of the object passed |
| [numProper](numProper_py.html) | numProper(x, ...) is x.numProper(...), the method of the object passed |
| [numSym](numSym_py.html) | numSym(x, ...) is x.numSym(...), the method of the object passed |
| [orth](orth_py.html) | orth(x, ...) is x.orth(...), the method of the object passed |
| [orthProj](orthProj_py.html) | orthProj(x, ...) is x.orthProj(...), the method of the object passed |
| [packetPlanes](packetPlanes_py.html) | the four {111} planes of the parent phase cs that the packets of the variants are sorted by |
| [paris](paris_py.html) | paris(x, ...) is x.paris(...), the method of the object passed |
| [paror](paror_py.html) | paror(x, ...) is x.paror(...), the method of the object passed |
| [perp](perp_py.html) | perp(x, ...) is x.perp(...), the method of the object passed |
| [pixelSizeMatch](pixelSizeMatch_py.html) | pixelSizeMatch(x, ...) is x.pixelSizeMatch(...), the method of the object passed |
| [polar](polar_py.html) | polar(x, ...) is x.polar(...), the method of the object passed |
| [pos2ind](pos2ind_py.html) | pos2ind(x, ...) is x.pos2ind(...), the method of the object passed |
| [principalComponents](principalComponents_py.html) | principalComponents(x, ...) is x.principalComponents(...), the method of the object passed |
| [project](project_py.html) | project(x, ...) is x.project(...), the method of the object passed |
| [projectIntoEulerRegion](quaternion.project2EulerFR_py.html) | the Bunge Euler angles of the representative of every orientation inside the Euler box of its frames, as MATLAB's project2EulerFR: three arrays in the shape of the list |
| [projectIntoFundamentalRegion](projectIntoFundamentalRegion_py.html) | projectIntoFundamentalRegion(x, ...) is x.projectIntoFundamentalRegion(...), the method of the object passed |
| [projectIntoRegion](projectIntoRegion_py.html) | the image of a direction that lies in a region, under the group |
| [properGroup](properGroup_py.html) | properGroup(x, ...) is x.properGroup(...), the method of the object passed |
| [properSubGroup](properSubGroup_py.html) | properSubGroup(x, ...) is x.properSubGroup(...), the method of the object passed |
| [radon](radon_py.html) | radon(x, ...) is x.radon(...), the method of the object passed |
| [reciprocalAxes](reciprocalAxes_py.html) | the reciprocal axes a*, b*, c* |
| [reduce](reduce_py.html) | reduce(x, ...) is x.reduce(...), the method of the object passed |
| [reduceBoundary](reduceBoundary_py.html) | reduceBoundary(x, ...) is x.reduceBoundary(...), the method of the object passed |
| [refineBoundary](refineBoundary_py.html) | refineBoundary(x, ...) is x.refineBoundary(...), the method of the object passed |
| [reflection](reflection_py.html) | a reflection at the plane with normal n |
| [regularS2Grid](regularS2Grid_py.html) | a regular spherical grid, the tensor product of a ladder of polar angles and a ladder of azimuths, the layout of pole figure files |
| [regularSO3Grid](regularSO3Grid_py.html) | the regular raster of Euler angles over the Euler box of the frames, as the ODF sections show it |
| [reset](reset_py.html) | a fresh session: the preferences, the register and the default frame |
| [right](right_py.html) | right(t) is t.right(): the tangent vectors on the right side |
| [Rodrigues](Rodrigues_py.html) | Rodrigues(x, ...) is x.Rodrigues(...), the method of the object passed |
| [rotate](S2Fun.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [round](round_py.html) | round(x) of an MTEX object by its own round, of an array, a list or with an axis as NumPy rounds, of a number as Python rounds, so that from mtex import * keeps Python's round |
| [round2Miller](orientation.round2Miller_py.html) | the lattice planes and directions of low indices an orientation or a misorientation aligns |
| [sectorCenter](sectorCenter_py.html) | the centre of the Dirichlet domain: the barycentre of the conventional sector - the triangle c, a, tertiary for the tetragonal and hexagonal systems, [001], [101], [111] for the cubic one - in the axes the group is written in |
| [setMTEXpref](setMTEXpref_py.html) | sets a preference of the session |
| [setOptions](setOptions_py.html) | setOptions(x, ...) is x.setOptions(...), the method of the object passed |
| [settingsFile](settingsFile_py.html) | the path of the user's settings file, whether or not it exists: MTEX_SETTINGS when set, else mtex_settings.json in the user's configuration folder, %APPDATA%/mtex on Windows and $XDG_CONFIG_HOME/mtex or ~/.config/mtex elsewhere |
| [shapeFactor](shapeFactor_py.html) | shapeFactor(x, ...) is x.shapeFactor(...), the method of the object passed |
| [shift](shift_py.html) | shift(x, ...) is x.shift(...), the method of the object passed |
| [shortAxis](shortAxis_py.html) | shortAxis(x, ...) is x.shortAxis(...), the method of the object passed |
| [sim](sim_py.html) | sim(x, ...) is x.sim(...), the method of the object passed |
| [simplifyBoundary](simplifyBoundary_py.html) | simplifyBoundary(x, ...) is x.simplifyBoundary(...), the method of the object passed |
| [smooth](smooth_py.html) | smooth(x, ...) is x.smooth(...), the method of the object passed |
| [smoothBoundary](smoothBoundary_py.html) | smoothBoundary(x, ...) is x.smoothBoundary(...), the method of the object passed |
| [spaceGroupToPointGroup](spaceGroupToPointGroup_py.html) | the Hermann-Mauguin symbol of the point group of a space group given by its number, 1 to 230 |
| [spatialProfile](spatialProfile_py.html) | spatialProfile(x, ...) is x.spatialProfile(...), the method of the object passed |
| [sqrt](sqrt_py.html) | sqrt(x, ...) is x.sqrt(...), the method of the object passed |
| [std](std_py.html) | std(x, ...) is x.std(...), the method of the object passed |
| [stripSym](stripSym_py.html) | stripSym(x, ...) is x.stripSym(...), the method of the object passed |
| [subGrid](subGrid_py.html) | subGrid(x, ...) is x.subGrid(...), the method of the object passed |
| [subsample](subsample_py.html) | subsample(x, ...) is x.subsample(...), the method of the object passed |
| [sum](S2Fun.sum_py.html) | sum(x) of an MTEX object by its own sum, of an array or with an axis as NumPy sums, of any other iterable as Python sums, so that from mtex import * keeps Python's sum |
| [superfibonacciSO3Grid](superfibonacciSO3Grid_py.html) | a super-Fibonacci grid of orientations covering one fundamental region of the frame pair, its resolution the mean spacing of nearest neighbours |
| [surfor](surfor_py.html) | surfor(x, ...) is x.surfor(...), the method of the object passed |
| [symmetrise](symmetrise_py.html) | symmetrise(x, ...) is x.symmetrise(...), the method of the object passed |
| [tilesSphere](tilesSphere_py.html) | whether the region is a fundamental domain of the point group: n evenly spread directions folded into it all land inside, and it covers the share of one element |
| [transform](transform_py.html) | transform(x, ...) is x.transform(...), the method of the object passed |
| [transformationMatrix](transformationMatrix_py.html) | transformationMatrix(x, ...) is x.transformationMatrix(...), the method of the object passed |
| [transformReferenceFrame](transformReferenceFrame_py.html) | transformReferenceFrame(x, ...) is x.transformReferenceFrame(...), the method of the object passed |
| [truncate](truncate_py.html) | truncate(x, ...) is x.truncate(...), the method of the object passed |
| [undistort](undistort_py.html) | undistort(x, ...) is x.undistort(...), the method of the object passed |
| [union](union_py.html) | union(x, ...) is x.union(...), the method of the object passed |
| [unique](unique_py.html) | unique(x, ...) is x.unique(...), the method of the object passed |
| [variants](variants_py.html) | the variants of a parent to child orientation relationship, and the child or parent orientations they give |
| [weightedBurgersVec](weightedBurgersVec_py.html) | weightedBurgersVec(x, ...) is x.weightedBurgersVec(...), the method of the object passed |
| [withExchange](withExchange_py.html) | withExchange(x, ...) is x.withExchange(...), the method of the object passed |

## Function spaces

### Classes

| [fibreVonMisesFisherKernel](fibreVonMisesFisherKernel_index_py.html) | the von Mises Fisher kernel of a fibre, what fibreODF convolves with |
| [griddedDensity](griddedDensity_index_py.html) | a density on a regular grid, evaluated by its tensor product spline as MATLAB's griddedInterpolant(..., 'spline'), extrapolating beyond the grid |
| [InvariantProjection](InvariantProjection_index_py.html) | the same projection, held and kept in its support |
| [PoleFigure](PoleFigure_index_py.html) | measured pole figure intensities, one or several pole figures of one specimen |
| [quadratureS1Grid](quadratureS1Grid_index_py.html) | the circle: 2L+2 equispaced nodes with equal weights integrate degree 2L+1 exactly |
| [quadratureS2Grid](quadratureS2Grid_index_py.html) | the nodes of a quadrature rule on the sphere, a list of directions as in MATLAB, rho slowest and theta fastest over the axes thetaGrid and rhoGrid, with its weights |
| [quadratureSO3Grid](quadratureSO3Grid_index_py.html) | the quadrature grid on SO(3) of a bandwidth: the nodes and weights that integrate every harmonic function up to that degree exactly |
| [S1BumpKernel](S1BumpKernel_index_py.html) | the indicator of the interval \|x\| < delta scaled to a density |
| [S1DeLaValleePoussinKernel](S1DeLaValleePoussinKernel_index_py.html) | the n-th de la Vallee Poussin kernel on the circle, 2 F_(2n-1) - F_(n-1) with F the Fejer kernels: coefficients one up to n, falling to zero at 2n |
| [S1DirichletKernel](S1DirichletKernel_index_py.html) | the Dirichlet kernel on the circle, sum_(k = -n . |
| [S1FejerKernel](S1FejerKernel_index_py.html) | the Fejer kernel on the circle, the mean of the Dirichlet kernels D_0 . |
| [S1FourierPlan](S1FourierPlan_index_py.html) | the circle: f(x) = sum_{k=-L}^{L} c_k e^{ikx} |
| [S1FunHandle](S1FunHandle_index_py.html) | a function on the circle given by a callable that receives angles |
| [S1FunHarmonic](S1FunHarmonic_index_py.html) | a function on the circle by its Fourier coefficients fhat, k = -L..L, over e^{-ikx} as MATLAB's |
| [S1GaussKernel](S1GaussKernel_index_py.html) | the heat kernel of the circle, a wrapped Gaussian: what smooths a density of angles |
| [S1Kernel](S1Kernel_index_py.html) | a kernel on the circle given by its Fourier coefficients fhat, degrees -N . |
| [S1KernelHandle](S1KernelHandle_index_py.html) | a kernel on the circle given by a function of the angle, its Fourier coefficients by the trapezoidal rule |
| [S2AxisFieldHandle](S2AxisFieldHandle_index_py.html) | an axis field on the sphere given by a function of the directions, with a bandwidth hint for its expansion |
| [S2AxisFieldHarmonic](S2AxisFieldHarmonic_index_py.html) | an axis field on the sphere by a harmonic series: an axis without sign at every direction, as the principal directions of a stress or the polarisations of a wave |
| [S2BumpKernel](S2BumpKernel_index_py.html) | the bump kernel on the sphere: 2 / (1 - cos delta) on the cap of radius delta, zero beyond, a density of mean one |
| [S2DeLaValleePoussinKernel](S2DeLaValleePoussinKernel_index_py.html) | the de la Vallee Poussin kernel on the sphere, (1 + kappa) ((1 + t) / 2)^kappa: nonnegative and a finite series, the kernel recommended for texture analysis |
| [S2DirichletKernel](S2DirichletKernel_index_py.html) | the Dirichlet kernel on the sphere, sum_n (2n+1) P_n(t) up to the degree N, of integral one |
| [S2FourierPlan](S2FourierPlan_index_py.html) | the NUFFT plan of a spherical harmonic series at arbitrary directions v up to bandwidth L, reusable across coefficient vectors: plan(fhat) evaluates, plan.adjoint(values, weights) |
| [S2Fun](S2Fun_index_py.html) | the functions on the sphere: S2FunHarmonic, S2FunHandle, S2FunBingham |
| [S2FunBingham](S2FunBingham_index_py.html) | the Bingham distribution on the sphere: the density exp(v' a diag(Z) a' v) of the axes v, with three shape parameters Z and three orthonormal principal axes a, symmetrised over a frame |
| [S2FunHandle](S2FunHandle_index_py.html) | a function on the sphere given by a callable that receives directions |
| [S2FunHarmonic](S2FunHarmonic_index_py.html) | a function on the sphere by its spherical harmonic series, or a list of such functions |
| [S2FunSum](S2FunSum_index_py.html) | a sum of functions on the sphere of different representations: evaluation adds the values, the harmonic form adds the harmonic forms |
| [S2FunTri](S2FunTri_index_py.html) | a function on the sphere by its values at the vertices of a spherical triangulation, linear in between |
| [S2GridPlan](S2GridPlan_index_py.html) | the sphere: f(theta, rho) = sum G[m, j] e^{i(m rho - j theta)}, theta a transform of length 4Lg cut to the grid's rows, rho one of the grid's length, real valued for a real function |
| [S2Kernel](S2Kernel_index_py.html) | a kernel on the sphere given by its Legendre coefficients A |
| [S2KernelHandle](S2KernelHandle_index_py.html) | a kernel on the sphere given by a function of the cosine of the polar angle, its Legendre coefficients by Gauss-Legendre quadrature |
| [S2RestrictedDistanceKernel](S2RestrictedDistanceKernel_index_py.html) | the restricted distance kernel on the sphere, -2 sin(acos(t) / 2), cut at the degree N: negative, a distance between directions that makes points repel each other |
| [S2VectorFieldHandle](S2VectorFieldHandle_index_py.html) | a vector field on the sphere given by a callable of the directions, the bandwidth a hint for its harmonic expansion |
| [S2VectorFieldHarmonic](S2VectorFieldHarmonic_index_py.html) | a vector field on the sphere by the spherical harmonic expansions of its three Cartesian components |
| [SchulzDefocusingKernel](SchulzDefocusingKernel_index_py.html) | the defocusing of a Bragg-Brentano goniometer (MATLAB SchulzDefocusingKernel): the beam of width r is smeared over the receiving slit of width w at the distance d as the sample tilts by alpha, and the measured intensity drops by the factor the kernel gives |
| [SO3AbelPoissonKernel](SO3AbelPoissonKernel_index_py.html) | the Abel Poisson kernel on SO(3), sum_n (2n+1) kappa^(2n) U_2n(t), kappa in (0, 1) |
| [SO3BumpKernel](SO3BumpKernel_index_py.html) | the bump kernel on SO(3): constant on the rotations of angle below delta, zero beyond, of mean one |
| [SO3DeLaValleePoussinKernel](SO3DeLaValleePoussinKernel_index_py.html) | the de la Vallee Poussin kernel on SO(3), B(3/2, 1/2) / B(3/2, kappa + 1/2) t^(2 kappa): nonnegative and a finite series, the kernel recommended for texture analysis |
| [SO3DirichletKernel](SO3DirichletKernel_index_py.html) | the Dirichlet kernel on SO(3), sum_n (2n+1) U_2n(t) up to the degree N, of integral one: the kernel for physical properties |
| [SO3FourierPlan](SO3FourierPlan_index_py.html) | on SO(3): folds says that the function is invariant under those z folds on the two sides: in the forward its coefficients outside them are zero, in the adjoint the projection of H5 is about to zero them |
| [SO3Fun](SO3Fun_index_py.html) | the functions on SO(3): SO3FunHarmonic, SO3FunRBF, SO3FunCBF, SO3FunBingham, SO3FunHandle, SO3FunComposition |
| [SO3FunBingham](SO3FunBingham_index_py.html) | the Bingham distribution on SO(3): the density exp(q' A diag(kappa) A' q) on the quaternions, symmetrised over the crystal and specimen frames, with four concentrations kappa and four orthonormal quaternion axes A |
| [SO3FunCBF](SO3FunCBF_index_py.html) | a fibre ODF: a sum over fibres h \|\| r of a kernel on the sphere of the angle between g h and r |
| [SO3FunComposition](SO3FunComposition_index_py.html) | a sum of functions of different representations: evaluation adds the values, the harmonic form adds the harmonic forms |
| [SO3FunHandle](SO3FunHandle_index_py.html) | a function on SO(3) given by a callable that receives orientations |
| [SO3FunHarmonic](SO3FunHarmonic_index_py.html) | a function on SO(3) as a series of Wigner functions, symmetric under its crystal and specimen frame |
| [SO3FunRBF](SO3FunRBF_index_py.html) | a function on SO(3) as a sum of radial kernels at centre orientations, plus a constant: a radial basis function ODF |
| [SO3GaussWeierstrassKernel](SO3GaussWeierstrassKernel_index_py.html) | the Gauss Weierstrass kernel on SO(3), sum_n (2n+1) e^(-n(n+1) kappa) U_2n(t), kappa > 0 |
| [SO3GridPlan](SO3GridPlan_index_py.html) | the plan of a Wigner series on a Clenshaw-Curtis quadrature grid of SO(3) up to bandwidth L, a sequence of FFTs one axis at a time: plan(fhat) evaluates, plan.adjoint(values, weights) |
| [SO3Kernel](SO3Kernel_index_py.html) | a kernel on SO(3) given by its Chebyshev coefficients A |
| [SO3KernelHandle](SO3KernelHandle_index_py.html) | a kernel given by a closed form, its coefficients by Gauss-Legendre quadrature |
| [SO3LaplaceKernel](SO3LaplaceKernel_index_py.html) | the Laplace kernel on SO(3), sum_n (2n+1) / (4 n^2 (2n+2)^2) U_2n(t), without a constant term |
| [SO3RestrictedDistanceKernel](SO3RestrictedDistanceKernel_index_py.html) | the restricted distance kernel on SO(3), -sqrt(8) sin(acos(t)), cut at the degree N: negative, a distance between orientations that makes points repel each other |
| [SO3SobolevKernel](SO3SobolevKernel_index_py.html) | the Sobolev kernel on SO(3), sum_n (2n+1) (n(n+1))^s U_2n(t) up to the bandwidth |
| [SO3SquareSingularityKernel](SO3SquareSingularityKernel_index_py.html) | the square singularity kernel on SO(3), kappa in (0, 1), its coefficients the Legendre functions of the second kind |
| [SO3VectorFieldHandle](SO3VectorFieldHandle_index_py.html) | a vector field on SO(3) given by a callable returning vectors or tangent vectors at orientations, in the left or right tangent space |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html) | a vector field on SO(3) whose three components are series of Wigner functions, in the left or the right tangent space |
| [SO3VectorFieldRBF](SO3VectorFieldRBF_index_py.html) | a vector field on SO(3) as a sum of radial kernels at centre orientations with weight vectors, exactly equivariant |
| [SO3vonMisesFisherKernel](SO3vonMisesFisherKernel_index_py.html) | the von Mises Fisher kernel on SO(3), proportional to e^(kappa cos omega), kappa > 0 |

### Functions

| [adjointTransform](adjointTransform_py.html) | adjointTransform(plan, values, weights) is plan.adjoint(values, weights): the coefficients from weighted values at the plan's nodes |
| [angularDerivatives](angularDerivatives_py.html) | L_i f, the derivative under the rotation about e_i, on the coefficients: the ladder operators as shifts of the coefficient vector, the degrees never mixing |
| [antiderivative](antiderivative_py.html) | the antiderivative of a gradient field, the function of mean zero whose gradient it is |
| [bandwidthFor](bandwidthFor_py.html) | the smallest bandwidth at least L whose 2L+2 the folds divide |
| [BinghamODF](BinghamODF_py.html) | a Bingham distributed ODF |
| [calcAngleDistribution](SO3Fun.calcAngleDistribution_py.html) | the distribution of the misorientation angle: of a misorientation density, of a list of misorientations, or of the uniform density of two crystal frames |
| [calcAxisDistribution](SO3Fun.calcAxisDistribution_py.html) | the axis distribution of an SO(3) function, an S2 function of the rotation axes symmetric under the rotations the two frames share |
| [calcBinghamODF](orientation.calcBinghamODF_py.html) | the Bingham distribution estimated from orientations |
| [calcComponents](SO3Fun.calcComponents_py.html) | the modal orientations of an orientation density, the components: their orientations, their volumes and the mode every seed flowed into |
| [calcDensity](calcDensity_py.html) | the density estimate of a sample: an ODF of orientations, a function on the sphere of directions or axes, a function on the circle of angles or a density of real values |
| [calcError](SO3Fun.calcError_py.html) | the error between a measurement and a recalculation, or between two SO(3) functions |
| [calcErrorPF](calcErrorPF_py.html) | the pole figures of the deviation from a recalculation |
| [calcKernel](EBSD.calcKernel_py.html) | the kernel a density estimate of orientations or directions should use, a de la Vallee Poussin kernel of the halfwidth chosen from the sample |
| [calcMDF](SO3Fun.calcMDF_py.html) | the uncorrelated misorientation distribution function of one or two ODFs |
| [calcMIndex](SO3Fun.calcMIndex_py.html) | the M-index of an ODF by Skemer et al., computed from the ODF instead of a discrete number of orientations |
| [calcNormalization](calcNormalization_py.html) | calcNormalization(pf, other) is pf.calcNormalization(other): the factor that scales the second pole figure to the mass of the first |
| [calcPoleFigure](SO3Fun.calcPoleFigure_py.html) | the pole figures an ODF predicts: simulated diffraction intensities, superposed pole figures and any specimen directions |
| [calcQuadratureWeights](vector3d.calcQuadratureWeights_py.html) | weights that integrate a function from samples at the directions, summing to one |
| [centerSpecimen](SO3Fun.centerSpecimen_py.html) | an orientation density of an assumed orthotropic texture rotated so that its two fold axes lie on the specimen axes |
| [clebschGordan](clebschGordan_py.html) | <j1 m1 j2 m2 \| J M> by the Racah formula in exact rational arithmetic |
| [clebschGordanTensor](clebschGordanTensor_py.html) | the array C[m1, m2, M] of degrees l1, l2 coupled to J |
| [clenshawCurtis](clenshawCurtis_py.html) | Clenshaw-Curtis nodes cos(pi b/(n-1)), b = 0..n-1, and weights exact to degree n-1 |
| [component](component_py.html) | component(v, i) is the i-th component of the field v, a function on its component frames |
| [componentFrames](componentFrames_py.html) | the frames the components are functions on: the group on the tangent side is stripped |
| [correct](correct_py.html) | correct(pf, ...) is pf.correct(...): the background subtracted and the defocusing divided out |
| [curl](curl_py.html) | the curl, the dual of the exterior derivative, a field of the same side |
| [deg2dim](deg2dim_py.html) | the number of harmonic coefficients on SO(3) of the degrees below n, sum of (2k + 1)^2 for k = 0 . |
| [degreeBlock](degreeBlock_py.html) | the block of degree n as a view, rows the specimen side k, columns the crystal side l |
| [degreeRange](degreeRange_py.html) | the slice of the coefficients of degree n in a flat SO(3) coefficient array |
| [differentiate](differentiate_py.html) | the three derivatives of a coefficient vector, on the rows for the left side and on the columns for the right |
| [dim2deg](dim2deg_py.html) | the bandwidth of a coefficient array of length d, so that dim2deg(deg2dim(n + 1)) == n |
| [discrepancy](S2Fun.discrepancy_py.html) | the discrepancy between two densities and/or weighted point sets on the sphere (S2Fun, vector3d) or on SO(3) (SO3Fun, rotation, orientation), in either order |
| [discreteSample](S2Fun.discreteSample_py.html) | a random sample of n orientations drawn from an orientation density, of directions from a density on the sphere, of numbers from a density on an interval, or n random members of a list |
| [div](div_py.html) | the divergence, invariant under both groups |
| [entropy](S2FunHarmonic.entropy_py.html) | the entropy -int f log f of a function on SO(3) or on the sphere |
| [equivariantProjection](equivariantProjection_py.html) | the projection of stacked components onto the equivariant fields: for every degree the mean over the group of M(s) kron D(s), M the matrix acting on the components and D the matrix acting on one component from the left |
| [fibreODF](fibreODF_py.html) | a fibre ODF, symmetric about the fibre of the orientations taking a crystal direction to a specimen direction, its shape a kernel on the sphere |
| [fibreVolume](SO3Fun.fibreVolume_py.html) | the volume of a fibre: the share of an orientation density within a radius of the fibre of the orientations that map the crystal direction h onto the specimen direction r |
| [foldedDims](foldedDims_py.html) | the shape (l, k, j) of the Fourier array of bandwidth L, the two periodic axes shrunk by the z folds, the axis l halved for a real function |
| [folds](folds_py.html) | the z folds on the crystal and on the specimen side: the order of the rotation about z that leaves the frame's group invariant |
| [FourierODF](FourierODF_py.html) | an ODF by its Fourier coefficients, or another ODF in its harmonic form (MATLAB FourierODF) |
| [fourierSeries](fourierSeries_py.html) | the Fourier series sum of chat_k e^{ikx} at the angles x, directly or by NUFFT |
| [fourierSeriesAdjoint](fourierSeriesAdjoint_py.html) | the Fourier coefficients c_{-L} . |
| [Gaussian](Gaussian_py.html) | the normal density of mean m and width delta, the standard deviation times sqrt(2) |
| [gaussLegendre](gaussLegendre_py.html) | nodes and weights of the n point Gauss-Legendre rule on [-1, 1] |
| [halfPiDegrees](halfPiDegrees_py.html) | the Wigner-d matrices d_0(pi/2) . |
| [interpolate](SO3VectorFieldHarmonic.interpolate_py.html) | the function in harmonic form fitted by least squares to values at nodes: on SO(3) at orientations, on the sphere at directions, a vector field for vector values or tangent vectors |
| [interpolateRBF](interpolateRBF_py.html) | an SO3FunRBF, a weighted sum of radial kernels, through values at orientations |
| [interpSO3](interpSO3_py.html) | a function on SO(3) through values at orientations, by radial basis functions, by harmonics or as a Bingham distribution |
| [invariantProjection](invariantProjection_py.html) | the projection of the harmonic coefficients onto the functions invariant under a group, one matrix P_n per degree up to L |
| [isOutlier](isOutlier_py.html) | the measurements deviating from the mean of their neighbours by more than alpha standard deviations |
| [isRealFourier](isRealFourier_py.html) | whether Fourier coefficients on the circle are those of a real function, c_{-k} = conj(c_k) |
| [isRealSpherical](isRealSpherical_py.html) | whether spherical coefficients are those of a real function, fhat_l^{-m} = (-1)^m conj(fhat_l^m) |
| [isRealWigner](isRealWigner_py.html) | a coefficient vector is real valued when fhat_n^{-k,-l} = (-1)^{k-l} conj(fhat_n^{kl}) on SO(3), fhat_l^{-m} = (-1)^m conj(fhat_l^m) on S2, c_{-k} = conj(c_k) on S1 |
| [kde1d](kde1d_py.html) | a kernel density estimate of one dimensional data by diffusion, the Gaussian kernel's bandwidth chosen from the data |
| [kdeN](kdeN_py.html) | the adaptive kernel density estimate of samples in several dimensions, the regularised EM mixture of Botev et al. |
| [legendreP](legendreP_py.html) | the Legendre polynomials P_0(x) . |
| [mapField](mapField_py.html) | a pointwise operation on vector fields on SO(3), as a field or a function |
| [mapFun](mapFun_py.html) | the harmonic function of op applied pointwise to f and gs, by quadrature at the sum of their bandwidths, capped by the preference, or at the given bandwidth |
| [max](S1Grid.max_py.html) | the maximum of a function on SO(3) or the sphere, the value and the position, numLocal local maxima from a grid refined down to the accuracy |
| [mhyper](mhyper_py.html) | 1F1(1/2 |
| [min](S1Grid.min_py.html) | the minimum of a function on SO(3) or the sphere, the value and the position, numLocal local minima |
| [mlsq](mlsq_py.html) | MATLAB's mlsq: least squares over weights of the sign of the start, the steepest descent direction scaled by the weights so that none crosses zero |
| [noisepf](noisepf_py.html) | simulated diffraction counts: Poisson counts of factor * I + background, the background subtracted again |
| [normalizedLegendre](normalizedLegendre_py.html) | the fully normalised associated Legendre functions P_l^m(x), m = 0..l, with the Condon-Shortley phase, so that Y_l^m = P_l^m e^{im rho} |
| [projectLeft](projectLeft_py.html) | the coefficients projected in place on the left, the specimen side, by the projection P |
| [projectRight](projectRight_py.html) | the coefficients projected in place on the right, the crystal side, by the projection Q |
| [refine](S1Grid.refine_py.html) | the directions with a new one between every three neighbours: the centroids of the Delaunay triangles of the points on the sphere, none below the lowest point, so a cap stays a cap |
| [rhoVector](rhoVector_py.html) | the unit vector along the azimuth at a direction, the second vector of the polar basis |
| [rotationalDiscrepancy](rotationalDiscrepancy_py.html) | the discrepancy between two measures on SO(3), densities or weighted orientation sets in any pairing: D_2, D_ball or a bandlimited L2 norm |
| [SantaFe](SantaFe_py.html) | the Santa Fe sample ODF (MATLAB SantaFe): cubic crystal and orthorhombic specimen symmetry, a uniform portion of 0.73 and a von Mises Fisher component of 10 degree halfwidth at (122)[221] carrying the other 0.27 |
| [silvermanWidth](silvermanWidth_py.html) | the width of Silverman's rule, on the smaller of the standard deviation and the scaled interquartile range |
| [sphericalDiscrepancy](sphericalDiscrepancy_py.html) | the discrepancy between two measures on the sphere, densities or weighted point sets in any pairing: D_2, D_cap or a bandlimited L2 norm |
| [sphericalPlan](sphericalPlan_py.html) | the plan for a node set on the sphere: the FFT on a Clenshaw-Curtis grid, the NUFFT otherwise |
| [sphericalSeries](sphericalSeries_py.html) | the spherical harmonic series fhat at directions or on a quadrature grid, the trigonometric sum or the NUFFT by the number of nodes |
| [sphericalSeriesAdjoint](sphericalSeriesAdjoint_py.html) | the spherical coefficients up to bandwidth L from weighted values at directions, the direct sum below 50 nodes |
| [sphericalTransform](sphericalTransform_py.html) | the Fourier array G[m, j] of spherical coefficients of bandwidth L, so that f(theta, rho) is the sum of G e^{i(m rho - j theta)} |
| [sphericalTransformAdjoint](sphericalTransformAdjoint_py.html) | the adjoint: fhat_l^m = sqrt((2l+1)/4pi) i^m sum_j d_l^{jm} d_l^{j0} h[m, -j] for h[m, j] = sum_q w_q v_q e^{-i(m rho_q - j theta_q)} |
| [sphericalY](sphericalY_py.html) | MTEX's spherical harmonics, Y_l^{-m} = conj(Y_l^m) without the Condon-Shortley phase: the basis the public coefficients fhat are taken in |
| [summationMatrix](summationMatrix_py.html) | the values of the kernels at the centres at the nodes, rows the nodes, columns the centres |
| [supportCosine](supportCosine_py.html) | the cosine of the half angle beyond which the kernel stays below tol of its peak, in closed form for the families with one and found by a scan otherwise |
| [textureIndex](S2FunBingham.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |
| [thetaVector](thetaVector_py.html) | the unit vectors of the polar coordinates at a direction: along the polar angle and along the azimuth |
| [transformODF](transformODF_py.html) | the child texture of a parent texture, the transformation texture |
| [uniformODF](uniformODF_py.html) | the uniform ODF, constant one, between a crystal and a specimen frame |
| [unimodalODF](unimodalODF_py.html) | a unimodal ODF, radially symmetric about a modal orientation, its shape a kernel on SO(3) |
| [usableFolds](usableFolds_py.html) | the z folds a NUFFT array of bandwidth L can carry, (1, 1) when a folded axis would be too thin |
| [volume](S2Fun.volume_py.html) | the share of orientations within a radius of a centre: the integral of f over the ball, int_{angle(g, c) < r} f(g) dg, relative to the integral over all orientations |
| [wigner3j](wigner3j_py.html) | the Wigner 3j symbol of (j1 j2 j3 |
| [WignerD](WignerD_py.html) | the Wigner-D matrices of rotations, or the Wigner-d matrices of a second Euler angle, of one degree or of all degrees up to a bandwidth |
| [wignerd](wignerd_py.html) | the real Wigner-d matrix d_l(beta) at one angle, or with bandwidth=L the list d_0 . |
| [wignerdDegrees](wignerdDegrees_py.html) | the Wigner-d matrices d_0(beta) . |
| [wignerPlan](wignerPlan_py.html) | the plan for a node set: the NUFFT at arbitrary nodes, the FFT on a Clenshaw-Curtis grid, the NUFFT on the nodes of a grid whose polar rule is not equispaced |
| [wignerSeries](wignerSeries_py.html) | the series at every rotation of a container or on a quadrature grid |
| [wignerSeriesAdjoint](wignerSeriesAdjoint_py.html) | coefficients from weighted values: the adjoint sum below DIRECT_SUM_NODES nodes |
| [wignerSeriesAdjointGridded](wignerSeriesAdjointGridded_py.html) | the SO(3) coefficients up to bandwidth L from weighted values, every rotation rounded to the nearest node of a Clenshaw-Curtis grid and the grid's FFT adjoint taken, MATLAB's 'gridded' |
| [wignerTransform](wignerTransform_py.html) | the Wigner coefficient transform: the coefficients of a Wigner series as the Fourier array of the same function in the Euler angles |
| [wignerTransformAdjoint](wignerTransformAdjoint_py.html) | the adjoint of the Wigner coefficient transform: the Fourier array of weighted values back to Wigner coefficients |

## Tensors

### Classes

| [ChristoffelTensor](ChristoffelTensor_index_py.html) | ChristoffelTensor(C, n): E_ik = C_ijkl n_j n_l of a stiffness and a direction |
| [complianceTensor](complianceTensor_index_py.html) | the elastic compliance S = inv(C), its Voigt matrix carrying the factors of the double convention |
| [curvatureTensor](curvatureTensor_index_py.html) | the lattice curvature tensor, the rank two tensor of the spatial derivatives of the orientation field |
| [deformationGradientTensor](deformationGradientTensor_index_py.html) | a deformation gradient tensor F, the rank two tensor carrying a line segment dX of the undeformed body into dx = F dX of the deformed one |
| [dislocationDensityTensor](dislocationDensityTensor_index_py.html) | the dislocation density or Nye tensor, the rank two tensor derived from the curvature tensor of an orientation field |
| [refractiveIndexTensor](refractiveIndexTensor_index_py.html) | the rank two symmetric refractive index tensor, whose anisotropy makes a crystal birefringent |
| [SchmidTensor](SchmidTensor_index_py.html) | SchmidTensor(n, b) of a plane normal and a slip direction, SchmidTensor(sS) of slip systems |
| [spinTensor](spinTensor_index_py.html) | spinTensor(M), or spinTensor(v) the skew matrix of a rotation vector, in its frame |
| [stiffnessTensor](stiffnessTensor_index_py.html) | the elastic stiffness C, sigma = C : eps |
| [strainRateTensor](strainRateTensor_index_py.html) | a rank two symmetric strain rate tensor, the symmetric part of a velocity gradient, in the double convention of the Voigt notation |
| [strainTensor](strainTensor_index_py.html) | a rank two symmetric strain tensor, in the double convention of the Voigt notation |
| [stressTensor](stressTensor_index_py.html) | a rank two symmetric stress tensor, or a list of them |
| [tensor](tensor_index_py.html) | a tensor of rank R in a reference frame, or a list of them |
| [velocityGradientTensor](velocityGradientTensor_index_py.html) | a velocity gradient tensor L, the rank two tensor of the spatial derivatives of the velocity |

### Functions

| [antiSym](antiSym_py.html) | antiSym(T) is T.antiSym(): the antisymmetric part of a rank two tensor |
| [checkSymmetry](checkSymmetry_py.html) | whether the tensor is invariant under the group of its frame, T.checkSymmetry() |
| [colon](complianceTensor.colon_py.html) | the double contraction A : B, the last two indices of A against the first two of B, MATLAB's A:B |
| [directionalMagnitude](directionalMagnitude_py.html) | the magnitude of a tensor in the direction v, the tensor contracted with the unit direction on every index, T.directionalMagnitude(v) |
| [doubleContract](complianceTensor.colon_py.html) | the double contraction A : B, the last two indices of A against the first two of B, MATLAB's A:B |
| [dyad](dyad_py.html) | the dyadic product of tensors or vectors, their outer product |
| [eig](S2FunHarmonic.eig_py.html) | eig(T) is T.eig(): the eigenvalues in ascending order and the eigenvectors |
| [EinsteinSum](EinsteinSum_py.html) | the contraction of tensors, vectors, rotations or arrays over the indices they share |
| [expm](expm_py.html) | expm(T) is T.expm(): the matrix exponential |
| [Kelvin](Kelvin_py.html) | the Kelvin matrix, the factor sqrt(2) on every off diagonal side |
| [logm](orientation.logm_py.html) | logm(T) is T.logm(): the matrix logarithm |
| [sqrtm](sqrtm_py.html) | sqrtm(T) is T.sqrtm(): the matrix square root |
| [svd](svd_py.html) | svd(T) is T.svd(): the singular value decomposition, u, s, v of a rank two tensor |
| [sym](embedding.sym_py.html) | sym(T) is T.sym(): the symmetric part, the mean over the permutations of the indices |
| [times](S2Fun.times_py.html) | times(A, B) is A.times(B): the product of corresponding coefficients, MATLAB's A .* B |
| [trace](trace_py.html) | trace(T) is T.trace(): the trace of a rank two tensor, or of the Voigt matrix of a rank four |
| [Voigt](tensor.Voigt_py.html) | the Voigt matrix of a tensor: 6 x 6 for rank four, 3 x 6 for rank three, six components for rank two, the off diagonal entries doubled where the class prescribes it |

## Maps

### Classes

| [boundaryFilter](boundaryFilter_index_py.html) | the base of the boundary smoothing filters: smooth(V, net, h) moves the free vertices V of a boundary network sampled at the spacing h, the fixed ones stay |
| [boundaryNetwork](boundaryNetwork_index_py.html) | the network the smoothing runs on: only the vertices the boundaries use, their neighbours in compressed form, and which of them may not move |
| [cellComplex](cellComplex_index_py.html) | the spatial decomposition of a map, one cell per site: the vertices V, the vertex pair F and the site pair of every face, the sites and the lattice |
| [curvatureFilter](curvatureFilter_index_py.html) | the smooth boundary as the minimiser of \|V - V0\|^2 + alpha \|L V\|^2, where L V is how far a vertex sits off the line through its neighbours |
| [EBSD](EBSD_index_py.html) | an EBSD map: positions, rotations and phase ids with the list of the phases' frames and the properties of every measurement |
| [gbcAngle](gbcAngle_index_py.html) | the criterion of a threshold on the misorientation angle: one angle, or a high and a low angle threshold, the pair counting as the share of the levels it stays below |
| [gbcCustom](gbcCustom_index_py.html) | a criterion given as a function of the map and the two measurement indices, or as a per-pixel property, its values or the name of a property of the map, with the largest difference that still counts as one grain, gbcCustom('grainId', 0.5) |
| [gbcEqual](gbcEqual_index_py.html) | two measurements belong together when the values of a property agree, which is how a segmentation by variant, by parent grain or by any imported label is done |
| [gbcFMC](gbcFMC_index_py.html) | the grain boundary criterion of fast multiscale clustering |
| [gbcSoft](gbcSoft_index_py.html) | a smooth transition instead of a threshold, so a pair near the threshold is joined or not by how far it is from it rather than by which side it fell on |
| [grain2d](grain2d_index_py.html) | the grains of a map: a table of ids, phases, pixel counts, mean orientations and properties, with the boundary, the inner boundary and the polygon of every grain |
| [grainBoundary](grainBoundary_index_py.html) | the grain boundary of a map: the segments F between the vertices V in walk order, each with its two grains, pixels, phases and misrotation, the grain in grainId[:, 0] to the left of the walk |
| [grainBoundaryCriterion](grainBoundaryCriterion_index_py.html) | the base of the grain boundary criteria: how connected pairs of neighbouring measurements are, 1 no boundary, 0.5 a low angle boundary inside a grain, 0 a boundary |
| [huberFilter](huberFilter_index_py.html) | the same, with an l1/l2 penalty that leaves a faceted boundary faceted: the quadratic penalty of the curvature filter rounds every corner |
| [laplaceFilter](laplaceFilter_index_py.html) | repeated local averaging, the default |
| [lattice](lattice_index_py.html) | the lattice an EBSD map is measured on: the basis of the two shortest translations, the cell shape 'square' or 'hex', the plane and the integer index of every position, inferred from the positions or fitted to a known basis |
| [mapImage](mapImage_index_py.html) | an image that knows where on the specimen it sits: a raster of values on a regular grid of an origin and two perpendicular steps |
| [mapImageList](mapImageList_index_py.html) | a list of mapImage, displayed as MATLAB's table of a mapImage array |
| [mapPlane](mapPlane_index_py.html) | the plane of a set of positions with an orthonormal frame: the normal fitted and pointing up, e1 the given direction projected into the plane, the origin the specimen origin's foot on it |
| [pairShifts](pairShifts_index_py.html) | the shifts one cross correlation pass measured between two images |
| [parentGrainReconstructor](parentGrainReconstructor_index_py.html) | the state of a parent grain reconstruction: the map and the grains it starts from, the orientation relationship and the grains after every step taken |
| [phaseList](phaseList_index_py.html) | the phases of a map, the frames its measurements can belong to, the not indexed frame first at index 0, so that a phase id is an index into the list |
| [shape2d](shape2d_index_py.html) | one closed outline in the plane of a map, so that every parameter above is there for a curve that came from no segmentation, as the characteristic shape of a boundary and a projection function drawn as a shape are |
| [simulateEBSD](simulateEBSD_index_py.html) | a simulated map whose answer is known: a job holding the settings, the grid xdim, ydim and stepSize, the orientations ori0, the noise and the features, and the map EBSDsim at the current stage, which every verb rewrites |
| [taubinFilter](taubinFilter_index_py.html) | smoothing without the shrinking: every smoothing pass is followed by a slightly larger unshrinking one with a negative step, so the gain over the pair, (1 - lk)(1 - mk), is about one over the low frequencies and the area is given back |
| [triplePointList](triplePointList_index_py.html) | the triple points of a boundary: the vertices where three grains meet, each with its three grains, their phases, the three boundary segments and the angles between them |
| [trueEbsd](trueEbsd_index_py.html) | the alignment of a sequence of images and EBSD maps of one area, most distorted first and the ground truth last, one unfitted spatial transform per hop |
| [voteTable](voteTable_index_py.html) | MATLAB's table of votes: a row per grain, parentId the best variants of the grain and prob, fit or count their value, sorted best first |

### Functions

| [calcTraces](EBSD.calcTraces_py.html) | the traces of subregions of a map or of sets of grains, the direction their lamellae run along |
| [chainOrder](chainOrder_py.html) | the decomposition of an edge list into maximal chains, each walked end to end: the permutation that brings the edges into walk order, and per edge whether the walk enters it at its first (1) or second (2) vertex |
| [cleanUpPseudoSym](cleanUpPseudoSym_py.html) | the map corrected for a pseudo symmetry of one phase, detected by the tortuosity of its boundaries |
| [colorTriplet](colorTriplet_py.html) | a colour as an RGB triplet: a name of the order, or what matplotlib knows, or a triplet |
| [connectivity](connectivity_py.html) | connectivity(crit, ebsd, i, j) is crit.evaluate(ebsd, i, j): the connectivity of the pairs of neighbouring measurements |
| [cube2hex](EBSDhex.cube2hex_py.html) | the row and column (counted from 0) of the cells with cube coordinates x, y, z, NaN for a cell outside the grid |
| [decompose](decompose_py.html) | the spatial decomposition of a map into one cell around every pixel, the cell complex calcGrains builds the grains from |
| [EBSDsquare](EBSDsquare_py.html) | a map on a square grid from arrays in map shape, the rows of the array its rows of pixels |
| [edgeMap](mapImage.edgeMap_py.html) | the edge transform: how unlike its eight neighbours at padWidth pixels each pixel is, every channel contrast normalised over its 2nd to 98th percentile, a neighbour off the image differenced against zero |
| [hex2cube](EBSDhex.hex2cube_py.html) | the cube coordinates x, y, z of cells of a hexagonal grid, given by their row and column (counted from 0) or by their flat index |
| [imboxfilt](mapImage.imboxfilt_py.html) | a box filter of k pixels, or (rows, cols), odd: the window shrinks at the border and around a missing value, so a NaN padding neither spreads nor darkens the frame (MATLAB's own, movmean down the columns and then along the rows) |
| [latticeBasis](EBSD.latticeBasis_py.html) | the basis, the stencil and the spacing a cell polygon of four or six corners describes |
| [majorityVote](majorityVote_py.html) | the most frequent vote cast for every id |
| [mclComponents](mclComponents_py.html) | the components of a weighted graph by Markov clustering, MCL |
| [mergeRuns](mergeRuns_py.html) | every surviving head swallows the run of segments before it, so the boundary stays connected and keeps its length up to the straightening of the dissolved corners |
| [mustKeep](mustKeep_py.html) | the heads a coarsening may not dissolve: the end of an open chain is a junction and stays where it is, a vertex where the pair of grains changes is a corner of both grain polygons even where only two segments meet there, and a protected vertex is one another boundary over the same vertices still walks over |
| [neighbourBall](neighbourBall_py.html) | the offsets of the lattice reachable in that many steps over its stencil, or within a physical distance over as many steps as it takes to reach it |
| [phaseColorNames](phaseColorNames_py.html) | the colour of every phase of a list: the one its frame carries, else the next name of the order for an indexed phase, None for a not indexed one without a colour |
| [polygonMoments](polygonMoments_py.html) | the moments of the polygon of every outline: the area, the first and the second moments about the origin, summed over its loops |
| [rescale](mapImage.rescale_py.html) | the values of one or more images stretched to a common range |
| [sharedVertices](grain2d.sharedVertices_py.html) | the vertices both boundaries walk over: a vertex where an inner boundary ends on the outer one has degree two to either and would be dissolved, leaving the other hanging off a vertex its walk no longer reaches |
| [triplePoints](triplePoints_py.html) | the vertices where exactly three segments of three grains meet, with the grains, the segments and the angles the segments enclose |
| [xcfShift](xcfShift_py.html) | how far every part of one image moved against another, by phase correlation of tiles |

## Maps of volumes

### Classes

| [EBSD3](EBSD3_index_py.html) | the measurements of a volume: positions, rotations and phase ids of voxels with the list of the phases' frames and the properties of every measurement |
| [grain3Boundary](grain3Boundary_index_py.html) | the faces between the grains of a volume, triangles or polygons over the vertices allV, with the grains, voxels and phases on their two sides and the misrotation across: grains.boundary |
| [grain3d](grain3d_index_py.html) | the grains of a volume as closed polyhedra, given by the incidence I_GF of grains and the faces of a grain3Boundary: what calcGrains returns for a volume, the counterpart of grain2d |
| [neper](neper_index_py.html) | the interface to Neper, the tessellation program, one per session with its settings: the geometry, the morphology, the iterations and the file path the tessellation is written to |
| [voxelLattice](voxelLattice_index_py.html) | the lattice a volume is measured on: the origin, the translations d1, d2, d3 as the rows of D and the integer index of every voxel, voxel n at origin + ijk[n] @ D |

### Functions

| [calcGrains](EBSD.calcGrains_py.html) | the grains of a map, the pixels joined across every boundary the criterion keeps |
| [EBSD3square](EBSD3square_py.html) | a volume on its (n1, n2, n3) array of voxels, on a rectangular lattice |
| [orientFaces](orientFaces_py.html) | the grains with their faces turned consistently, the normals pointing out of every grain: the signs of I_GF and the sides of the boundary change, the corners do not |

## Analysis

### Classes

| [EBSDFilter](EBSDFilter_index_py.html) | the base of the denoising filters of a gridded EBSD map, which replace the orientation of every pixel by one computed from its neighbours: smooth(ebsd, F) |
| [embedding](embedding_index_py.html) | the isometric embedding of orientations into a Euclidean space: one matrix of components with a column per orientation, so that norm(e1 - e2) is a metric on the orientations modulo the crystal symmetry |
| [embeddingSpec](embeddingSpec_index_py.html) | the recipe of the embedding of a crystal frame: the identity image and the orthonormal basis of the space it moves in, built once per frame |
| [halfQuadraticFilter](halfQuadraticFilter_index_py.html) | the filter of Bergmann, Chan, Hielscher, Persch and Steidl: the data term and the regularisation each quadratic or an absolute value, and an absolute value keeps a step where a square blurs it |
| [infimalConvolutionFilter](infimalConvolutionFilter_index_py.html) | the field split into two, u = u1 + u2, one penalised in its differences and one in its Laplacian, which keeps both a step and a slope: the infimal convolution of first and second order total variation |
| [KuwaharaFilter](KuwaharaFilter_index_py.html) | the mean of the most homogeneous of the four quadrants of the window, which smooths within a grain and leaves a step where one is |
| [l1TVFilter](l1TVFilter_index_py.html) | the total variation filter of the orientations of a map, absolute in the data term and in the differences between neighbours, which smooths noise and keeps sharp steps |
| [meanFilter](meanFilter_index_py.html) | the mean of the neighbourhood, the fastest filter and the one that blurs a boundary most |
| [medianFilter](medianFilter_index_py.html) | the componentwise median of the neighbourhood, which takes a wild pixel out without pulling the boundary after it |
| [MLSSolver](MLSSolver_index_py.html) | the modified least squares solver of the pole figure inversion, an ODF as a weighted sum of unimodal components fitted to scattered pole figure intensities |
| [OptimalSampleResult](OptimalSampleResult_index_py.html) | OptimalSampleResult(nodes, weights, discrepancy, history, iterations, converged, reason, bandwidth) |
| [splineFilter](splineFilter_index_py.html) | the smoothing spline: the field of least \|u - f\|^2 + alpha \|L u\|^2, with L the Laplacian of the neighbour graph |
| [TaylorModel](TaylorModel_index_py.html) | the slip systems prepared for the Taylor solve: the distinct signed systems with their critical resolved shear stresses, the strain each shear produces and its spin |
| [zeroRangeMethod](zeroRangeMethod_index_py.html) | the zero range method of the pole figure inversion: where a pole figure vanishes, the ODF vanishes on every fibre through it |

### Functions

| [angularVelocityVector](velocityGradientTensor.angularVelocityVector_py.html) | the angular velocity of a velocity gradient, the axial vector of its antisymmetric part |
| [axisRatios](strainTensor.axisRatios_py.html) | the differences of the principal values, largest first |
| [birefringence](refractiveIndexTensor.birefringence_py.html) | the birefringence for light propagating along vprop, the difference of the two refractive indices, and the polarisation axes of the fast and the slow wave |
| [bulkModulus](complianceTensor.bulkModulus_py.html) | the bulk modulus of an isotropic polycrystal, the Voigt and Reuss bounds |
| [calcCluster](orientation.calcCluster_py.html) | the clusters of directions or orientations: one cluster id per element, counted from zero, and the centre of every cluster |
| [calcGBND](grain3Boundary.calcGBND_py.html) | the boundary normal distribution of a 3D boundary: the face normals in specimen coordinates weighted by area, with grains the normals in the crystal frame of the one phase, with moriRef the grain boundary character of the faces whose misorientation is near moriRef |
| [calcGBNDKernel](calcGBNDKernel_py.html) | the kernel of the inclination of a boundary plane about its trace, the one calcGBND convolves with |
| [calcKearnsFactor](calcKearnsFactor_py.html) | the Kearns factor, the mean squared alignment of a crystal direction with the specimen direction N |
| [calcLankford](calcLankford_py.html) | the Lankford coefficients, the R-values, of a sheet from its orientations or its ODF |
| [calcODF](calcODF_py.html) | an ODF reconstructed from pole figure intensities by the modified least squares method, with ghost correction and, on request, the zero range method |
| [calcODFIterative](calcODFIterative_py.html) | an ODF reconstructed from pole figures by a ladder of kernel widths, from wide to the target, each step started from the last |
| [calcShearStress](stressTensor.calcShearStress_py.html) | the shear stress the stress tensor resolves on each slip system, and the index of the system carrying the largest one |
| [calcTaylor](strainTensor.calcTaylor_py.html) | the Taylor factor, the shears of the slip systems and the plastic spin of a strain the crystal accommodates by slip alone |
| [calcTensor](EBSD.calcTensor_py.html) | the texture average of a single crystal tensor over an ODF, a list of orientations or a map |
| [CauchyStrain](deformationGradientTensor.CauchyStrain_py.html) | the Cauchy (small) strain of a deformation gradient, its symmetric part less the identity |
| [classix](classix_py.html) | CLASSIX, fast and explainable clustering based on sorting: one cluster label per row of X, counted from zero |
| [deviatoric](strainTensor.deviatoricStrain_py.html) | the deviatoric part, the tensor less a third of its trace on the diagonal |
| [deviatoricStrain](strainTensor.deviatoricStrain_py.html) | the deviatoric part, the tensor less a third of its trace on the diagonal |
| [deviatoricStress](strainTensor.deviatoricStrain_py.html) | the deviatoric part, the tensor less a third of its trace on the diagonal |
| [dislocationDensity](curvatureTensor.dislocationDensity_py.html) | a diagonal entry of the density is minus the sum of the other two diagonal entries of the curvature, so the entry a map cannot measure drops out of alpha_33 |
| [doEulerStep](doEulerStep_py.html) | the orientations or the density after unit time in n Euler steps under the rotation velocity field spin |
| [double](S1Grid.double_py.html) | the coordinates of the images of an embedding in their orthonormal basis, one row per orientation, e.double() |
| [energyVector](stiffnessTensor.energyVector_py.html) | the energy velocity of a lossless elastic plane wave, the vector C_ijkl p_j n_k p_l / (rho v) |
| [equivalentStrain](strainTensor.equivalentStrain_py.html) | the von Mises equivalent strain, sqrt(2/3 e:e) of the deviatoric strain e |
| [equivalentStress](stressTensor.equivalentStress_py.html) | the von Mises equivalent stress, sqrt(3/2 s:s) of the deviatoric stress s |
| [fitDislocationSystems](curvatureTensor.fitDislocationSystems_py.html) | rho, factor = fitDislocationSystems(kappa, dS): the dislocation densities that account for the curvature with the least total line energy, one signed density per system, NaN where no combination of them reproduces it |
| [GreenStrain](deformationGradientTensor.GreenStrain_py.html) | the Green-Lagrange strain of a deformation gradient, (F^T F - I) / 2 |
| [hashinShtrikmanBounds](complianceTensor.hashinShtrikmanBounds_py.html) | the Hashin-Shtrikman bounds of the isotropic moduli, the tightest pair for a quasihomogeneous polycrystal: (lower=(K, G), upper=(K, G)), each the extreme estimate over the references whose residual is semidefinite, found on the boundary of that convex set by a golden section over the shear and a bisection over the bulk modulus |
| [HashinShtrikmanModulus](stiffnessTensor.HashinShtrikmanModulus_py.html) | the Hashin-Shtrikman estimate of the isotropic moduli of a polycrystal from a reference medium K0, G0, over arrays of references: the bulk and shear moduli, and the definiteness of C - C0 (1 where the estimate is a lower bound, -1 an upper one, 0 where it is neither and the moduli are NaN) |
| [isotropicShearModulus](isotropicShearModulus_py.html) | the isotropic shear modulus of a polycrystal, the Voigt, Reuss and Hill bounds |
| [knnRadius](knnRadius_py.html) | the median distance to the k-th nearest neighbour of a subsample, the radius CLASSIX suggests |
| [linearCompressibility](complianceTensor.linearCompressibility_py.html) | the linear compressibility, the length change per pressure in the direction v, S_ijkk v_i v_j |
| [linearProgram](linearProgram_py.html) | the minimiser of a linear program in standard form, min c.x under A x = b, x >= 0 |
| [linprogCentre](linprogCentre_py.html) | the solutions of many linear programs min c.x under A x = y, x >= 0 at once, each the analytic centre of its optimal face |
| [maxStrain](maxStrain_py.html) | the magnitude of a strain is its largest principal value, which the Taylor factor is measured against |
| [meanStress](stressTensor.meanStress_py.html) | the mean stress, a third of the trace of the stress tensor |
| [octahedralStrain](strainTensor.octahedralStrain_py.html) | the octahedral shear and normal strain, from the principal stretches |
| [opticalAxis](refractiveIndexTensor.opticalAxis_py.html) | the optical axes of a refractive index tensor, the directions along which the two refractive indices coincide and the birefringence vanishes |
| [optimalSample](S2Fun.optimalSample_py.html) | the sample of n nodes that reproduces a density best up to the bandwidth, on the sphere or the rotation group |
| [PoissonRatio](complianceTensor.PoissonRatio_py.html) | the Poisson ratio of the tension direction x and the transverse direction y, minus the transverse over the longitudinal strain, -S_ijkl x_i x_j y_k y_l / S_mnop x_m x_n x_o x_p |
| [refractiveIndex](refractiveIndexTensor.refractiveIndex_py.html) | the refractive index in the direction v, n_ij v_i v_j |
| [rotationRate](velocityGradientTensor.rotationRate_py.html) | the rotation rate of a velocity gradient, the length of its angular velocity vector |
| [SchmidFactor](mtex.SchmidFactor_py.html) | the Schmid factor of slip systems under a stress tensor or a uniaxial tension |
| [setDouble](setDouble_py.html) | setDouble(e, d) is e.setDouble(d): the embedding with the coordinates d, one row per image |
| [shearModulus](complianceTensor.shearModulus_py.html) | the shear modulus of the plane h and the shear direction u, 1 / (4 S_ijkl h_i u_j h_k u_l) |
| [SO3FunSBF](SO3FunSBF_py.html) | the shear banding function of a slip system and a strain (rate) tensor: the closed form ODF of Schaeben that a single slip system produces under that strain, as a handle |
| [spectralTransmission](refractiveIndexTensor.spectralTransmission_py.html) | the colour of white light passing a birefringent plate between a polariser and an analyser, as a thin section shows it under the microscope |
| [spin](spin_py.html) | the spin tensor of a velocity gradient, its antisymmetric part |
| [spinTensorOf](spinTensorOf_py.html) | the spin tensor of an axial vector v, the antisymmetric tensor W with W u = v x u |
| [strainRate](velocityGradientTensor.strainRate_py.html) | the symmetric part of a velocity gradient is the strain rate, the antisymmetric one the spin, whose axial vector is the angular velocity |
| [velocity](complianceTensor.velocity_py.html) | the speeds of the three elastic plane waves in a direction and their polarisations, the eigenvalues and eigenvectors of the Christoffel tensor |
| [volumeCompressibility](complianceTensor.volumeCompressibility_py.html) | the volume change per pressure, S_iikk |
| [vorticity](velocityGradientTensor.vorticity_py.html) | the vorticity of a velocity gradient, its rotation rate over the magnitude of its strain rate |
| [YoungsModulus](complianceTensor.YoungsModulus_py.html) | Young's modulus in the direction v, the reciprocal of S_ijkl v_i v_j v_k v_l |

## Import and export

### Classes

| [EBSDFileInfo](EBSDFileInfo_index_py.html) | what an EBSD file says about itself from its header alone: format, vendor, phases, properties, data sets, grid, step and Euler correction, as inspectEBSD returns it |

### Functions

| [buildImportWizardScript](buildImportWizardScript_py.html) | the Python script of an import as the import wizard sets it up: the file, the plotting convention, the correction of the Euler angles, the phases and a first plot |
| [cifFiles](cifFiles_py.html) | the names of the CIF files shipped with MTEX, sorted |
| [cprintf](cprintf_py.html) | MATLAB's cprintf(d, '-Lc', labels, '-Lr', rows): a matrix printed as a table, a vector as one row |
| [DubnaGrid](DubnaGrid_py.html) | the specimen grid of the Dubna goniometer: 19 rings five degrees apart, each ring of 72 azimuths five degrees apart, the last at 355 degree, starting where the instrument starts it |
| [ebsdFiles](ebsdFiles_py.html) | the EBSD files of a folder by their extension, sorted, a .crc beside its .cpr left out |
| [export](SO3Fun.export_py.html) | write a map to the file the extension names |
| [exportODF](exportODF_py.html) | export(odf, fname, ...): the function on a grid, as its components, or as a VPSC sample |
| [exportOrientation](exportOrientation_py.html) | orientations written to a text file, as a table of Euler angles or quaternions with further columns, or as a VPSC texture file |
| [exportPoleFigure](PoleFigure.export_py.html) | write every pole figure of a data set to its own three column table |
| [exportVector3d](exportVector3d_py.html) | write directions as a text table with a line of column names |
| [h5Image](h5Image_py.html) | the pixels of a picture an EBSD file holds, by an entry of ebsd.meta['images'] |
| [h5ImageIndex](h5ImageIndex_py.html) | the pictures a file holds, as an index and not as pixels: a vendor writes its electron images beside the map, and one Oxford file carries a dozen of three megapixels each, so what the map keeps is where they are and what shape they have |
| [inspectEBSD](inspectEBSD_py.html) | what an EBSD file says about itself, read from its header alone |
| [isEBSDFile](isEBSDFile_py.html) | whether a name is an EBSD file by its extension |
| [loadCall](loadCall_py.html) | the one line load of a file, for the clipboard |
| [loadCIF](loadCIF_py.html) | the crystal frame a CIF file describes: its space group, cell and mineral |
| [loadEBSD](loadEBSD_ang_py.html) | the map a file holds, read by the loader its extension names |
| [loadEBSD3](loadEBSD3_py.html) | the EBSD map of a volume read from a file, the voxel data of a DREAM.3D file, the LabDCT volume of an xnovo file, or a stack of 2D maps |
| [loadGrains3d](loadGrains_Dream3d_py.html) | the 3D grains read from a file, the surface mesh of a DREAM.3D file or the polyhedra of a 3D Neper tessellation |
| [loadNeperTess](loadNeperTess_py.html) | the parts of a Neper tessellation: the dimension, the vertices, the faces as polygons of vertex indices, the orientations, the crystal system, and the incidence of the polyhedra and the faces (3D) or the cell ids (2D) |
| [loadODF](loadODF_VPSC_py.html) | the ODF a file holds, the interface told by its content: a VPSC texture file or a generic table |
| [loadOrientation](loadOrientation_py.html) | the orientations a text table holds, and the other columns it names |
| [loadPHL](loadPHL_py.html) | a Bruker phase list: XML with one TEBSDExtPhaseEntry per phase, the space group by its number, the cell under Cell/Dim and Cell/Angles, the colour as r,g,b |
| [loadPoleFigure](PoleFigure.load_py.html) | the pole figures a file holds, or the files of a list, read by their format |
| [loadTensor](loadTensor_py.html) | the tensor a text file holds: the last block of numeric rows, the density on the line after the word density, the crystal frame given positionally |
| [loadVector3d](loadVector3d_py.html) | the directions a text table holds, read by the names of its coordinate columns, and the other columns it names |
| [mtexCifPath](mtexCifPath_py.html) | the directory of the CIF files shipped with MTEX, where crystalFrame.load looks up a name |
| [mtexdata](mtexdata_py.html) | the sample data of the documentation, read from the data repository |
| [mtexdatafile](mtexdatafile_py.html) | the file of a sample data set, or its files, fetched on first use |
| [mtexDataPath](mtexDataPath_py.html) | the directory the sample data are fetched into: the preference mtexDataPath, else the environment variable MTEX_DATA, else ~/.mtex/data |
| [openDoc](openDoc_py.html) | a documentation page as a script to run section by section, or the reference page of a function in the browser |
| [string2Miller](string2Miller_py.html) | the Miller indices a file name or a header line spells: four digits with optional signs, else three |

## Plotting

### Classes

| [alphaSections](alphaSections_index_py.html) | sections of constant alpha in the Matthies (ZYZ) convention |
| [axisAngleColorKey](axisAngleColorKey_index_py.html) | the rotation from a reference orientation as a colour: its axis in the specimen frame through the key of the whole sphere, its angle through the saturation (Thomsen et al.) |
| [axisAngleSections](axisAngleSections_index_py.html) | sections of constant rotation angle, each on the axis sector the region allows there |
| [BungeColorKey](BungeColorKey_index_py.html) | the three Euler angles of the representative inside the Euler box, scaled to red, green and blue |
| [colorGrid](colorGrid_index_py.html) | a direction key evaluated once on a cube map of the sphere at the resolution, its colours then looked up at the node nearest a direction |
| [directionColorKey](directionColorKey_index_py.html) | a colour key turning directions into colours |
| [eangleProjection](eangleProjection_index_py.html) | the equal angle, stereographic, projection: r = tan(theta / 2) |
| [eareaProjection](eareaProjection_index_py.html) | the equal area, Schmidt, projection: r = 2 sin(theta / 2) |
| [edistProjection](edistProjection_index_py.html) | the equidistant projection: r = theta |
| [eulerSections](eulerSections_index_py.html) | sections of constant Euler angle, the first or the third of a convention |
| [gammaSections](gammaSections_index_py.html) | sections of constant gamma in the Matthies (ZYZ) convention |
| [gnomonicProjection](gnomonicProjection_index_py.html) | the gnomonic projection: r = tan(theta), great circles drawn as straight lines |
| [HKLDirectionKey](HKLDirectionKey_index_py.html) | the HKL vendor key on the Laue group: the three primaries blended linearly over the polar angle and the azimuth of the fundamental sector |
| [HSVDirectionKey](HSVDirectionKey_index_py.html) | MTEX's default direction key: white at the centre of the fundamental sector, the primary colours at its vertices |
| [ipfColorKey](ipfColorKey_index_py.html) | an orientation coloured by the crystal direction it carries along a specimen direction |
| [ipfHKLKey](ipfHKLKey_index_py.html) | the inverse pole figure key of HKL Channel 5, the HKLDirectionKey on the Laue group |
| [ipfHSVKey](ipfHSVKey_index_py.html) | the MTEX default inverse pole figure key, white at the centre of the sector |
| [ipfSpotKey](ipfSpotKey_index_py.html) | single spots of the inverse pole figure in their own colours |
| [ipfTSLKey](ipfTSLKey_index_py.html) | the inverse pole figure key of TSL / OIM, the TSLDirectionKey on the Laue group |
| [lines3d](lines3d_index_py.html) | line segments (k, 2, 3), a colour per segment (k, 3) or one for all, their width |
| [mapPlot](mapPlot_index_py.html) | the map plot of one axes: the axes, the layout of the plane on the screen, the unit |
| [mesh3d](mesh3d_index_py.html) | polygons over vertices: V (n, 3), the faces as ptr/idx (face k is idx[ptr[k]:ptr[k+1]]), a colour per face (m, 3) in [0, 1] or one colour for all, the face and edge transparency |
| [mtexFigure](mtexFigure_index_py.html) | a figure of MTEX plots: equally sized axes in a grid, with colour bars and legends that follow them |
| [ODFSections](ODFSections_index_py.html) | sections through orientation space |
| [orientationColorKey](orientationColorKey_index_py.html) | a colour key turning orientations into colours |
| [orthographicProjection](orthographicProjection_index_py.html) | the orthographic projection: r = sin(theta) |
| [PatalaColorKey](PatalaColorKey_index_py.html) | the misorientation key of Patala, Mason and Schuh for m-3m, m-3, mmm, 4/mmm and 6/mmm |
| [pfSections](pfSections_index_py.html) | pole figure sections: the pole figure of h1, split by the twist of h2 about it |
| [phi1Sections](phi1Sections_index_py.html) | sections of constant phi1 in the Bunge convention |
| [phi2Sections](phi2Sections_index_py.html) | sections of constant phi2 in the Bunge convention, MTEX's default ODF sections |
| [picture3d](picture3d_index_py.html) | a picture on a rectangle in space: RGBA (rows, cols, 4) in [0, 1] with its first row at the bottom, and the corners of the rectangle at the bottom left, the bottom right, the top left and the top right |
| [plainProjection](plainProjection_index_py.html) | rho over theta in degrees: the polar angles of the frame itself, no convention |
| [planarColorKey](planarColorKey_index_py.html) | a colour key of two properties: hue by the first, saturation by the second |
| [points3d](points3d_index_py.html) | markers at positions (k, 3), a colour per marker (k, 3) or one for all, their size in points |
| [scene3d](scene3d_index_py.html) | the items of a three dimensional plot and the plotting convention it is seen by |
| [sigmaSections](sigmaSections_index_py.html) | pole figure sections of the c axis split by the twist sigma of the a axis about it, the sections MATLAB's sigma sections draw |
| [slices3d](slices3d_index_py.html) | three orthogonal slices of a voxel volume: the colours (nx, ny, nz, 3) in [0, 1], the voxels shown (nx, ny, nz), the centre of the first voxel, the steps of the three voxel axes as the rows of D, and the voxel index of each slice, None for a slice not shown |
| [spacePlot](spacePlot_index_py.html) | a plot in space: the 3D axes, the frame it is drawn in, the mappable of its colours |
| [spectralTransmissionColorKey](spectralTransmissionColorKey_index_py.html) | the colour of a thin section of an anisotropic crystal between polariser and analyser: light along the propagation direction of the specimen through a plate of the given thickness in nanometres |
| [sphericalPlot](sphericalPlot_index_py.html) | the spherical plot of one axes: its projection, boundary, grid and labels |
| [sphericalProjection](sphericalProjection_index_py.html) | a projection of the sphere to the plane, restricted to a region and a hemisphere |
| [spotColorKey](spotColorKey_index_py.html) | each centre orientation given its colour, fading to white with the kernel of the disorientation to it |
| [spotDirectionKey](spotDirectionKey_index_py.html) | each centre, a crystal direction, given its colour, fading to white with the kernel of the angular distance to the nearest symmetric equivalent |
| [TSLDirectionKey](TSLDirectionKey_index_py.html) | the vendors' keys, both on the Laue group whatever the frame carries (MATLAB TSLDirectionKey, HKLDirectionKey): TSL reads the polar coordinates of the sector from its centre, unfolded and without the hue correction |

### Functions

| [annotate](annotate_py.html) | annotate: markers on every axes of the current figure, black by default |
| [annotateSection](annotateSection_py.html) | annotate(ori) on a section plot: every orientation marked in the section it lies in |
| [arrow3d](vector3d.arrow3d_py.html) | solid arrows in space, from the origin, or from anchor, to the tips v |
| [arrows3d](arrows3d_py.html) | arrows in space as the items of a scene3d, a line for the shaft and a cone for the head |
| [axisAnglePoints](axisAnglePoints_py.html) | the orientations as points of axis angle space, each brought into the fundamental region of its frames first: axis times angle, in radians, shape (n, 3) |
| [black2whiteColorMap](black2whiteColorMap_py.html) | the black2white colour map, as MATLAB's black2whiteColorMap returns it |
| [blue2redColorMap](blue2redColorMap_py.html) | the blue2red colour map, as MATLAB's blue2redColorMap returns it |
| [boundaryMesh](boundaryMesh_py.html) | the faces of a 3D grain boundary as a polygon mesh of a scene3d |
| [boundaryPolyline](boundaryPolyline_py.html) | a boundary as one polyline, the chains in walk order separated by a NaN row |
| [boundarySegments](boundarySegments_py.html) | the two vertices of every segment, shape (n, 2, 2) |
| [circle](vector3d.circle_py.html) | a circle on a spherical plot: the small circle of the opening angle about a direction, the great circle by default |
| [contour](S2Fun.contour_py.html) | contour(sF), contour(v), contour(v, data): contour lines |
| [contourf](S2Fun.contourf_py.html) | contourf(sF), contourf(v), contourf(v, data): filled contours |
| [contourLevels](contourLevels_py.html) | n levels between the extremes, logarithmic on request: the levels of a contour plot |
| [drawMatplotlib](drawMatplotlib_py.html) | the scene on matplotlib's 3D axes, the faces sorted by depth as matplotlib does |
| [dynamicMarkerSize](dynamicMarkerSize_py.html) | the size of the markers of a plot of n points |
| [ellipse](ellipse_py.html) | an ellipse on the spherical plots of a figure, about a direction and turned as a rotation says |
| [ellipsoids3d](ellipsoids3d_py.html) | ellipsoids as one polygon mesh of a scene3d |
| [exportHTML](exportHTML_py.html) | the scene of the current figure written as an interactive three.js page, which a browser rotates and zooms |
| [faceColors](faceColors_py.html) | the colour of every face of every crystal shape, as plot(cS) paints them |
| [frameAxes](frameAxes_py.html) | the axes a frame names, as unit directions with their labels: X, Y, Z of a specimen frame, the lattice axes a, b, c of a crystal frame |
| [frameOnScreen](frameOnScreen_py.html) | the (right, up, towards the viewer) components of the axes of the frame in the picture of a map: the plane's coordinates taken to the screen by the layout, and the normal towards the viewer, who looks from the other side of the plane when the layout flips it |
| [gcm](gcm_py.html) | the current mtexFigure, None before the first plot |
| [gcs](gcs_py.html) | the scene of the current axes of a figure, the 3D scene a plot of a volume, of 3D grains or of maps in several planes draws into |
| [grainMesh](grainMesh_py.html) | the faces of 3D grains as a polygon mesh of a scene3d, coloured by grain |
| [grainPolygons](grainPolygons_py.html) | the loops of a grain as a list of rings, the outer one first, each (m, 2) |
| [hasPyVista](hasPyVista_py.html) | whether PyVista can be imported, the renderer of the 3D scenes |
| [hasSmoothKey](hasSmoothKey_py.html) | a group whose sector neither is bounded by its own mirrors nor folds onto such a half has no continuous one to one key |
| [histogram](SO3Fun.hist_py.html) | histogram(grains), histogram(grains, prop, bins): the area weighted distribution of a grain property as one histogram per indexed phase, drawn over each other, or with grouped=True side by side (MATLAB's hist) |
| [hold](hold_py.html) | hold on: the next plot goes into the current axes |
| [hsl2hsv](hsl2hsv_py.html) | the HSV coordinates of colours given in HSL, as three arrays h, s, v |
| [hsv2rgb](hsv2rgb_py.html) | the RGB colours of HSV coordinates, three arrays of any common shape, as (..., 3) in [0, 1] |
| [ind2color](ind2color_py.html) | the colour of the index i in MTEX's colour order, counting from 0 (MATLAB counts from 1) |
| [inversePoles](inversePoles_py.html) | the inverse poles: the crystal directions that lie along the specimen direction r, over the distinct equivalents of r under the specimen group |
| [ipfColors](ipfColors_py.html) | the colour of every measurement of a map, or of every grain, each phase by its own inverse pole figure key |
| [is3dMap](is3dMap_py.html) | whether x is a map of a volume: 3D grains, their boundary or an EBSD3 map |
| [isLower](sphericalRegion.isLower_py.html) | whether the region lies within the hemisphere into the screen of the convention pC |
| [isUpper](sphericalRegion.isUpper_py.html) | whether the region lies within the hemisphere out of the screen of the convention pC |
| [keyLegend](keyLegend_py.html) | the inverse pole figure key of every indexed phase in a map, drawn in insets to the right of the map |
| [keyResolution](keyResolution_py.html) | the step a key of that many pixels is meshed at: about two pixels to a quad over a sector some ninety degrees across, never finer than a key drawn for a page nor coarser than the eye would catch |
| [LaboTeXColorMap](LaboTeXColorMap_py.html) | the LaboTeX colour map, as MATLAB's LaboTeXColorMap returns it |
| [legend](legend_py.html) | a legend: of every artist a displayName named, or naming the curves of the current axes |
| [line](rotation.line_py.html) | a polyline in the coordinates of the current map, drawn under its layout, MATLAB's line |
| [logAxis](logAxis_py.html) | both axes of a plot logarithmic, a decade of the same length on either |
| [makeSphericalProjection](makeSphericalProjection_py.html) | the charts a spherical plot is drawn on, the projection of the region its data cover |
| [mapAliases](mapAliases_py.html) | the style keywords of a map plot, checked for their spelling |
| [mapCells](mapCells_py.html) | the corners of every cell of a map, shape (n, m, 2), on the screen |
| [mapExtent](mapExtent_py.html) | the extent of what a map plot has to show, on the screen: (xlo, xhi, ylo, yhi) |
| [mapLayout](mapLayout_py.html) | the layout a convention asks for: the 2 x 2 matrix taking the in-plane coordinates of a map to the screen, east to the right and north up |
| [mapPicture](mapPicture_py.html) | the picture of two dimensional map plots on the rectangle of the plane they lie in, to be shown in a 3D scene |
| [mapPoints](mapPoints_py.html) | the measurements as points on the screen |
| [mapRaster](mapRaster_py.html) | the picture a map on a rigid lattice is drawn as: the rectangle its cells span and, for every pixel, the measurement whose cell covers it or -1 where none does, as an array of shape (ny, nx) with the first row at the bottom |
| [mapValues](mapValues_py.html) | the value or the colour of every measurement or grain, and whether it is a value a colour map turns into colours: what a map plot draws, before it is drawn |
| [maxAngles](maxAngles_py.html) | the largest rotation angle inside the region about every axis of an (n, 3) array, zero where the axis lies outside the sector the region is cut down to: the bound dot(q, N_i) <= 0 at q = (cos(w/2), sin(w/2) v) reads tan(w/2) dot(v, a_i) <= tan(w_i/4) |
| [millerLabel](millerLabel_py.html) | a direction of a crystal frame as its rounded indices, the direct basis first and the reciprocal one if that does not round, in the brackets of one direction |
| [mtexColorbar](mtexColorbar_py.html) | a colour bar per axes of the current figure, or one when the ranges agree |
| [mtexColorMap](mtexColorMap_py.html) | the colour map of the current figure, or of one figure or axes |
| [mtexTitle](mtexTitle_py.html) | a title over an axes |
| [newMtexFigure](newMtexFigure_py.html) | a new mtexFigure laid out for n axes, which becomes the current one |
| [newODFSectionPlot](newODFSectionPlot_py.html) | the sections a plot uses: phi2 sections against a specimen, axis angle sections between two crystals, or the kind named (MATLAB newODFSectionPlot) |
| [nextAxis](nextAxis_py.html) | the axes the next plot goes into: the next of the current figure, or the one given by its number or its row and column |
| [num2rgb](num2rgb_py.html) | the colours a colour map gives those numbers, MATLAB's num2rgb |
| [pcolor](Miller.smooth_py.html) | pcolor(sF), pcolor(v), pcolor(v, data): a coloured surface |
| [phaseColor](phaseColor_py.html) | the colour a phase is drawn in: the one its frame carries, else the next of MATLAB's order for an indexed phase, white for a not indexed one without a colour |
| [phaseLegend](phaseLegend_py.html) | the legend of the phases present in a map or grains, one patch per phase in its colour, a not indexed phase only when it was given a colour of its own |
| [phasePalette](phasePalette_py.html) | the colour of every phase of a list |
| [plot](S1Grid.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plot3d](S2Fun.plot3d_py.html) | plot3d(v), plot3d(v, data), plot3d(sF), plot3d(vF), plot3d(oR), plot3d(ori), plot3d(odf) |
| [plotAngleDistribution](plotAngleDistribution_py.html) | the distribution of the misorientation angles: a histogram of a list of misorientations, a curve of a misorientation distribution function or of two random phases |
| [plotAxisDistribution](plotAxisDistribution_py.html) | the distribution of the misorientation axes, in the fundamental sector of the symmetry the two frames share |
| [plotBoundary](grainBoundary.plot_py.html) | the grain boundary segments, in one colour or coloured segment by segment |
| [plotDiff](PoleFigure.plotDiff_py.html) | the difference between measured pole figures and recalculated ones, or two measurements, drawn as pole figures of the error |
| [plotEBSD](EBSD.plot_py.html) | a spatial EBSD map, coloured by phase, by a value, by orientation or by colours given |
| [plotEllipse](plotEllipse_py.html) | ellipses drawn into the map that is held, one per centre |
| [plotEllipsoid](plotEllipsoid_py.html) | ellipsoids with the half axes a, b, c about their centres, in a 3D scene |
| [plotFibre](SO3Fun.plotFibre_py.html) | the ODF along the fibre f, as a line over the angle along the fibre |
| [plotFibreSection](plotFibreSection_py.html) | a fibre on the current section plot, as a chain of dots through the sections it passes |
| [plotGrains](grain2d.plot_py.html) | the grains of a map as polygons, coloured by phase, by a value or by orientation, with their boundaries on top |
| [plotHKL](crystalSymmetry.plotHKL_py.html) | the low index directions <100>, <110>, <111> of a crystal with all their symmetric equivalents, labelled by their indices |
| [plotInnerDirection](crystalShape.plotInnerDirection_py.html) | a crystal direction drawn as an arrow from the centre of a crystal shape to its surface |
| [plotInnerFace](crystalShape.plotInnerFace_py.html) | the section of a crystal shape by a lattice plane through its centre |
| [plotIPF](SO3Fun.plotIPDF_py.html) | inverse pole figures, one per specimen direction: of an ODF or of a list of orientations |
| [plotKernel](plotKernel_py.html) | a kernel on the sphere as a curve over the angle in degree, into the held axes or a new figure |
| [plotKey](plotKey_py.html) | a colour key drawn as the colours it gives the directions of its sector, an inverse pole figure key as its direction key |
| [plotKeySections](plotKeySections_py.html) | plot of an orientation colour key, its colours over the sections of orientation space |
| [plotPF](SO3Fun.plotPDF_py.html) | pole figures, one per crystal direction: of an ODF, of a list of orientations or of a measured PoleFigure |
| [plotPlane](plane3d.plot_py.html) | planes in space drawn as polygons, each clipped by the bounds of the 3D axes |
| [plotRegion](sphericalRegion.plot_py.html) | the outline of a spherical region on the charts of the current figure, or of a new one |
| [plotRGB](plotRGB_py.html) | three functions on the sphere drawn as the red, green and blue channels of one surface, their values clipped to [0, 1] |
| [plotS2Grid](plotS2Grid_py.html) | the regular grid of directions a spherical plot samples its chart at |
| [plotSection](S2Fun.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [plotSections](plotSections_py.html) | the empty charts of a section plot, one per section, with the reference field of every section |
| [plotSector](plotSector_py.html) | the sector of the frame's group an inverse pole figure shows, that of the Laue group for axes, turned as MATLAB draws it for 321 |
| [plotSeismicVelocities](stiffnessTensor.plotSeismicVelocities_py.html) | the overview of the seismic wave velocities of a stiffness tensor, six pole figures |
| [plotSlipSystem](crystalShape.plotSlipSystem_py.html) | a slip system drawn inside a crystal shape: the slip plane through the centre with the slip direction as an arrow in it |
| [plotSO3Kernel](plotSO3Kernel_py.html) | plot(psi): the value of a kernel on SO(3) against the rotation angle, -180 to 180 degree |
| [plotSpectrum](S1FunHarmonic.plotSpektra_py.html) | the Chebyshev coefficients of a kernel, or the harmonic power of a function, per degree |
| [plotSymmetry](plotSymmetry_py.html) | the elements of the point group of a frame drawn on the upper hemisphere, as the international tables draw them |
| [plotTriplePoints](triplePointList.plot_py.html) | the triple points of a boundary network as circles, open or filled by a value |
| [polarAxes](polarAxes_py.html) | the polar axes a polar plot draws into |
| [polarCoordinates](sphericalRegion.polarCoordinates_py.html) | polar coordinates of a region (MATLAB @sphericalRegion/polarCoordinates), which is what a colour key is built on: the radius is one at the centre and zero on the boundary, taken along the great circle through the centre, and the azimuth is measured about the centre from a reference direction and then equalised, so that a wide part of the sector takes as much of the turn as a narrow one and the vertices sit at equal angles |
| [poles](poles_py.html) | the poles of orientations: every orientation applied to every distinct equivalent of the crystal direction h, and every image of those under the specimen group |
| [pyvistaPlotter](pyvistaPlotter_py.html) | a PyVista plotter drawing a 3D scene, its camera set by the plotting convention |
| [quiver](EBSD.quiver_py.html) | arrows: tangent vectors at directions, a vector or axis field on the sphere, arrows at orientations in the sections of the current figure, or directions on a map or a volume |
| [quiver3d](S2AxisField.quiver3_py.html) | arrows in space: tangent vectors in orientation space, a field on the sphere or SO(3), or arrows at positions |
| [quiverMap](quiverMap_py.html) | arrows on a map: one per grain at its centroid, per measurement, or per boundary segment at its midpoint |
| [quiverSection](S2Fun.quiverSection_py.html) | arrows on a section plot: of a function on the sphere along one of its circles, or at orientations in the sections of orientation space |
| [quiverSectionField](quiverSectionField_py.html) | plot of a vector field on SO(3) as arrows in the sections of orientation space |
| [red2blueColorMap](red2blueColorMap_py.html) | the red2blue colour map, as MATLAB's red2blueColorMap returns it |
| [regionCenter](regionCenter_py.html) | the centre of a region (MATLAB @sphericalRegion/center): the pole of a single circle, the bisector of the two boundaries furthest apart for a lune, the barycentre of the vertices of a triangle, and the area centroid of anything larger |
| [regionLines](regionLines_py.html) | the parallels and meridians drawn on the surface, which is how a viewer reads its shape |
| [regionSurface](regionSurface_py.html) | the boundary of an orientation region in axis angle space: the sphere mesh pushed out to the largest angle about every axis, in radians, with the faces of the mesh |
| [regionWalls](regionWalls_py.html) | the walls of a region cut down to an axis sector: the plane of every boundary arc of the sector from the identity out to the surface, one polygon per arc |
| [renderImage](renderImage_py.html) | the scene drawn offscreen by PyVista, as a picture |
| [rgb2hsv](rgb2hsv_py.html) | MATLAB rgb2hsv, hsv2rgb and hsl2hsv on arrays of shape (..., 3) or three arrays |
| [rhoRange](sphericalRegion.rhoRange_py.html) | the azimuth interval of a region: the whole circle when a pole lies inside, otherwise the complement of the widest gap between the azimuths of its boundary |
| [saveFigure](saveFigure_py.html) | the figure written to a graphics file cropped to its content |
| [scaleBar](scaleBar_py.html) | how long a scale bar of a map should be, in the coordinates the map is drawn in, and how it reads: a round number near a tenth of the width, in the unit that keeps it readable |
| [scaleBarOn](scaleBarOn_py.html) | a scale bar in one corner of a map: a round length near a tenth of its width, written above the bar, and above it the axes of the specimen frame as they lie on the screen |
| [scatter](Miller.scatter_py.html) | directions or crystal directions drawn as markers on a spherical plot, coloured by data or labelled |
| [scatter3d](vector3d.scatter3d_py.html) | directions as markers on the sphere in space |
| [scatterXY](scatterXY_py.html) | markers at the coordinates of the current map, MATLAB's scatter of two coordinate lists |
| [sceneHTML](sceneHTML_py.html) | the scene as a standalone HTML page that draws it with three.js in the browser, turned and zoomed with the mouse |
| [sectionIndex](sectionIndex_py.html) | the section a coordinate falls in, or -1 when it falls beside every one: the distance to a section value taken over the period of the coordinate |
| [sectionTolerance](sectionTolerance_py.html) | the tolerance a section reaches: never more than half the gap to its neighbour |
| [sectorFolds](sectorFolds_py.html) | the folds of a group's sector, in the order they are applied |
| [setCamera](setCamera_py.html) | the 3D view of the current axes looking down how2plot.outOfScreen, with how2plot.north up |
| [setColorRange](setColorRange_py.html) | one colour range over every axes of the current figure ('equal'), each its own ('tight') or the one given as (lo, hi) |
| [setColorScale](setColorScale_py.html) | logarithmic or linear colours on every plot of the figure |
| [setView](plottingConvention.setView_py.html) | a polar axes turned as the plotting convention says, a 3D axes looking down its out of screen direction |
| [shapeOutlines](shapeOutlines_py.html) | the shapes seen along the normal of a plane, as polygons on the screen: the vertices in the coordinates of the plane under the layout, for the front faces |
| [shapesOnMap](shapesOnMap_py.html) | one crystal shape per grain of the shape's phase: rotated by the grain's mean orientation, scaled by the square root of its area and put at its centroid, as one list of shapes over the grains that take it, whose indices come with it |
| [show3d](show3d_py.html) | the scene of the current figure in an interactive PyVista window, rotated and zoomed with the mouse |
| [smallCircle](smallCircle_py.html) | the circle of directions at an angle about a direction, closed |
| [sphereColor](sphereColor_py.html) | the colour of a point of the colour sphere, the hue from the azimuth and the lightness from the radius |
| [sphereGridLines](sphereGridLines_py.html) | the small circles about the pole and the meridians, as polylines of directions |
| [sphereMesh](sphereMesh_py.html) | the unit sphere as a mesh: rings of constant polar angle joined by quads split into triangles, fans at the poles, every triangle wound so that its normal points outwards |
| [str2rgb](str2rgb_py.html) | str2rgb('salmon'): the RGB triplet of a colour name, MATLAB tools/str2rgb |
| [surf](Miller.surf_py.html) | a function on the sphere as a surface in space, the sphere pushed out to \|f\| and coloured by f |
| [switchUnit](switchUnit_py.html) | the same length in the unit that keeps its number between one and a thousand: the number, its unit and the factor it was multiplied by |
| [text](EBSD.text_py.html) | text at directions on the sphere, at the measurements or grains of a map, or at a point of the current axes |
| [triadGeometry](triadGeometry_py.html) | the reference frame indicator MTEX draws in the scale bar box, with the text height t as its unit: an arrow per axis that has a direction on screen, shortened by its tilt out of the plane, a circle for an axis leaving the plane with its label inside, crossed by four spokes when it points away from the viewer, and a label beside every arrow |
| [vega20](vega20_py.html) | n colours of vega's twenty categorical ones, repeated beyond twenty, an n x 3 array |
| [visibleFaces](visibleFaces_py.html) | the faces a viewer along view sees: those whose outward normal points at the viewer, a mask over the faces, one row per shape of a list |
| [volumeSlices](volumeSlices_py.html) | three orthogonal slices through the voxels of an EBSD volume as an item of a scene3d |
| [white2blackColorMap](white2blackColorMap_py.html) | the white2black colour map, as MATLAB's white2blackColorMap returns it |
| [WhiteJetColorMap](WhiteJetColorMap_py.html) | the WhiteJet colour map, as MATLAB's WhiteJetColorMap returns it |
| [writeHTML](writeHTML_py.html) | the scene written to a file as an interactive HTML page, that of sceneHTML |
| [xlabel](xlabel_py.html) | a label under the current axes, which a spherical chart draws without axis lines, so matplotlib's own label would not show |
| [ylabel](ylabel_py.html) | a label left of an axes, written beside a spherical chart, which has no axis lines to carry matplotlib's own label |

## Import wizard

### Functions

| [importWizard](importWizard_py.html) | the import wizard: a window that browses the files of a folder, shows what a file holds, lets the phases, the conventions and the reference frames be chosen and writes the Python of the import |
{% endraw %}
