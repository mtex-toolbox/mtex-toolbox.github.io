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

## Syntax

<div class="mx-form" markdown="1">

```python
ori = orientation(rot, cs, ss)
```

A rotation between a crystal and a specimen frame.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation(a, b, c, d, cs, ss)
```

The quaternion coefficients.

</div>

<div class="mx-form" markdown="1">

```python
mori = orientation(rot, cs, cs, antipodal=True)
```

A misorientation with grain exchange.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation(f, points=100)
```

Points along a fibre.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.byEuler(phi1, Phi, phi2, cs, ss)
```

Euler angles, and the other constructors.

</div>

## Description

An orientation is a rotation that carries the two frames it maps between: frameA, the crystal
frame CS, from which it takes the coordinates, and frameB, the specimen frame SS or the second
crystal frame of a misorientation, to which it takes them. The symmetries of both frames
enter every comparison, angle, mean and plot. A frame left out is the triclinic crystal frame,
or the default specimen frame. Coefficients are normalised; an improper transform is refused,
an orientation is proper.

An orientation given keeps its frames unless others are named; a fibre is sampled at points
orientations, an embedding projected back onto the orientations.

## Input

| `rot` | rotation, quaternion or orientation |
| `a, b, c, d` | the quaternion coefficients, numbers or arrays |
| `cs` | crystalFrame, the frame mapped from |
| `ss` | specimenFrame, or the second crystalFrame of a misorientation |
| `f` | fibre |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` |  | a misorientation with grain exchange, between two frames of one crystal: the misorientation and its inverse are taken as one |
| `dtype` |  | the floating point type of the coefficients |
| `points` |  | the number of orientations sampled along a fibre |

## Output

| `ori` | orientation |

## See also

[orientation.byEuler](orientation.byEuler_py.html), [orientation.byAxisAngle](orientation.byAxisAngle_py.html), [orientation.byMiller](orientation.byMiller_py.html), [orientation.byMatrix](orientation.byMatrix_py.html), [orientation.map](orientation.map_py.html), [rotation](rotation_index_py.html), [crystalFrame](crystalFrame_index_py.html), [OrientationDefinition](OrientationDefinition_py.html), [MisorientationTheory](MisorientationTheory_py.html)

## Members

| [align](orientation.align_py.html) | the orientation two frames stand in by their axes, MATLAB's orientation.align |
| [angle](orientation.angle_py.html) | the rotational angle up to symmetry, of the orientation or of the misorientation to other |
| [axis](orientation.axis_py.html) | the rotational axis of a misorientation, an orientation or the misorientation between two orientations |
| [Bagaryatsky](orientation.Bagaryatsky_py.html) | the Bagaryatsky orientation relationship between cementite and ferrite, (100) \|\| (1-10) and [010] \|\| [111], a misorientation from the cementite frame csT to the ferrite frame csA |
| [Bain](orientation.Bain_py.html) | the Bain orientation relationship from fcc to bcc, (100) \|\| (100) and [010] \|\| [011], a misorientation from the parent frame csG to the child frame csA |
| [brass2](orientation.brass2_py.html) | the brass2 component, Bunge Euler angles (325°, 45°, 0°), in cs and the specimen frame |
| [brass](orientation.brass_py.html) | the brass component, Bunge Euler angles (35°, 45°, 0°), in cs and the specimen frame |
| [Burgers](orientation.Burgers_py.html) | the Burgers orientation relationship between bcc and hcp, (110) \|\| (0001) and [-11-1] \|\| [2-1-10], from csParent to csChild |
| [byAxisAngle](orientation.byAxisAngle_py.html) | the orientations of the rotations by omega about the axis v |
| [byEuler](orientation.byEuler_py.html) | orientations defined by Euler angles |
| [byHomochoric](orientation.byHomochoric_py.html) | the orientations of homochoric vectors |
| [byMatrix](orientation.byMatrix_py.html) | the orientations of rotation matrices |
| [byMiller](orientation.byMiller_py.html) | the orientation that takes the crystal plane hkl to z and the crystal direction uvw to x |
| [byRodrigues](orientation.byRodrigues_py.html) | the orientations of Rodrigues vectors, the axes scaled by tan(omega/2) |
| [byScreenAlignment](orientation.byScreenAlignment_py.html) | the orientation between two frames that are drawn alike on the screen, from their plotting conventions |
| [calcAngleDistribution](orientation.calcAngleDistribution_py.html) | the distribution of the misorientation angle: of a misorientation density, of a list of misorientations, or of the uniform density of two crystal frames |
| [calcBinghamODF](orientation.calcBinghamODF_py.html) | the Bingham distribution estimated from orientations |
| [calcCluster](orientation.calcCluster_py.html) | the clusters of directions or orientations: one cluster id per element, counted from zero, and the centre of every cluster |
| [calcKernel](orientation.calcKernel_py.html) | the kernel a density estimate of orientations or directions should use, a de la Vallee Poussin kernel of the halfwidth chosen from the sample |
| [calcMIndex](orientation.calcMIndex_py.html) | the M-index of an ODF by Skemer et al., computed from the ODF instead of a discrete number of orientations |
| [calcTensor](orientation.calcTensor_py.html) | the texture average of a single crystal tensor over an ODF, a list of orientations or a map |
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
| [dot](orientation.dot_py.html) | the dot product up to symmetry, cos(omega/2) of the misorientation angle omega reduced over the groups of both frames |
| [dot_outer](orientation.dot_outer_py.html) | the dot product up to symmetry, cos(omega/2) of the misorientation angle omega reduced over the groups of both frames |
| [exp](orientation.exp_py.html) | the rotation a tangent vector at this reference points to, exp(ori, v) of MATLAB |
| [export_VPSC](orientation.export_VPSC_py.html) | write a map to the file the extension names |
| [fibreVolume](orientation.fibreVolume_py.html) | the volume of a fibre: the share of an orientation density within a radius of the fibre of the orientations that map the crystal direction h onto the specimen direction r |
| [find](orientation.find_py.html) | the orientations of ori nearest to w up to symmetry, MATLAB's orientation.find |
| [fit](orientation.fit_py.html) | the orientation that maps the directions u best onto the directions v in the least squares sense |
| [fundamentalRegion](orientation.fundamentalRegion_py.html) | the fundamental region of the orientations, the orientationRegion of the groups of CS and SS |
| [goss](orientation.goss_py.html) | the goss component, Bunge Euler angles (0°, 45°, 0°), in cs and the specimen frame |
| [GreningerTrojano](orientation.GreningerTrojano_py.html) | the Greninger-Trojano orientation relationship from fcc to bcc, by the Bunge Euler angles (2.7, 46.6, 7.5) degrees of the inverse, a misorientation from csG to csA |
| [id](orientation.id_py.html) | the identical orientations between the frames given, of the shape given (MATLAB's id and eye) |
| [inv](orientation.inv_py.html) | the inverse maps the other way: the frames swap |
| [invGoss](orientation.invGoss_py.html) | the invGoss component, Bunge Euler angles (90°, 45°, 0°), in cs and the specimen frame |
| [isclose](orientation.isclose_py.html) | equal up to the symmetry of the frames within the angular tolerance tol, between the same frames |
| [isMisorientation](orientation.isMisorientation_py.html) | whether both frames are crystal frames, so the orientation is a misorientation |
| [KurdjumovSachs](orientation.KurdjumovSachs_py.html) | the Kurdjumov-Sachs orientation relationship from fcc to bcc, (111) \|\| (011) and [-101] \|\| [-1-11], a misorientation from the parent frame csG to the child frame csA |
| [load](orientation.load_py.html) | orientation.load(fname, cs, columnNames=['phi1', 'Phi', 'phi2']): the orientations of a text table |
| [log](orientation.log_py.html) | the logarithm of an orientation, the tangent vector at a reference pointing to it |
| [logm](orientation.logm_py.html) | logm(T) is T.logm(): the matrix logarithm |
| [map](orientation.map_py.html) | the orientation that maps one or two pairs of directions |
| [mean](orientation.mean_py.html) | the mean of a list of orientations, with the principal moments and axes of inertia |
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
| [plotIPDF](orientation.plotIPDF_py.html) | inverse pole figures, one per specimen direction: of an ODF or of a list of orientations |
| [plotPDF](orientation.plotPDF_py.html) | pole figures, one per crystal direction: of an ODF, of a list of orientations or of a measured PoleFigure |
| [plotSection](orientation.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [Potter](orientation.Potter_py.html) | the Potter orientation relationship between bcc and hcp, (011) \|\| (01-11) and [11-1] \|\| [2-1-10], a misorientation from csParent to csChild |
| [project2EulerFR](orientation.project2EulerFR_py.html) | the Bunge Euler angles of the representative inside the Euler plotting box |
| [project2FundamentalRegion](orientation.project2FundamentalRegion_py.html) | the symmetric equivalents in the fundamental region, or those closest to the reference ref (MATLAB's orientation.project2FundamentalRegion, quaternion.project2FundamentalRegion, rotation.project2FundamentalRegion) |
| [QLage2](orientation.QLage2_py.html) | the QLage2 component, Bunge Euler angles (245°, 20°, 0°), in cs and the specimen frame |
| [QLage3](orientation.QLage3_py.html) | the QLage3 component, Bunge Euler angles (115°, 160°, 0°), in cs and the specimen frame |
| [QLage4](orientation.QLage4_py.html) | the QLage4 component, Bunge Euler angles (295°, 160°, 0°), in cs and the specimen frame |
| [QLage](orientation.QLage_py.html) | the QLage component, Bunge Euler angles (65°, 20°, 0°), in cs and the specimen frame |
| [quiver](orientation.quiver_py.html) | arrows: tangent vectors at directions, a vector or axis field on the sphere, arrows at orientations in the sections of the current figure, or directions on a map or a volume |
| [quiverSection](orientation.quiverSection_py.html) | arrows on a section plot: of a function on the sphere along one of its circles, or at orientations in the sections of orientation space |
| [rand](orientation.rand_py.html) | random orientations |
| [round2Miller](orientation.round2Miller_py.html) | the lattice planes and directions of low indices an orientation or a misorientation aligns |
| [scatter](orientation.scatter_py.html) | orientations as points in a three dimensional space of orientations |
| [ShojiNishiyama](orientation.ShojiNishiyama_py.html) | the Shoji-Nishiyama orientation relationship from fcc to hcp, (111) \|\| (0001) and [10-1] \|\| [2-1-10], a misorientation from the parent frame csG to the child frame csE |
| [SR2](orientation.SR2_py.html) | the SR2 component, Bunge Euler angles (233°, 35°, 63°), in cs and the specimen frame |
| [SR3](orientation.SR3_py.html) | the SR3 component, Bunge Euler angles (307°, 35°, 27°), in cs and the specimen frame |
| [SR4](orientation.SR4_py.html) | the SR4 component, Bunge Euler angles (127°, 35°, 27°), in cs and the specimen frame |
| [SR](orientation.SR_py.html) | the SR component, Bunge Euler angles (53°, 35°, 63°), in cs and the specimen frame |
| [SS](orientation.SS_py.html) | the frame the orientation maps to, frameB: the specimen frame, or the second crystal frame of a misorientation |
| [symmetrise](orientation.symmetrise_py.html) | all crystallographically equivalent orientations |
| [times](orientation.times_py.html) |  |
| [transformReferenceFrame](orientation.transformReferenceFrame_py.html) | the same orientation described with another reference frame of the crystal |
| [unique](orientation.unique_py.html) | the disjoint list of orientations, symmetric equivalents within a tolerance taken as one |
| [variants](orientation.variants_py.html) | the variants of a parent to child orientation relationship, and the child or parent orientations they give |
| [volume](orientation.volume_py.html) | the share of orientations within a radius of a centre: the integral of f over the ball, int_{angle(g, c) < r} f(g) dg, relative to the integral over all orientations |

## Used on

[DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html), [FibreODFs](FibreODFs_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [RotationFibre](RotationFibre_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [orientation_index](orientation_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L61">source</a></font>
{% endraw %}
