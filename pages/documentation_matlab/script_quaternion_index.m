%% Quaternions (The Class [[quaternion_index.html,quaternion]])
% class representing orientations
%
%% Contents
%
%% Class Description
%
% The class quaternion allows working with rotations in MTEX,
% as they occur e.g. as crystal orientation or symmetries. Quaternions may
% be multiplied with [[vector3d_index.html,three-dimensional vecotors]] 
% which means rotating the vector or may be multiplied with another 
% quaternion which means to concatenate both rotations. 
%
%% SUB: Defining quaternions
%
% The standard way is to define a quaternion q is to give its coordinates
% (a,b,c,d). However, making use of one of the following conversion methods
% is much more human readable.
%
%  q = [[quaternion.quaternion.html,quaternion]](a,b,c,d)          % by coordinates
%  q = [[axis2quat.html,axis2quat]](axis,angle);       % by rotational axis and rotational angle
%  q = [[euler2quat.html,euler2quat]](alpha,beta,gamma) % by Euler angles
%  q = [[Miller2quat.html,Miller2quat]]([h k l],[u v w],symmetry); % by Miller indece
%  q = [[quaternion.id.html,quaternion.id]];                % identical quaternion
%  q = [[vec42quat.html,vec42quat]](u1,v1,u2,v2);      % by four vectors
%
% Additional methods to define a rotation are [[hr2quat.html,hr2quat]] and 
% [[vec42quat.html,vec42quat]].
% Using the brackets |q = [q1,q2]| two quaternions can be concatened. Now each
% single quaternion is accesable via |q(1)| and |q(2)|.

%% SUB: Calculating with three dimensional vectors
%
% Besides the standard linear algebra operations there are also the
% following functions available in MTEX.
%
%  [[quaternion.angle.html,angle]](q); % rotational angle
%  [[quaternion.axis.html,axis]](q);  % rotational axis 
%  [[quaternion.inverse.html,inverse]](q);  % inverse rotation 
%
%% SUB: Conversion
%
% There are methods to transform quaternion in almost any other
% parameterization of rotations as they are:
%
%  [[quaternion.Euler.html,Euler]](q)     % in Euler angle
%  [[quaternion.Rodrigues.html,Rodrigues]](q) % in Rodrigues parameter
%
%% SUB: Plotting quaternions
% 
% The [[quaternion.plot.html,plot]] function allows you to visualize an 
% quaternion by plotting how the standard basis x,y,z transforms under the
% rotation.

plot(quaternion.rand(100))

%% Complete Function list
% 
% <html><table width="90%"><tr><td width="200px"><a href="quaternion.EinsteinSum.html"><tt>EinsteinSum</tt></a></td><td>tensor multiplication according to Einstein summation</td></tr><tr><td width="200px"><a href="quaternion.Euler.html"><tt>Euler</tt></a></td><td>quaternion to euler angle</td></tr><tr><td width="200px"><a href="quaternion.Rodrigues.html"><tt>Rodrigues</tt></a></td><td>quaternion to rodrigues representation</td></tr><tr><td width="200px"><a href="quaternion.angle.html"><tt>angle</tt></a></td><td>calcualtes the rotational angle between rotations q1 and q2</td></tr><tr><td width="200px"><a href="quaternion.angle_outer.html"><tt>angle_outer</tt></a></td><td>calcualtes the rotational angle between all rotations q1 and q2</td></tr><tr><td width="200px"><a href="quaternion.axis.html"><tt>axis</tt></a></td><td>rotational axis of the quaternion</td></tr><tr><td width="200px"><a href="quaternion.calcVoronoi.html"><tt>calcVoronoi</tt></a></td><td>compute the the Voronoi decomposition for unit quaternions</td></tr><tr><td width="200px"><a href="quaternion.cat.html"><tt>cat</tt></a></td><td>implement cat for quaternion</td></tr><tr><td width="200px"><a href="quaternion.char.html"><tt>char</tt></a></td><td>quaternion to char</td></tr><tr><td width="200px"><a href="quaternion.cross.html"><tt>cross</tt></a></td><td>pointwise cross product of three quaternions</td></tr><tr><td width="200px"><a href="quaternion.ctranspose.html"><tt>ctranspose</tt></a></td><td>transpose quaternion</td></tr><tr><td width="200px"><a href="quaternion.display.html"><tt>display</tt></a></td><td>standart output</td></tr><tr><td width="200px"><a href="quaternion.dot.html"><tt>dot</tt></a></td><td>inner product of quaternions g1 and g2</td></tr><tr><td width="200px"><a href="quaternion.dot_angle.html"><tt>dot_angle</tt></a></td><td>compute minimum q1 . q2 modulo rotation about zaxis and angle omega</td></tr><tr><td width="200px"><a href="quaternion.dot_outer.html"><tt>dot_outer</tt></a></td><td>outer inner product between two quaternions</td></tr><tr><td width="200px"><a href="quaternion.double.html"><tt>double</tt></a></td><td>quaternion to double</td></tr><tr><td width="200px"><a href="quaternion.end.html"><tt>end</tt></a></td><td>overloads end function</td></tr><tr><td width="200px"><a href="quaternion.eq.html"><tt>eq</tt></a></td><td>? q1 == q2</td></tr><tr><td width="200px"><a href="quaternion.export.html"><tt>export</tt></a></td><td>quaternions to a ascii file</td></tr><tr><td width="200px"><a href="quaternion.find.html"><tt>find</tt></a></td><td>return indece and distance of all nodes within a eps neighborhood</td></tr><tr><td width="200px"><a href="quaternion.geodesic.html"><tt>geodesic</tt></a></td><td>Calculats the rotation, which is described by the geodesic </td></tr><tr><td width="200px"><a href="quaternion.horzcat.html"><tt>horzcat</tt></a></td><td>implements [q1,q2,q3..]</td></tr><tr><td width="200px"><a href="quaternion.inv.html"><tt>inv</tt></a></td><td>quaternion of the inverse roation</td></tr><tr><td width="200px"><a href="quaternion.isempty.html"><tt>isempty</tt></a></td><td>overloads isempty</td></tr><tr><td width="200px"><a href="quaternion.isnan.html"><tt>isnan</tt></a></td><td>check for nan values</td></tr><tr><td width="200px"><a href="quaternion.length.html"><tt>length</tt></a></td><td>overloads length</td></tr><tr><td width="200px"><a href="quaternion.log.html"><tt>log</tt></a></td><td>the logarithmic map that translates a rotation into a rotation vector</td></tr><tr><td width="200px"><a href="quaternion.logm.html"><tt>logm</tt></a></td><td>the logarithmic map that translates a rotation into a spin tensor</td></tr><tr><td width="200px"><a href="quaternion.matrix.html"><tt>matrix</tt></a></td><td>quaternion to direction cosine matrix conversion</td></tr><tr><td width="200px"><a href="quaternion.mean.html"><tt>mean</tt></a></td><td>of a list of quaternions, principle axes and moments of inertia</td></tr><tr><td width="200px"><a href="quaternion.mean_CS.html"><tt>mean_CS</tt></a></td><td>fast mean of </td></tr><tr><td width="200px"><a href="quaternion.minus.html"><tt>minus</tt></a></td><td>overloads minus</td></tr><tr><td width="200px"><a href="quaternion.mpower.html"><tt>mpower</tt></a></td><td>q^n</td></tr><tr><td width="200px"><a href="quaternion.mrdivide.html"><tt>mrdivide</tt></a></td><td>scalar division</td></tr><tr><td width="200px"><a href="quaternion.mtimes.html"><tt>mtimes</tt></a></td><td>quaternionen multiplication q1 * q2</td></tr><tr><td width="200px"><a href="quaternion.ndims.html"><tt>ndims</tt></a></td><td>overloads ndims</td></tr><tr><td width="200px"><a href="quaternion.ne.html"><tt>ne</tt></a></td><td>q1 ~= q2 ?</td></tr><tr><td width="200px"><a href="quaternion.norm.html"><tt>norm</tt></a></td><td>quaternion norm sqrt(a^2+b^2+c^2+c^2)</td></tr><tr><td width="200px"><a href="quaternion.normalize.html"><tt>normalize</tt></a></td><td>quaternion </td></tr><tr><td width="200px"><a href="quaternion.permute.html"><tt>permute</tt></a></td><td>overloads permute</td></tr><tr><td width="200px"><a href="quaternion.perturbe.html"><tt>perturbe</tt></a></td><td>pertube data randomly by epsilon</td></tr><tr><td width="200px"><a href="quaternion.plus.html"><tt>plus</tt></a></td><td>pointwise addition</td></tr><tr><td width="200px"><a href="quaternion.power.html"><tt>power</tt></a></td><td>q.^n</td></tr><tr><td width="200px"><a href="quaternion.prod.html"><tt>prod</tt></a></td><td>overloads q1 * q2 * q3</td></tr><tr><td width="200px"><a href="quaternion.project2EulerFR.html"><tt>project2EulerFR</tt></a></td><td>projects quaternions to a fundamental region</td></tr><tr><td width="200px"><a href="quaternion.project2FundamentalRegion.html"><tt>project2FundamentalRegion</tt></a></td><td>projects quaternions to a fundamental region</td></tr><tr><td width="200px"><a href="quaternion.qmatrix.html"><tt>qmatrix</tt></a></td><td>returns the quaternion multiplication matrix</td></tr><tr><td width="200px"><a href="quaternion.qq.html"><tt>qq</tt></a></td><td>returns w * q' * q</td></tr><tr><td width="200px"><a href="quaternion.rdivide.html"><tt>rdivide</tt></a></td><td>scalar division</td></tr><tr><td width="200px"><a href="quaternion.real.html"><tt>real</tt></a></td><td>part of of quaternion</td></tr><tr><td width="200px"><a href="quaternion.repmat.html"><tt>repmat</tt></a></td><td>overloads repmat</td></tr><tr><td width="200px"><a href="quaternion.reshape.html"><tt>reshape</tt></a></td><td>overloads reshape</td></tr><tr><td width="200px"><a href="quaternion.scatter.html"><tt>scatter</tt></a></td><td>plot function</td></tr><tr><td width="200px"><a href="quaternion.setSubSet.html"><tt>setSubSet</tt></a></td><td>indexing of quaternions</td></tr><tr><td width="200px"><a href="quaternion.size.html"><tt>size</tt></a></td><td>overloads size</td></tr><tr><td width="200px"><a href="quaternion.subSet.html"><tt>subSet</tt></a></td><td>indexing of quaternions</td></tr><tr><td width="200px"><a href="quaternion.subsasgn.html"><tt>subsasgn</tt></a></td><td>overloads subsasgn</td></tr><tr><td width="200px"><a href="quaternion.subsref.html"><tt>subsref</tt></a></td><td>overloads subsref</td></tr><tr><td width="200px"><a href="quaternion.sum.html"><tt>sum</tt></a></td><td>overloads sum</td></tr><tr><td width="200px"><a href="quaternion.symmetrise.html"><tt>symmetrise</tt></a></td><td>symmetrcially equivalent orientations</td></tr><tr><td width="200px"><a href="quaternion.times.html"><tt>times</tt></a></td><td>quaternion .* quaternion and quaternion .* vector3d </td></tr><tr><td width="200px"><a href="quaternion.transpose.html"><tt>transpose</tt></a></td><td>array of quaternions</td></tr><tr><td width="200px"><a href="quaternion.uminus.html"><tt>uminus</tt></a></td><td>overload unitary minus</td></tr><tr><td width="200px"><a href="quaternion.unique.html"><tt>unique</tt></a></td><td>disjoint list of quaternions</td></tr><tr><td width="200px"><a href="quaternion.vertcat.html"><tt>vertcat</tt></a></td><td>implements [q1;q2;q3..]</td></tr></table></html>