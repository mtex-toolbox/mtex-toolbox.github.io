%% Crystal Directions (The Class [[Miller_index.html,Miller]])
% This section describes the class *Miller* and gives an overview how to
% deal with crystal directions in MTEX.
%
%% Open in Editor
%
%% Contents
%
%% Class Description
% Crystal directions are represented in MTEX by the variables of the class
% *Miller* which in turn represent a direction with respect to the crystal
% coordinate system described  by three or four values h, l, k (,m) and a
% <crystalSymmetry_index.html crystall symmetry>. Essentially all operations
% defined for the [[vector3d_index.html,vector3d]] class are also available for Miller indices.
% Furthermore, You can ask for all crystallographically equivalent crystal
% directions to one Miller index.
%
%% SUB: Defining Miller indices
%
% Miller indices are defined by three coordinates h, k, l
% (four in the case of trigonal or hexagonal crystal symmetry) and by the
% corresponding symmetry class. It is also possible to convert a vector3d
% object into a Miller index.

cs = crystalSymmetry('trigonal');
m = Miller(1,0,-1,1,cs)
m = Miller(zvector,cs)

%% SUB: Plotting Miller indices
%
% Miller indices are plotted as spherical projections. The specific
% projection as well as whether to plot all equivalent directions can be
% specified by options.

plot(Miller(2,1,-3,1,cs))   % plot Miller indices

%%
%
% By providing the options *all* and *labeled* all symmetrically equivalent
% crystal directions are plotted together with their correct Miller indices.

plot(Miller(2,1,-3,1,cs),'all','labeled')   % plot Miller indices

%% SUB: Symmetrically Equivalent Crystal Directions
%
% A simple way to compute all symmetrically equivalent
% directions to a given crystal direction is provided by the command
% <Miller.symmetrise.html symmetrise>

m = Miller(1,1,-2,0,cs)
symmetrise(m)

%%
% As always the keyword <AxialDirectional.html antipodal> adds antipodal symmetry to this
% computation

symmetrise(m,'antipodal')

%%
% The command <vector3d.eq.html eq or ==> can be used to check whether
% two crystal directions are symmetrically equivalent. Compare

Miller(1,1,-2,0,cs) == Miller(-1,-1,2,0,cs)

%%
% and

eq(Miller(1,1,-2,0,cs),Miller(-1,-1,2,0,cs),'antipodal')

%% SUB: Angle between directions
%
% The angle between two crystal directions m1 and m2 is defined as the
% smallest angle between m1 and all symmetrically equivalent directions to
% m2. This angle in radians is calculated by the function <vector3d.angle.html
% angle>

angle(Miller(1,1,-2,0,cs),Miller(-1,-1,2,0,cs)) / degree

%%
% As always the keyword <AxialDirectional.html antipodal> adds antipodal symmetry to this
% computation

angle(Miller(1,1,-2,0,cs),Miller(-1,-1,2,0,cs),'antipodal') / degree

%% SUB: Conversions
%
% Converting Miller indices into a three-dimensional vector is straight
% forward using the command <Miller.vector3d.html vectord3d>.

vector3d(m)

%%
% Conversion into spherical coordinates requires the function <vector3d.polar.html
% polar>

[theta,rho] = polar(m)

%% SUB: Calculations
%
% Given a crystal orientation

o = orientation.byEuler(20*degree,30*degree,40*degree,cs)

%%
% one can apply it to a crystal direction to find its coordinates with
% respect to the specimen coordinate system

o * m

%%
% By applying a [[symmetry_index.html,crystal symmetry class]] one obtains
% the coordinates with respect to the specimen coordinate system of all
% crystallographically equivalent specimen directions.

p = o * symmetrise(m);
plot(p)

%% Complete Function list
% 
% <html><table width="90%"><tr><td width="200px"><a href="Miller.Miller.html"><tt>Miller</tt></a></td><td>define a crystal direction by Miller indice</td></tr><tr><td width="200px"><a href="Miller.calcDensity.html"><tt>calcDensity</tt></a></td><td>calculate a density function out of (weighted) crystal directions</td></tr><tr><td width="200px"><a href="Miller.cat.html"><tt>cat</tt></a></td><td>concatenate lists of Miller indices to one list</td></tr><tr><td width="200px"><a href="Miller.char.html"><tt>char</tt></a></td><td>Miller indece to string</td></tr><tr><td width="200px"><a href="Miller.display.html"><tt>display</tt></a></td><td>standard output</td></tr><tr><td width="200px"><a href="Miller.dot.html"><tt>dot</tt></a></td><td>inner product between two Miller indece</td></tr><tr><td width="200px"><a href="Miller.dot_outer.html"><tt>dot_outer</tt></a></td><td>inner product between two Miller indece</td></tr><tr><td width="200px"><a href="Miller.dspacing.html"><tt>dspacing</tt></a></td><td>space between crystal planes</td></tr><tr><td width="200px"><a href="Miller.exp.html"><tt>exp</tt></a></td><td>misorientation vector to misorientation</td></tr><tr><td width="200px"><a href="Miller.project2FundamentalRegion.html"><tt>project2FundamentalRegion</tt></a></td><td>projects vectors to the fundamental sector of the inverse pole figure</td></tr><tr><td width="200px"><a href="Miller.region.html"><tt>region</tt></a></td><td>return spherical region associated to a set of crystal directions</td></tr><tr><td width="200px"><a href="Miller.rotate.html"><tt>rotate</tt></a></td><td>crystal directions</td></tr><tr><td width="200px"><a href="Miller.rotate_outer.html"><tt>rotate_outer</tt></a></td><td>rotate crystal directions</td></tr><tr><td width="200px"><a href="Miller.round.html"><tt>round</tt></a></td><td>tries to round miller indizes to greatest common divisor</td></tr><tr><td width="200px"><a href="Miller.scatter.html"><tt>scatter</tt></a></td><td>plot Miller indece</td></tr><tr><td width="200px"><a href="Miller.smooth.html"><tt>smooth</tt></a></td><td>plot Miller indece</td></tr><tr><td width="200px"><a href="Miller.surf.html"><tt>surf</tt></a></td><td>Syntax</td></tr><tr><td width="200px"><a href="Miller.symmetrise.html"><tt>symmetrise</tt></a></td><td>directions symmetrically equivalent to m</td></tr><tr><td width="200px"><a href="Miller.text.html"><tt>text</tt></a></td><td>plot Miller indece</td></tr><tr><td width="200px"><a href="Miller.transformReferenceFrame.html"><tt>transformReferenceFrame</tt></a></td><td>change reference frame while keeping hkl or uvw</td></tr><tr><td width="200px"><a href="Miller.unique.html"><tt>unique</tt></a></td><td>disjoint list of Miller indices</td></tr></table></html>