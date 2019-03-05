%% map
% (method of [[orientation_index.html,orientation]])
%% 
% define orientations by pairs of vectors
% 
%
%% View Code
% 
%% Description
% Define an orientation that maps |u1| onto |v1| and |u2| onto |v2|
% 
%
%% Syntax
%   ori = orientation.map(u1,v1)
%   ori = orientation.map(u1,v1,u2,v2)
%   ori = orientation.map(u1,v1,u2,v2,CS,SS)
% 

%% Input
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>u1, v1, u2, v2</tt>
%          </td>
%          <td>
%                <p>[[vector3d_index.html,vector3d]] [[Miller_index.html,Miller]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>CS</tt>
%          </td>
%          <td>
%                <p>[[crystalSymmetry_index.html,crystalSymmetry]]</p>
%          </td>
%       </tr>
%       <tr>
%          <td width="100px">
%             <tt>SS</tt>
%          </td>
%          <td>
%                <p>[[specimenSymmetry_index.html,specimenSymmetry]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% Output
% 
% <html>
%    <table cellpadding="4" cellspacing="0" class="funcref" width="100%">
%       <tr>
%          <td width="100px">
%             <tt>ori</tt>
%          </td>
%          <td>
%                <p>[[orientation_index.html,orientation]]</p>
%          </td>
%       </tr>
%    </table>
% </html>
% 
%% See also
% orientation_index orientation/byMiller orientation/byAxisAngle
% orientation/byEuler
%