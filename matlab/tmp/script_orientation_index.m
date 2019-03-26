%% Crystal Orientations
% This sections describes the class *orientation* and gives an overview how
% to work with crystal orientation in MTEX.
%
%% Open in Editor
%
%% Class Description
%
% In texture analysis crystal orientations are used to describe the
% alignment of the crystals within the specimen. A crystal orientation is
% defined as the rotation that maps the specimen coordinate system onto the
% crystal coordinate system. Since the crystal coordinate system and the
% specimen coordinate system are well defined only up to crystal symmetry
% and specimen symmetry, an orientation is in general represented by a class
% of crystallographically equivalent rotations. In MTEX the class *orientation*
% is an inheritance of the class <rotation_index.html rotation>.
% In particular, every function that is defined for a rotation is also
% available for an orientation.
%
%% SUB: Defining a Crystal Orientation
%
% In order to define a crystal orientation one has to define crystal and
% specimen symmetry first.

cs = crystalSymmetry('cubic');
ss = specimenSymmetry('orthorhombic');

%%
%
% Now a crystal orientation to a certain <rotation_index.html rotation>

rot = rotation.byEuler(30*degree,50*degree,10*degree);

%%
% is defined by

o = orientation(rot,cs,ss)

%%
% In order to streamline the definition the arguments to define the
% rotation can be directly pass to define a orientation:

o = orientation.byEuler(30*degree,50*degree,10*degree,cs,ss)

%%
% Accordingly parameterisations of rotations are also available for
% orientations
%
% * Bunge Euler Angle Convention
% * Matthies Euler Angle Convention
% * Axis angle parametrisation
% * Fibre of orientations
% * Four vectors defining a rotation
% * 3 times 3 matrix
% * quaternion
%
% Have a look at <rotation_index.html rotation help page> for more details.
% Besides these parameterisations for rotations there are also some
% parameterisations which are unique for orientations
%
% *Miller indices*
%
% There is also a Miller indices convention for defining crystal orientations.

o = orientation.byMiller([1 0 0],[0 1 1],cs,ss)


%%
% *Predifined Orientations*
%
% In the MTEX there is a list of predefined orientations:
%
% * [[orientation.cube.html,cube]]
% * [[orientation.goss.html,goss]]
% * [[orientation.brass.html,brass]]

o = orientation.goss(cs,ss)

%% SUB: Rotating Crystal Directions onto Specimen Directions
%
% Let

h = Miller(1,0,0,cs)

%%
% be a certain crystal direction and

o = orientation.byEuler(90*degree,90*degree,0*degree,cs,ss)

%%
% a crystal orientation. Then the alignment of this crystal direction with
% respect to the specimen coordinate system can be computed via

r = o * h

%%
% Conversely the crystal direction that is mapped onto a certain specimen
% direction can be computed via the <orientation.mldivide.html backslash operator>

o \ r

%% SUB: Concatenating Rotations
%
% Let

o = orientation.byEuler(90*degree,0,0,cs,ss);
rot = rotation.byEuler(0,60*degree,0);

%%
% be a crystal orientation and a rotation of the specimen coordinate
% system. Then the orientation of the crystal with respect to the rotated
% specimen coordinate system calculates by

o1 = rot * o



%%
% Then the class of rotations crystallographically equivalent to o can be
% computed in two ways. Either by using the command <orientation.symmetrise.html
% symmetrise>

symmetrise(o)

%%
% or by using multiplication

ss * o * cs

%% SUB: Calculating Misorientations
%
% Let cs and ss be crystal and specimen symmetry and o1 and o2 two crystal
% orientations. Then one can ask for the misorientation between both
% orientations. This misorientation can be calculated by the function
% <orientation.angle.html angle>.

angle(rot * o1,o1) / degree

%%
% This misorientation angle is, in general, smaller than the misorientation
% without crystal symmetry which can be computed via

angle(rotation(o),rotation(o1)) /degree

%% SUB: Calculating with Orientations and Rotations
%
% Besides the standard linear algebra operations there are also the
% following functions available in MTEX. Then rotational angle and the axis
% of rotation can be computed via then commands
% <quaternion.angle.html angle(o)> and
% <quaternion.axis.html axis(o)>

angle(o1)/degree

axis(o1)
%%
% The inverse orientation to o you get from the command
% <quaternion.inv.html inv(q)>

inv(o1)

%% SUB: Conversion into Euler Angles and Rodrigues Parametrisation
%
% There are methods to transform quaternion in almost any other
% parameterization of rotations as they are:
%
% * [[quaternion.Euler.html,Euler(o)]]   in Euler angle
% * [[quaternion.Rodrigues.html,Rodrigues(o)]] % in Rodrigues parameter
%

[phi1,Phi,phi2] = Euler(o)


%% SUB: Plotting Orientations
%
% The <orientation.plot.html plot> function allows you to visualize an
% orientation in axis angle space in relation to its fundamental region.

oR = fundamentalRegion(o1.CS,o1.SS)
plot(oR)
hold on
% plot the orientation as it is
plot(o1,'markercolor','b','markerSize',10)

% plot the orientation within the fundamental zone
plot(o1.project2FundamentalRegion,'markercolor','r','markerSize',10)
hold off

%% Complete Function list
% 
% <html><table width="90%"><tr><td width="200px"><a href="orientation.BCV.html"><tt>BCV</tt></a></td><td>biased cross validation</td></tr><tr><td width="200px"><a href="orientation.KLCV.html"><tt>KLCV</tt></a></td><td>Kullback Leibler cross validation for optimal kernel estimation</td></tr><tr><td width="200px"><a href="orientation.LSCV.html"><tt>LSCV</tt></a></td><td>least squares cross valiadation</td></tr><tr><td width="200px"><a href="orientation.angle.html"><tt>angle</tt></a></td><td>calculates rotational angle between orientations</td></tr><tr><td width="200px"><a href="orientation.axis.html"><tt>axis</tt></a></td><td>rotational axis of an misorientation or two orientations</td></tr><tr><td width="200px"><a href="orientation.bingham_test.html"><tt>bingham_test</tt></a></td><td>bingham test for spherical/prolat/oblat case</td></tr><tr><td width="200px"><a href="orientation.byAxisAngle.html"><tt>byAxisAngle</tt></a></td><td>define orientations by rotational axis and rotational angle</td></tr><tr><td width="200px"><a href="orientation.byEuler.html"><tt>byEuler</tt></a></td><td>define orientations by Euler angles</td></tr><tr><td width="200px"><a href="orientation.byMatrix.html"><tt>byMatrix</tt></a></td><td>define orientations by a matrix</td></tr><tr><td width="200px"><a href="orientation.byMiller.html"><tt>byMiller</tt></a></td><td>define orientations by Miller Bravais indeces</td></tr><tr><td width="200px"><a href="orientation.calcAngleDistribution.html"><tt>calcAngleDistribution</tt></a></td><td>calculate angle distribution</td></tr><tr><td width="200px"><a href="orientation.calcBinghamODF.html"><tt>calcBinghamODF</tt></a></td><td>calculate ODF from individuel orientations via kernel density estimation</td></tr><tr><td width="200px"><a href="orientation.calcCluster.html"><tt>calcCluster</tt></a></td><td>sort orientations into clusters</td></tr><tr><td width="200px"><a href="orientation.calcFourierODF.html"><tt>calcFourierODF</tt></a></td><td>calculate ODF from individuel orientations via kernel density estimation</td></tr><tr><td width="200px"><a href="orientation.calcInvTaylor.html"><tt>calcInvTaylor</tt></a></td><td>Taylor factor from orientation gradient</td></tr><tr><td width="200px"><a href="orientation.calcKernel.html"><tt>calcKernel</tt></a></td><td>compute an optimal kernel function for ODF estimation</td></tr><tr><td width="200px"><a href="orientation.calcKernelODF.html"><tt>calcKernelODF</tt></a></td><td>calculate ODF from individuel orientations via kernel density estimation</td></tr><tr><td width="200px"><a href="orientation.calcMDF.html"><tt>calcMDF</tt></a></td><td>computes an MDF from individuel orientations or misorientations</td></tr><tr><td width="200px"><a href="orientation.calcMIndex.html"><tt>calcMIndex</tt></a></td><td>Computes the Mindex from a discrete number of orientations</td></tr><tr><td width="200px"><a href="orientation.calcODF.html"><tt>calcODF</tt></a></td><td>computes an ODF from individuel orientations</td></tr><tr><td width="200px"><a href="orientation.calcTensor.html"><tt>calcTensor</tt></a></td><td>compute the average tensor for a vector of orientations</td></tr><tr><td width="200px"><a href="orientation.crossCorrelation.html"><tt>crossCorrelation</tt></a></td><td>computes the cross correlation for the kernel density estimator</td></tr><tr><td width="200px"><a href="orientation.ctranspose.html"><tt>ctranspose</tt></a></td><td>inverse orientation</td></tr><tr><td width="200px"><a href="orientation.display.html"><tt>display</tt></a></td><td>standart output</td></tr><tr><td width="200px"><a href="orientation.doHClustering.html"><tt>doHClustering</tt></a></td><td>sort orientations into clusters</td></tr><tr><td width="200px"><a href="orientation.dot.html"><tt>dot</tt></a></td><td>compute minimum dot(o1,o2) modulo symmetry</td></tr><tr><td width="200px"><a href="orientation.dot_outer.html"><tt>dot_outer</tt></a></td><td/></tr><tr><td width="200px"><a href="orientation.exp.html"><tt>exp</tt></a></td><td>onential function</td></tr><tr><td width="200px"><a href="orientation.export_VPSC.html"><tt>export_VPSC</tt></a></td><td>export individual orientations to the VPSC format</td></tr><tr><td width="200px"><a href="orientation.fibreVolume.html"><tt>fibreVolume</tt></a></td><td>ratio of orientations close to a certain fibre</td></tr><tr><td width="200px"><a href="orientation.getFundamentalRegion.html"><tt>getFundamentalRegion</tt></a></td><td>projects orientations to a fundamental region</td></tr><tr><td width="200px"><a href="orientation.isMisorientation.html"><tt>isMisorientation</tt></a></td><td>check whether o is a misorientation</td></tr><tr><td width="200px"><a href="orientation.ldivide.html"><tt>ldivide</tt></a></td><td>o .\ v </td></tr><tr><td width="200px"><a href="orientation.load.html"><tt>load</tt></a></td><td>import orientation data from data files</td></tr><tr><td width="200px"><a href="orientation.log.html"><tt>log</tt></a></td><td>the misorientation vector between two orientations </td></tr><tr><td width="200px"><a href="orientation.logm.html"><tt>logm</tt></a></td><td>the logarithmic map that translates a rotation into a spin tensor</td></tr><tr><td width="200px"><a href="orientation.map.html"><tt>map</tt></a></td><td>define orientations by pairs of vectors</td></tr><tr><td width="200px"><a href="orientation.mean.html"><tt>mean</tt></a></td><td>of a list of orientations, principle axes and moments of inertia</td></tr><tr><td width="200px"><a href="orientation.mldivide.html"><tt>mldivide</tt></a></td><td>o \ v </td></tr><tr><td width="200px"><a href="orientation.mtimes.html"><tt>mtimes</tt></a></td><td>orientation times Miller and orientation times orientation</td></tr><tr><td width="200px"><a href="orientation.niceEuler.html"><tt>niceEuler</tt></a></td><td>orientation to euler angle</td></tr><tr><td width="200px"><a href="orientation.orientation.html"><tt>orientation</tt></a></td><td>class representing orientations</td></tr><tr><td width="200px"><a href="orientation.parents.html"><tt>parents</tt></a></td><td>variants of an orientation relationship</td></tr><tr><td width="200px"><a href="orientation.plot.html"><tt>plot</tt></a></td><td>annotate a orientation to an existing plot</td></tr><tr><td width="200px"><a href="orientation.plotIPDF.html"><tt>plotIPDF</tt></a></td><td>plot orientations into inverse pole figures</td></tr><tr><td width="200px"><a href="orientation.plotPDF.html"><tt>plotPDF</tt></a></td><td>plot orientations into pole figures</td></tr><tr><td width="200px"><a href="orientation.plotSection.html"><tt>plotSection</tt></a></td><td>plot orientations to ODF sections</td></tr><tr><td width="200px"><a href="orientation.power.html"><tt>power</tt></a></td><td>ori.^n</td></tr><tr><td width="200px"><a href="orientation.project2EulerFR.html"><tt>project2EulerFR</tt></a></td><td>projects orientation to a fundamental region</td></tr><tr><td width="200px"><a href="orientation.project2FundamentalRegion.html"><tt>project2FundamentalRegion</tt></a></td><td>projects orientation to a fundamental region</td></tr><tr><td width="200px"><a href="orientation.qqplot.html"><tt>qqplot</tt></a></td><td>quantilequantile of misorientation angle against random angular</td></tr><tr><td width="200px"><a href="orientation.round2Miller.html"><tt>round2Miller</tt></a></td><td>find lattice alignements for arbitrary orientations and misorientations</td></tr><tr><td width="200px"><a href="orientation.scatter.html"><tt>scatter</tt></a></td><td>plots orientations in 3d</td></tr><tr><td width="200px"><a href="orientation.sphereVolume.html"><tt>sphereVolume</tt></a></td><td>ratio of orientations with a certain orientation</td></tr><tr><td width="200px"><a href="orientation.symmetrise.html"><tt>symmetrise</tt></a></td><td>all crystallographically equivalent orientations</td></tr><tr><td width="200px"><a href="orientation.times.html"><tt>times</tt></a></td><td>vec = ori .* Miller</td></tr><tr><td width="200px"><a href="orientation.transformReferenceFrame.html"><tt>transformReferenceFrame</tt></a></td><td>change reference frame of an orientation</td></tr><tr><td width="200px"><a href="orientation.unique.html"><tt>unique</tt></a></td><td>disjoint list of quaternions</td></tr><tr><td width="200px"><a href="orientation.variants.html"><tt>variants</tt></a></td><td>of an orientation relationship</td></tr><tr><td width="200px"><a href="orientation.volume.html"><tt>volume</tt></a></td><td>ratio of orientations with a certain orientation</td></tr></table></html>