%% Crystal and Specimen Symmetries (The Class [[symmetry_index.html,symmetry]])
% This section describes the class *symmetry* and gives an overview how to
% deal with crystal symmetries in MTEX.
%
%% Open in Editor
%
%% Contents
%
%% Class Description
%
% Crystal symmetries are sets of rotations and mirroring operations that
% leave the lattice of a crystal invariant. They form so-called groups
% since the concatenation of two symmetry operations is again a symmetry
% operation. Crystal symmetries are classified in various ways - either
% according to the corresponding space group or the corresponding point
% group, or the corresponding Laue group. In total, there are only 11
% different Laue groups present in crystallography. All these 11 Laue
% groups are supported by MTEX. More precisely, in MTEX a Laue group is
% represented by a variable of the class *symmetry*.
%
%% SUB: Defining a Crystal Symmetry 
%
% MTEX supports the *Schoenflies* notation on Laue groups as well as the
% *international* notation. In the case of noncubic crystal symmetry the
% length of the crystal axis has to be specified as a second argument to
% the constructor [[symmetry.symmetry.html,symmtry]] and in the case of
% triclinic crystal symmetry the angles between the axes has to be passed
% as the third argument. Hence, valid definitions are:
%
%%
% *Laue Group - international notation*
%

cs = crystalSymmetry('m-3m')

%% 
% *Laue Group - Schoenflies notation*

cs = crystalSymmetry('O')

%%
% *Point Group or its Space Group*
%
% If not the name of a Laue group was specified but the name of a point
% group or a space group MTEX automatically determines the corresponding
% Laue group and assigns it to the variable.

cs = crystalSymmetry('Td')

%%
% *CIF Files*
%
% Finally, MTEX allows defining a crystal symmetry by importing a
% crystallographic information file (*.cif).

cs = loadCIF('quartz')


%% SUB: The Crystal Coordinate System
%
% In the case of cubic crystal symmetry the crystal coordinate system
% is already well defined. However, especially in the case of low order
% crystal symmetry, the crystal coordinate system has to be specified by the
% length of the axis and the angle between the axis. 

cs = crystalSymmetry('triclinic',[1,2.2,3.1],[80*degree,85*degree,95*degree]);

%% 
% *A and B Configurations*
%
% In the case of trigonal and hexagonal crystal symmetries different
% conventions are used. One distinguishes between the A and the B
% configuration depending whether the a-axis is aligned parallel to the 
% x-axis or parallel to the y-axis. In order to specify the concrete
%          
%          <html>
%             <table class="usertable"/>
%          </html>
%          

cs = crystalSymmetry('-3m',[1.7,1.7,1.4],'X||a');
plot(cs)

%%

cs = crystalSymmetry('-3m',[1.7,1.7,1.4],'Y||a');
plot(cs)


%% Complete Function list
% 
% <html><table width="90%"><tr><td width="200px"><a href="symmetry.Laue.html"><tt>Laue</tt></a></td><td>return the corresponding Laue group </td></tr><tr><td width="200px"><a href="symmetry.LaueName.html"><tt>LaueName</tt></a></td><td>get Laue name</td></tr><tr><td width="200px"><a href="symmetry.alignment.html"><tt>alignment</tt></a></td><td>return alignment of the reference frame as string, e.g. x||a, y||b*</td></tr><tr><td width="200px"><a href="symmetry.calcAngleDistribution.html"><tt>calcAngleDistribution</tt></a></td><td>compute the angle distribution of a uniform ODF for a crystal symmetry</td></tr><tr><td width="200px"><a href="symmetry.calcAxisDistribution.html"><tt>calcAxisDistribution</tt></a></td><td>compute the axis distribution of an uniform ODF or MDF</td></tr><tr><td width="200px"><a href="symmetry.calcQuat.html"><tt>calcQuat</tt></a></td><td>calculate quaternions for Laue groups</td></tr><tr><td width="200px"><a href="symmetry.check.html"><tt>check</tt></a></td><td>symmetry</td></tr><tr><td width="200px"><a href="symmetry.disjoint.html"><tt>disjoint</tt></a></td><td>returns the disjoint of two symmetry groups</td></tr><tr><td width="200px"><a href="symmetry.elements.html"><tt>elements</tt></a></td><td>extract symmetry elements by multiplicity</td></tr><tr><td width="200px"><a href="symmetry.ensureCS.html"><tt>ensureCS</tt></a></td><td>ensures that an obj has the right crystal symmetry</td></tr><tr><td width="200px"><a href="symmetry.eq.html"><tt>eq</tt></a></td><td>check S1 == S2</td></tr><tr><td width="200px"><a href="symmetry.factor.html"><tt>factor</tt></a></td><td>izes s1 and s2 into l, d, r such that s1 = l * d and s2 = d * r</td></tr><tr><td width="200px"><a href="symmetry.fundamentalRegion.html"><tt>fundamentalRegion</tt></a></td><td>fundamental region in orientation space for a (pair) of symmetries </td></tr><tr><td width="200px"><a href="symmetry.fundamentalRegionEuler.html"><tt>fundamentalRegionEuler</tt></a></td><td>get the fundamental region in Euler angles</td></tr><tr><td width="200px"><a href="symmetry.fundamentalSector.html"><tt>fundamentalSector</tt></a></td><td>get the fundamental sector for a symmetry in the inverse pole figure</td></tr><tr><td width="200px"><a href="symmetry.length.html"><tt>length</tt></a></td><td>number of symmetry elements</td></tr><tr><td width="200px"><a href="symmetry.maxAngle.html"><tt>maxAngle</tt></a></td><td>get the maximum angle of the fundamental region</td></tr><tr><td width="200px"><a href="symmetry.multiplicityPerpZ.html"><tt>multiplicityPerpZ</tt></a></td><td>maximum angle rho</td></tr><tr><td width="200px"><a href="symmetry.multiplicityZ.html"><tt>multiplicityZ</tt></a></td><td>maximum angle rho</td></tr><tr><td width="200px"><a href="symmetry.nfold.html"><tt>nfold</tt></a></td><td>maximal nfold of symmetry axes</td></tr><tr><td width="200px"><a href="symmetry.plot.html"><tt>plot</tt></a></td><td>visualize symmetry elements according to international table</td></tr><tr><td width="200px"><a href="symmetry.properGroup.html"><tt>properGroup</tt></a></td><td>return the corresponding Laue group </td></tr><tr><td width="200px"><a href="symmetry.properSubGroup.html"><tt>properSubGroup</tt></a></td><td>return the corresponding Laue group </td></tr><tr><td width="200px"><a href="symmetry.rotation_special.html"><tt>rotation_special</tt></a></td><td>returns symmetry elements different from rotation about caxis</td></tr><tr><td width="200px"><a href="symmetry.subsref.html"><tt>subsref</tt></a></td><td>overloads subsref</td></tr><tr><td width="200px"><a href="symmetry.symmetry.html"><tt>symmetry</tt></a></td><td>Supported Symmetries</td></tr><tr><td width="200px"><a href="symmetry.union.html"><tt>union</tt></a></td><td>returns the union of two symmetry groups</td></tr></table></html>