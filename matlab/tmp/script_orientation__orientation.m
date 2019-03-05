%% orientation
% (method of [[orientation_index.html,orientation]])
%% 
% orientation - class representing orientations
% 
% This MTEX class represents orientations and misorientations.
% 
%
%% View Code
% 
%% Syntax
%   ori = orientation.byEuler(phi1,Phi,phi2,cs,ss)
%   ori = orientation.byEuler(alpha,beta,gamma,'ZYZ',cs,ss)
%   ori = orientation.byMiller([h k l],[u v w],cs,ss)
%   ori = orientation.byAxisAngle(v,omega,cs,ss)
%   ori = orientation.byMatrix(A,cs)
%   ori = orientation.map(u1,v1,u2,v2,cs)
%   ori = orientation.goss(cs)
%   ori = orientation.cube(cs)
% 
% predefined orientations
% 
%    * 'Cube', 'CubeND22', 'CubeND45', 'CubeRD'
%    * 'Goss', 'invGoss'
%    * 'Copper', 'Copper2'
%    * 'SR', 'SR2', 'SR3', 'SR4'
%    * 'Brass', 'Brass2'
%    * 'PLage', 'PLage2', 'QLage', 'QLage2', 'QLage3', 'QLage4'
