---
title: 'The class orientation'
sidebar: function_reference_sidebar
permalink: orientation_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation_index.html
status: Reference
---
{% raw %}
orientations and misorientations, rotations taking coordinates in the frame CS to coordinates
in the frame SS; a misorientation is one between two crystal frames

```python
orientation(rot, cs, ss)
orientation(a, b, c, d, cs, ss)      the quaternion coefficients
orientation(f, cs, points=1000)      points along a fibre
```

## Members

| | |
|---|---|
| [align](orientation.align_py.html) | the orientation two frames stand in by their axes: a point at v in frA sits at orientation.align(frA, frB) * v in frB |
| [angle](orientation.angle_py.html) | the rotational angle up to symmetry, of the orientation or of the misorientation to other |
| [axis](orientation.axis_py.html) | the rotational axis, of the representative in the fundamental region |
| [Bagaryatsky](orientation.Bagaryatsky_py.html) | the Bagaryatsky orientation relationship between cementite and ferrite, (100) \|\| (1-10) and [010] \|\| [111], a misorientation from the cementite frame csT to the ferrite frame csA |
| [Bain](orientation.Bain_py.html) | the Bain orientation relationship from fcc to bcc, (100) \|\| (100) and [010] \|\| [011], a misorientation from the parent frame csG to the child frame csA |
| [brass2](orientation.brass2_py.html) | the brass2 component, Bunge Euler angles (325°, 45°, 0°), in cs and the specimen frame |
| [brass](orientation.brass_py.html) | the brass component, Bunge Euler angles (35°, 45°, 0°), in cs and the specimen frame |
| [Burgers](orientation.Burgers_py.html) | the Burgers orientation relationship between bcc and hcp, (110) \|\| (0001) and [-11-1] \|\| [2-1-10], from csParent to csChild |
| [byAxisAngle](orientation.byAxisAngle_py.html) | the orientations of the rotations by omega about the axis v |
| [byEuler](orientation.byEuler_py.html) | the orientations of the Euler angles, Bunge's ZXZ convention unless a convention is named ('Bunge', 'ZXZ', 'Matthies', 'ZYZ', 'ABG', 'Roe', 'Kocks', 'Canova') |
| [byHomochoric](orientation.byHomochoric_py.html) | the orientations of homochoric vectors |
| [byMatrix](orientation.byMatrix_py.html) | the orientations of rotation matrices |
| [byMiller](orientation.byMiller_py.html) | the orientation that takes the crystal plane hkl to z and the crystal direction uvw to x |
| [byRodrigues](orientation.byRodrigues_py.html) | the orientations of Rodrigues vectors, the axes scaled by tan(omega/2) |
| [byScreenAlignment](orientation.byScreenAlignment_py.html) | the orientation between two frames that are drawn alike on the screen, from their plotting conventions |
| [calcAngleDistribution](orientation.calcAngleDistribution_py.html) | the distribution of the misorientation angle, MATLAB's order (density, omega):   calcAngleDistribution(cs1, cs2)   the uniform one, the area of the axis sector at each                                     angle times sin^2(omega/2), with mean one over the angles   calcAngleDistribution(mori)       a histogram of the disorientation angles in percent   calcAngleDistribution(f)          the uniform one times the mean of f over the axes at each                                     angle, found by sampling the axes with a count following                                     sin^2(omega/2) and keeping the rotations of minimal angle |
| [calcBinghamODF](orientation.calcBinghamODF_py.html) | the estimate from orientations: the eigen decomposition of the quaternion tensor of the sample projected to the fundamental region about its mean gives the axes, and the concentrations follow from the eigenvalues, by the large concentration approximation kappa_i = -1/(2 lambda_i) shifted to a smallest value of zero, or exactly by Newton on the moments |
| [calcCluster](orientation.calcCluster_py.html) | the clusters of directions or orientations: one cluster id per element, counted from zero, and the centre of every cluster |
| [calcKernel](orientation.calcKernel_py.html) | the de la Vallee Poussin kernel a density estimate of orientations or directions should use (MATLAB calcKernel): 'UCV', the default, and 'conservative' select from the degree energies of the sample and are bounded below by a noise floor unless noiseFloor=False (docs/plans/halfwidth.md) |
| [calcMIndex](orientation.calcMIndex_py.html) | the M-index: half the total variation between the angle distributions of the uniform and the uncorrelated misorientation distribution |
| [calcTensor](orientation.calcTensor_py.html) | the texture average of a single crystal tensor |
| [cat](orientation.cat_py.html) | the list of the operands, MATLAB's [r1, r2] |
| [char](orientation.char_py.html) | the orientation as text: the parallel planes and directions of a misorientation that low indices give exactly, else the Euler angles |
| [copper2](orientation.copper2_py.html) | the second copper component, (112)[11-1], Bunge (270, 35, 45) degrees, in cs and the specimen frame |
| [copper](orientation.copper_py.html) | (112)[-1-11] is Bunge (90, 35, 45), (112)[11-1] its twin (270, 35, 45) |
| [CS](orientation.CS_py.html) | the frame the orientation maps from, frameA: the crystal frame |
| [ctranspose](orientation.ctranspose_py.html) | the transpose of the leading axes |
| [cube](orientation.cube_py.html) | the cube component, Bunge Euler angles (0°, 0°, 0°), in cs and the specimen frame |
| [cubeND22](orientation.cubeND22_py.html) | the cubeND22 component, Bunge Euler angles (22°, 0°, 0°), in cs and the specimen frame |
| [cubeND45](orientation.cubeND45_py.html) | the cubeND45 component, Bunge Euler angles (45°, 0°, 0°), in cs and the specimen frame |
| [cubeRD](orientation.cubeRD_py.html) | the cubeRD component, Bunge Euler angles (0°, 22°, 0°), in cs and the specimen frame |
| [dot](orientation.dot_py.html) | the reduced dot product and the disorientation angle, over the groups of both frames |
| [dot_outer](orientation.dot_outer_py.html) | the reduced dot product and the disorientation angle, over the groups of both frames |
| [exp](orientation.exp_py.html) | the rotation a tangent vector at this reference points to, exp(ori, v) of MATLAB |
| [export_VPSC](orientation.export_VPSC_py.html) | write a map to the file the extension names |
| [fibreVolume](orientation.fibreVolume_py.html) | the share of crystal directions within a radius of h among those mapped to r: the mean of the inverse pole figure over the cap, times the cap's share of the sphere over the orbit of h the share of the tube about the fibre: the function averaged over the orientations that send h within the radius of r, u = g h on a cap about r and the turn about u equispaced, times the tube's share of orientation space over the copies of h under the group |
| [find](orientation.find_py.html) | the orientations of ori nearest to w up to symmetry: the pair (ind, d) of the nearest, the k nearest for an integer, or two sparse matrices of those within the radius eps |
| [fit](orientation.fit_py.html) | the orientation that maps the directions u best onto the directions v in the least squares sense, weighted by weights |
| [fundamentalRegion](orientation.fundamentalRegion_py.html) | the fundamental region of the orientations, the orientationRegion of the groups of CS and SS |
| [goss](orientation.goss_py.html) | the goss component, Bunge Euler angles (0°, 45°, 0°), in cs and the specimen frame |
| [GreningerTrojano](orientation.GreningerTrojano_py.html) | the Greninger-Trojano orientation relationship from fcc to bcc, by the Bunge Euler angles (2.7, 46.6, 7.5) degrees of the inverse, a misorientation from csG to csA |
| [id](orientation.id_py.html) | the identical orientations between the frames given, of the shape given (MATLAB's id and eye) |
| [inv](orientation.inv_py.html) | the inverse maps the other way: the frames swap |
| [invGoss](orientation.invGoss_py.html) | the invGoss component, Bunge Euler angles (90°, 45°, 0°), in cs and the specimen frame |
| [isclose](orientation.isclose_py.html) | equal up to the symmetry of the frames within the angular tolerance tol, between the same frames, MATLAB's eq |
| [isMisorientation](orientation.isMisorientation_py.html) | whether both frames are crystal frames, so the orientation is a misorientation |
| [KurdjumovSachs](orientation.KurdjumovSachs_py.html) | the Kurdjumov-Sachs orientation relationship from fcc to bcc, (111) \|\| (011) and [-101] \|\| [-1-11], a misorientation from the parent frame csG to the child frame csA |
| [load](orientation.load_py.html) | orientation.load(fname, cs, columnNames=['phi1', 'Phi', 'phi2']): the orientations of a text table |
| [log](orientation.log_py.html) | the tangent vector at the reference pointing to this orientation, the pair reduced by symmetry first so that its norm is angle(ori, ref) |
| [logm](orientation.logm_py.html) | logm(T) is T.logm(): the matrix logarithm |
| [map](orientation.map_py.html) | the smallest rotation taking u1 to v1, or the one taking u1 to v1 and u2 to v2 |
| [mean](orientation.mean_py.html) | the mean orientation, every element moved to the equivalent closest to the running mean before the quaternion mean is taken |
| [mtimes](orientation.mtimes_py.html) |  |
| [nan](orientation.nan_py.html) | the orientations of NaN coefficients between the frames given, of the shape given |
| [NishiyamaWassermann](orientation.NishiyamaWassermann_py.html) | the Nishiyama-Wassermann orientation relationship from fcc to bcc, (111) \|\| (011) and [11-2] \|\| [0-11], a misorientation from the parent frame csG to the child frame csA |
| [orientation](orientation.orientation_py.html) | orientations and misorientations, rotations taking coordinates in the frame CS to coordinates in the frame SS |
| [parents](orientation.parents_py.html) | the distinct relationships c p2c over the child group c: a child times them is every parent it can come from, MATLAB's parents |
| [Pitsch](orientation.Pitsch_py.html) | the Pitsch orientation relationship from fcc to bcc, (010) \|\| (101) and [101] \|\| [-111], a misorientation from the parent frame csG to the child frame csA |
| [PitschSchrader](orientation.PitschSchrader_py.html) | the Pitsch-Schrader orientation relationship between bcc and hcp, (011) \|\| (0001) and [100] \|\| [2-1-10], a misorientation from csParent to csChild |
| [PLage2](orientation.PLage2_py.html) | the PLage2 component, Bunge Euler angles (245°, 45°, 0°), in cs and the specimen frame |
| [PLage](orientation.PLage_py.html) | the PLage component, Bunge Euler angles (65°, 45°, 0°), in cs and the specimen frame |
| [plot](orientation.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plotIPDF](orientation.plotIPDF_py.html) | plotIPF(ori, r), plotIPF(ori, data, r), plotIPF(odf, r): the inverse pole figures of a list of orientations, the crystal directions along r as markers on the crystal sector, or of an ODF (MATLAB's plotIPDF) |
| [plotPDF](orientation.plotPDF_py.html) | plotPF(ori, h), plotPF(ori, data, h), plotPF(ori, h, points=100, contourf=True, antipodal=True), plotPF(odf, h), plotPF(pf) |
| [plotSection](orientation.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [Potter](orientation.Potter_py.html) | the Potter orientation relationship between bcc and hcp, (011) \|\| (01-11) and [11-1] \|\| [2-1-10], a misorientation from csParent to csChild |
| [project2EulerFR](orientation.project2EulerFR_py.html) | the Bunge Euler angles of the representative inside the Euler plotting box |
| [project2FundamentalRegion](orientation.project2FundamentalRegion_py.html) | the symmetric equivalents in the fundamental region, or those closest to the reference ref |
| [project](orientation.project_py.html) | the coefficients projected by P on the left and Q on the right, in place or into out, the source then only read: the compiled projection over the nonzeros where numba is there, the matrix products of _projectBlock otherwise and as its oracle |
| [QLage2](orientation.QLage2_py.html) | the QLage2 component, Bunge Euler angles (245°, 20°, 0°), in cs and the specimen frame |
| [QLage3](orientation.QLage3_py.html) | the QLage3 component, Bunge Euler angles (115°, 160°, 0°), in cs and the specimen frame |
| [QLage4](orientation.QLage4_py.html) | the QLage4 component, Bunge Euler angles (295°, 160°, 0°), in cs and the specimen frame |
| [QLage](orientation.QLage_py.html) | the QLage component, Bunge Euler angles (65°, 20°, 0°), in cs and the specimen frame |
| [quiver](orientation.quiver_py.html) | quiver(v, w), quiver(vF), quiver(ori, w): arrows at directions, a vector or axis field, or arrows at orientations in the sections of the current figure |
| [quiverSection](orientation.quiverSection_py.html) | quiver(ori, w) on a section plot: an arrow along w at every orientation, w a specimen direction per orientation |
| [rand](orientation.rand_py.html) | random orientations, uniformly distributed or within maxAngle of the identity |
| [round2Miller](orientation.round2Miller_py.html) | hkl, uvw = round2Miller(ori): the plane and the direction of the crystal along the specimen z and x, as their nearest low indices |
| [scatter](orientation.scatter_py.html) | scatter(ori), plot3d(ori), scatter(ori, 'Rodrigues'), scatter(ori, 'Euler'), scatter(ori, data, 'axisAngle'), scatter(ori, all=True) |
| [ShojiNishiyama](orientation.ShojiNishiyama_py.html) | the Shoji-Nishiyama orientation relationship from fcc to hcp, (111) \|\| (0001) and [10-1] \|\| [2-1-10], a misorientation from the parent frame csG to the child frame csE |
| [SR2](orientation.SR2_py.html) | the SR2 component, Bunge Euler angles (233°, 35°, 63°), in cs and the specimen frame |
| [SR3](orientation.SR3_py.html) | the SR3 component, Bunge Euler angles (307°, 35°, 27°), in cs and the specimen frame |
| [SR4](orientation.SR4_py.html) | the SR4 component, Bunge Euler angles (127°, 35°, 27°), in cs and the specimen frame |
| [SR](orientation.SR_py.html) | the SR component, Bunge Euler angles (53°, 35°, 63°), in cs and the specimen frame |
| [SS](orientation.SS_py.html) | the frame the orientation maps to, frameB: the specimen frame, or the second crystal frame of a misorientation |
| [symmetrise](orientation.symmetrise_py.html) | the symmetric equivalents l * o * r, shaped (numL * numR,) + shape |
| [times](orientation.times_py.html) |  |
| [transformReferenceFrame](orientation.transformReferenceFrame_py.html) | the same orientation with another crystal frame, both frames of a misorientation |
| [unique](orientation.unique_py.html) | the orientations with the equivalents within the tolerance removed, the first kept |
| [variants](orientation.variants_py.html) | the variants of a parent-to-child relationship, the distinct p2c * r over the parent group modulo the child group, or the child orientations of parents |
| [volume](orientation.volume_py.html) | the share of orientations within a radius of a centre: the mean of f on a local grid in the ball, times the ball's share of the fundamental region (its Haar measure times the number of symmetric copies, at most one) |

## Used on

[DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html), [FibreODFs](FibreODFs_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [RotationFibre](RotationFibre_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [orientation_index](orientation_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L61">source</a></font>
{% endraw %}
