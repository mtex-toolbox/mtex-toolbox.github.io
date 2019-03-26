%% Dislocation Systems
% This section describes the class *dislocationSystem*.
%
%% Open in Editor
%
%% Contents
%
%% Class Description 
% Dislocation are microscopic displacements within the regular atom
% lattice of a crystaline material ussualy as a result of plastic
% deformation. Dislocations are described by a Burgers vector describing
% the direction of the atomic shift and a line vector describing the
% direction of the displacements within the material. One distinguishes two
% cases:


%% SUB: Edge Dislocations
% Here the directions of the atomic shifts are orthogonal to the direction
% the displacements spread within the material. In order to define a edge
% dislocation we proceed as follows

% define a crystal symmetry
cs = crystalSymmetry('432');

% define a burgers vector in crystal coordinates
b = Miller(1,1,0,cs,'uvw')

% define a line vector in crystal coordinates
l = Miller(1,-1,-2,cs,'uvw')

% setup the dislocation system
dS = dislocationSystem(b,l)


%% SUB: Screw Dislocations
% Screw dislocations are characterized by the fact that Burgers vector and
% line vector are perpendicular to each other.

% define a burgers vector in crystal coordinates
b = Miller(1,1,0,cs,'uvw')

% define a line vector in crystal coordinates
l = Miller(1,1,0,cs,'uvw')

% setup the dislocation system
dS = dislocationSystem(b,l)


%% SUB: Slip Systems
% Dislocation systems are tightly related to <slipSystem_index.html slip
% systems>. Given a set of slip systems the corresponding dislocation
% systems can be computed by

% dominant slip systems in cubic fcc material
sS = symmetrise(slipSystem.fcc(cs))

% the corresponding dislocation systems
dS = dislocationSystem(sS)

%% SUB: Dominant Dislocation Systems
%

dS = dislocationSystem.bcc(cs)


%% The Dislocation Tensor
% As each dislocation corresponds to an deformation of the atom lattice a
% dislocation can also be described by a deformation matrix. This matrix is
% the dyadic product between the Burgers vector and the line vector and can
% be computed by

dS.tensor

%%
% The unit of the deformation tensor is the unit of the burgers vector
% which is assumet to be au in MTEX.


%% Complete Function list
% 
% <html><table width="90%"><tr><td width="200px"><a href="dislocationSystem.cat.html"><tt>cat</tt></a></td><td>implement cat for dislocationSystem</td></tr><tr><td width="200px"><a href="dislocationSystem.dislocationSystem.html"><tt>dislocationSystem</tt></a></td><td>class representing dislocation systems</td></tr><tr><td width="200px"><a href="dislocationSystem.end.html"><tt>end</tt></a></td><td>overloaded end function</td></tr><tr><td width="200px"><a href="dislocationSystem.eq.html"><tt>eq</tt></a></td><td>? sS1 == sS2</td></tr><tr><td width="200px"><a href="dislocationSystem.horzcat.html"><tt>horzcat</tt></a></td><td>overloads [v1,v2,v3..]</td></tr><tr><td width="200px"><a href="dislocationSystem.isempty.html"><tt>isempty</tt></a></td><td>overloads isempty</td></tr><tr><td width="200px"><a href="dislocationSystem.length.html"><tt>length</tt></a></td><td>overloads length</td></tr><tr><td width="200px"><a href="dislocationSystem.ne.html"><tt>ne</tt></a></td><td>? sS1 ~= sS2</td></tr><tr><td width="200px"><a href="dislocationSystem.rotate.html"><tt>rotate</tt></a></td><td>dislocation systems system</td></tr><tr><td width="200px"><a href="dislocationSystem.rotate_outer.html"><tt>rotate_outer</tt></a></td><td>rotate dislocation systems</td></tr><tr><td width="200px"><a href="dislocationSystem.size.html"><tt>size</tt></a></td><td>overloads size</td></tr><tr><td width="200px"><a href="dislocationSystem.subSet.html"><tt>subSet</tt></a></td><td>subindex vector3d</td></tr><tr><td width="200px"><a href="dislocationSystem.subsasgn.html"><tt>subsasgn</tt></a></td><td>overloads subsasgn</td></tr><tr><td width="200px"><a href="dislocationSystem.subsref.html"><tt>subsref</tt></a></td><td>overloads subsref</td></tr><tr><td width="200px"><a href="dislocationSystem.symmetrise.html"><tt>symmetrise</tt></a></td><td>find all symmetrically equivalent slips systems</td></tr><tr><td width="200px"><a href="dislocationSystem.tensor.html"><tt>tensor</tt></a></td><td>representation of a dislocation system</td></tr><tr><td width="200px"><a href="dislocationSystem.transpose.html"><tt>transpose</tt></a></td><td>list of slipSystem</td></tr><tr><td width="200px"><a href="dislocationSystem.uminus.html"><tt>uminus</tt></a></td><td>overloads unitary minus</td></tr><tr><td width="200px"><a href="dislocationSystem.vertcat.html"><tt>vertcat</tt></a></td><td>overloads [v1,v2,v3..]</td></tr></table></html>