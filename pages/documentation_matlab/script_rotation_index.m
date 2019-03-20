%% Rotations (The Class [[rotation_index.html,rotation]])
% This section describes the class  <rotation.rotation.html *rotation*> and
% gives an overview on how to work with rotations in MTEX.
%
%% Open in Editor
%
%% Contents
%
%% Class Description
% The class *rotation* is an inheritance of the class <quaternion_index.html
% *quaternion*> and allow to work with rotations as with matrixes in MTEX.
%
%% SUB: Euler Angle Conventions
%
% There are several ways to specify a rotation in MTEX. A
% well-known possibility are the so called *Euler angles*. In texture
% analysis the following conventions are commonly used
%
% * Bunge (phi1,Phi,phi2)       - ZXZ
% * Matthies (alpha,beta,gamma) - ZYZ
% * Roe (Psi,Theta,Phi)
% * Kocks (Psi,Theta,phi)
% * Canova (omega,Theta,phi)
%
% *Defining a Rotation by Bunge Euler Angles*
%
% The default Euler angle convention in MTEX are the Bunge Euler angles.
% Here a rotation is determined by three consecutive rotations,
% the first about the z-axis, the second about the y-axis, and the third
% again about the z-axis. Hence, one needs three angles to define an
% rotation by Euler angles. The following command defines a rotation by its
% three Bunge Euler angles

o = rotation.byEuler(30*degree,50*degree,10*degree)


%%
% *Defining a Rotation by Other Euler Angle Conventions*
%
% In order to define a rotation by a Euler angle convention different to
% the default Euler angle convention you to specify the convention as an
% additional parameter, e.g.

o = rotation.byEuler(30*degree,50*degree,10*degree,'Roe')


%%
% *Changing the Default Euler Angle Convention*
%
% The default euler angle convention can be changed by the command
% *setpref*, for a permanent change the
% <matlab:edit('mtex_settings.m') mtex_settings> should be edited. Compare

setMTEXpref('EulerAngleConvention','Roe')
o

%%
setMTEXpref('EulerAngleConvention','Bunge')
o

%% SUB: Other Ways of Defining a Rotation
%
% *The axis angle parametrisation*
%
% A very simple possibility to specify a rotation is to specify the
% rotational axis and the rotational angle.

o = rotation.byAxisAngle(xvector,30*degree)

%%
% *Four vectors defining a rotation*
%
% Given four vectors u1, v1, u2, v2 there is a unique rotations q such that
% q u1 = v1 and q u2 = v2.

o = rotation.map(xvector,yvector,zvector,zvector)

%%
% If only two vectors are specified the rotation with the smallest angle is
% returned that maps the first vector onto the second one.

o = rotation.map(xvector,yvector)

%%
% *A fibre of rotations*
%
% The set of all rotations that rotate a certain vector u onto a certain
% vector v define a fibre in the rotation space. A discretisation of such
% a fibre is defined by

u = xvector;
v = yvector;
o = rotation(fibre(u,v))


%%
% *Defining a rotation by a 3 times 3 matrix*

o = rotation.byMatrix(eye(3))

%%
% *Defining a rotation by a quaternion*
%
% A last possibility is to define a rotation by a quaternion, i.e., by its
% components a,b,c,d.


o = rotation(quaternion(1,0,0,0))

%%
% Actually, MTEX represents internally every rotation as a quaternion.
% Hence, one can write

q = quaternion(1,0,0,0)
o = rotation(q)


%% SUB: Calculating with Rotations
%
% *Rotating Vectors*
%
% Let

o = rotation.byEuler(90*degree,90*degree,0*degree)

%%
% a certain rotation. Then the rotation of the xvector is computed via

v = o * xvector

%%
% The inverse rotation is computed via the <rotation.mldivide.html backslash operator>

o \ v

%%
% *Concatenating Rotations*
%
% Let

rot1 = rotation.byEuler(90*degree,0,0);
rot2 = rotation.byEuler(0,60*degree,0);

%%
% be two rotations. Then the rotation defined by applying first rotation
% one and then rotation two is computed by

rot = rot2 * rot1

%%
% *Computing the rotation angle and the rotational axis*
%
% Then rotational angle and the axis
% of rotation can be computed via then commands
% <quaternion.angle.html angle(rot)> and
% <quaternion.axis.html axis(rot)>

angle(rot)/degree

axis(rot)

%%
% If two rotations are specified the command
% <quaternion.angle.html angle(rot1,rot2)> computes the rotational angle
% between both rotations

angle(rot1,rot2)/degree


%%
% *The inverse Rotation*
%
% The inverse rotation you get from the command
% <quaternion.inv.html inv(rot)>

inv(rot)

%% SUB: Conversion into Euler Angles and Rodrigues Parametrisation
%
% There are methods to transform quaternion in almost any other
% parameterization of rotations as they are:
%
% * [[quaternion.Euler.html,Euler(rot)]]   in Euler angle
% * [[quaternion.Rodrigues.html,Rodrigues(rot)]] % in Rodrigues parameter
%

[alpha,beta,gamma] = Euler(rot,'Matthies')


%% SUB: Plotting Rotations
%
% The <quaternion.plot.html plot> function allows you to visualize an
% rotation by plotting how the standard basis x,y,z transforms under the
% rotation.

plot(rot)

%% Complete Function list
% 
% <html><table width="90%"><tr><td width="200px"><a href="rotation.byAxisAngle.html"><tt>byAxisAngle</tt></a></td><td>define rotations by rotational axis and rotational angle</td></tr><tr><td width="200px"><a href="rotation.byEuler.html"><tt>byEuler</tt></a></td><td>define rotentations by Euler angles</td></tr><tr><td width="200px"><a href="rotation.byMatrix.html"><tt>byMatrix</tt></a></td><td>define rotations by matrices</td></tr><tr><td width="200px"><a href="rotation.byRodrigues.html"><tt>byRodrigues</tt></a></td><td>define rotations by Rodrigues vectors</td></tr><tr><td width="200px"><a href="rotation.cat.html"><tt>cat</tt></a></td><td>implement cat for rotation</td></tr><tr><td width="200px"><a href="rotation.char.html"><tt>char</tt></a></td><td>quaternion to char</td></tr><tr><td width="200px"><a href="rotation.display.html"><tt>display</tt></a></td><td>standart output</td></tr><tr><td width="200px"><a href="rotation.dot.html"><tt>dot</tt></a></td><td>compute rot1 . rot2</td></tr><tr><td width="200px"><a href="rotation.dot_outer.html"><tt>dot_outer</tt></a></td><td/></tr><tr><td width="200px"><a href="rotation.line.html"><tt>line</tt></a></td><td>draw rotations connected by lines</td></tr><tr><td width="200px"><a href="rotation.load.html"><tt>load</tt></a></td><td>import orientation data from data files</td></tr><tr><td width="200px"><a href="rotation.map.html"><tt>map</tt></a></td><td>define rotations by pairs of vectors</td></tr><tr><td width="200px"><a href="rotation.matrix.html"><tt>matrix</tt></a></td><td>quaternion to direction cosine matrix conversion</td></tr><tr><td width="200px"><a href="rotation.mldivide.html"><tt>mldivide</tt></a></td><td>o \ v </td></tr><tr><td width="200px"><a href="rotation.mtimes.html"><tt>mtimes</tt></a></td><td>r = a * b</td></tr><tr><td width="200px"><a href="rotation.permute.html"><tt>permute</tt></a></td><td>overloads permute</td></tr><tr><td width="200px"><a href="rotation.power.html"><tt>power</tt></a></td><td>r.^n</td></tr><tr><td width="200px"><a href="rotation.project2FundamentalRegion.html"><tt>project2FundamentalRegion</tt></a></td><td>projects rotation to a fundamental region</td></tr><tr><td width="200px"><a href="rotation.repmat.html"><tt>repmat</tt></a></td><td>overloads repmat</td></tr><tr><td width="200px"><a href="rotation.reshape.html"><tt>reshape</tt></a></td><td>overloads reshape</td></tr><tr><td width="200px"><a href="rotation.rotation.html"><tt>rotation</tt></a></td><td>defines an rotation</td></tr><tr><td width="200px"><a href="rotation.subSet.html"><tt>subSet</tt></a></td><td>indexing of rotation</td></tr><tr><td width="200px"><a href="rotation.subsasgn.html"><tt>subsasgn</tt></a></td><td>overloads subsasgn</td></tr><tr><td width="200px"><a href="rotation.subsref.html"><tt>subsref</tt></a></td><td>overloads subsref</td></tr><tr><td width="200px"><a href="rotation.times.html"><tt>times</tt></a></td><td>r = a .* b</td></tr><tr><td width="200px"><a href="rotation.transpose.html"><tt>transpose</tt></a></td><td>array of rotations</td></tr><tr><td width="200px"><a href="rotation.uminus.html"><tt>uminus</tt></a></td><td>implements rotation</td></tr><tr><td width="200px"><a href="rotation.unique.html"><tt>unique</tt></a></td><td>disjoint list of rotations</td></tr></table></html>